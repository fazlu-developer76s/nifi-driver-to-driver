<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Company;
use App\Models\User;
use App\Models\Booking;
use Illuminate\Support\Arr;
use PDF;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class CompanyController extends Controller
{
    // Show the edit form
    public function edit($id)
    {
        $company = Company::findOrFail($id);
        return view('company.edit', compact('company'));
    }

    // Handle the update request
    public function update(Request $request, $id)
    {
        // Validate the request
        $request->validate([
            'name' => 'required|string|max:255',
            'logo' => 'nullable|image|mimes:jpg,jpeg,png,svg|max:2048',
            'favicon' => 'nullable|image|mimes:jpg,jpeg,png,svg|max:1024',
            'address' => 'required|string|max:500',
            'email' => 'required|email',
            'mobile' => 'required|numeric',
        ]);

        // Find the company
        $company = Company::findOrFail($id);

        // Update the company's details
        $company->name = $request->name;

        if ($request->hasFile('logo')) {
            $company->logo = $request->file('logo')->store('logos', 'public');
        }

        if ($request->hasFile('favicon')) {
            $company->favicon = $request->file('favicon')->store('favicons', 'public');
        }

        $company->address = $request->address;
        $company->email = $request->email;
        $company->mobile = $request->mobile;


        // Save the updated company
        $company->save();

        // Redirect with success message
        return redirect()->route('company.edit', $company->id)
            ->with('success', 'Company information updated successfully.');
    }

    public function enquiry()
    {
        $title = 'Enquiry List';
        $login_user_id = Auth::user()->id;
        $login_role_id = Auth::user()->role_id;
        $get_assign_log = DB::table('assign_lead')->where('assign_user_id', $login_user_id)->get();
        $merged = [];
        foreach ($get_assign_log as $item) {
            if (!isset($merged[$item->lead_id])) {
                $merged[$item->lead_id] = [
                    'lead_id' => $item->lead_id,
                    'assign_user_ids' => [],
                    'created_at' => $item->created_at
                ];
            }
            $merged[$item->lead_id]['assign_user_ids'][] = $item->assign_user_id;
        }
        $assin_users_id = array();
        foreach ($merged as $get_assign_id) {
            $assin_users_id[] = $get_assign_id['lead_id'];
        }
        $query = DB::table('enquiries as a')->where('a.status', 1);
        if (Auth::user()->role_id != 1) {
            $query->whereIn('a.id', $assin_users_id);
        }
        $alllead = $query->orderBy('a.id', 'desc')->get();
        $get_user = User::where('status', 1)
            ->where('role_id', 5)
            ->get();
        return view('company.enquiry', compact('alllead', 'get_user'));
    }

    public function booking($id)
    {
        $title = 'Booking List';
        $query = DB::table('bookings as a')->join('users as b', 'a.user_id', '=', 'b.id')->select('a.*', 'b.name as user_name', 'b.email as user_email', 'b.mobile_no as user_mobile_no')->where('a.status', 1)->where('b.status', 1)->orderBy('a.id', 'desc');
        if ($id) {
            $query->where('a.booking_type', $id);
        }
        $allbooking = $query->get();
        return view('company.booking_list', compact('allbooking'));
    }

    public function feedback_list()
    {
        $title = 'Booking List';
        $allreview = DB::table('property_reviews as a')->join('users as b', 'a.user_id', '=', 'b.id')->select('a.*', 'b.name as user_name', 'b.email as user_email', 'b.mobile_no as user_mobile_no')->where('a.status', 1)->where('b.status', 1)->orderBy('a.id', 'desc')->get();
        return view('company.feedback_list', compact('allreview'));
    }

    public function transaction_list(Request $request)
    {
        $title = 'Booking List';
        $query = DB::table('tbl_transaction');
        if (isset($request->type)) {
            $query->where('user_id', $request->type);
        }
        $get_transaction = $query->orderBy('id', 'desc')->get();
        $alltransaction = array();
        foreach ($get_transaction as $row) {
            $get_user_info = User::where('status', 1)->where('id', $row->user_id)->first();
            $get_booking_info = Booking::where('status', 1)->where('id', $row->booking_id)->first();
            $get_bank_info = DB::table('banks')->where('status', 1)->where('id', $row->active_bank_id)->first();
            $row->get_user_info = $get_user_info;
            $row->get_booking_info =  $get_booking_info;
            $row->get_bank_info =  $get_bank_info;
            $alltransaction[] = $row;
        }
        $get_user = User::where('role_id', 2)->where('status', 1)->get();
        return view('company.transaction', compact('alltransaction', 'get_user'));
    }

    public function generateInvoice(Request $request, $id)
    {

        $query = DB::table('tbl_transaction');
        if (isset($request->type)) {
            $query->where('user_id', $request->type);
        }
        if ($id) {
            $query->where('id', $id);
        }
        $get_transaction = $query->orderBy('id', 'desc')->get();
        $alltransaction = array();
        foreach ($get_transaction as $row) {
            $get_user_info = User::where('status', 1)->where('id', $row->user_id)->first();
            $get_booking_info = Booking::where('status', 1)->where('id', $row->booking_id)->first();
            $get_bank_info = DB::table('banks')->where('status', 1)->where('id', $row->active_bank_id)->first();
            $row->get_user_info = $get_user_info;
            $row->get_booking_info =  $get_booking_info;
            $row->get_bank_info =  $get_bank_info;
            $alltransaction[] = $row;
        }
        $company_info = DB::table('cms_settings')->where('status', 1)->where('id', 1)->first();
        $data = array('company_info' => $company_info, 'invoice' => $alltransaction);
        $pdf = PDF::loadView('company.invoice', $data);
        // return $pdf->download('invoice.pdf');
        return $pdf->stream('invoice.pdf');

    }


    public function update_payment_status(Request $request)
    {

        $request->validate([
            'payment_status' => 'required',
            'transaction_amount' => 'required',
            'file' => 'required|file|mimes:jpg,png,pdf',
        ]);
        if ($request->hasFile('file')) {
            $filePath = $request->file('file')->store('uploads', 'public'); // Save file
            // Save the file path in the database if needed
        }
        $update_status = DB::table('tbl_transaction')->where('id', $request->id)->update(['transaction_status' => 2, 'amount' => $request->transaction_amount,'file'=>$filePath]);
        $get_tran = DB::table('tbl_transaction')->where('id', $request->id)->first();
        $bookingUpdate = DB::table('bookings')->where('id', $get_tran->booking_id)->update(['booking_status' => 4]);

        if ($update_status) {
            echo "OK";
            die;
        } else {
            echo "failed";
            die;
        }
    }
}
