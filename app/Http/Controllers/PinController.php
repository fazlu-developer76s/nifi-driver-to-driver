<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Pincode;
use Illuminate\Support\Facades\Storage;

class PinController extends Controller
{
    public function index()
    {
        $title = "Pincode List";
        $allpincode = Pincode::where('status', '!=', '3')->orderBy('id', 'desc')->get();
        return view('pincode.index', compact('title', 'allpincode'));
    }

    public function create(Request $request)
    {
        if ($request->method() == 'POST') {
            $request->validate([
                'pin_code' => 'required|regex:/^[1-9][0-9]{5}$/',
                'status' => 'required',
            ]);
            $check_data = $this->check_exist_data($request, null);
            if ($check_data) {
                $message = '';
                if ($check_data->pin_code == $request->pin_code) {
                    $message .= "Pincode ";
                }
                if ($message) {
                    return redirect()->route('pincode')
                        ->with('error', trim($message) . ' Already Exists');
                }
            }
            $pincode = new Pincode();
            $pincode->pin_code = $request->pin_code;
            $pincode->status = $request->status;
            $pincode->save();
            return redirect()->route('pincode')->with('success', 'Pincode Added Successfully');
        }
    }

    public function edit($id)
    {
        $title = "Edit Pincode";
        $get_pincode = Pincode::where('status', '!=', 3)->where('id', $id)->first();
        $allpincode = Pincode::where('status', '!=', '3')->orderBy('id', 'desc')->get();
        return view('pincode.index', compact('title', 'allpincode','get_pincode'));
    }

    public function update(Request $request)
    {
        $request->validate([
            'pin_code' => 'required|regex:/^[1-9][0-9]{5}$/',
            'status' => 'required',
        ]);
        $check_data = $this->check_exist_data($request, $request->hidden_id);
        if ($check_data) {
            $message = '';
            if ($check_data->pin_code == $request->pin_code) {
                $message .= "Pincode ";
            }
            if ($message) {
                return redirect()->route('pincode.edit', ['id' => $request->hidden_id])
                    ->with('error', trim($message) . ' Already Exists');
            }
        }
        $pincode = Pincode::findOrFail($request->hidden_id);
        $pincode->pin_code = $request->pin_code;
        $pincode->status = $request->status;
        $pincode->updated_at = date('Y-m-d H:i:s');
        $pincode->save();
        return redirect()->route('pincode')->with('success', 'Pincode Updated Successfully');
    }


    public function destroy($id)
    {
        $pincode = Pincode::findOrFail($id);
        $pincode->status = 3;
        $pincode->update();
        return redirect()->route('pincode')->with('success', 'Pincode deleted successfully.');
    }

    public function check_exist_data($request, $id)
    {
        $query = Pincode::where('status', '!=', 3);
        if ($id !== null) {
            $query->where('id', '!=', $id);
        }
        $check_pincode = $query->where(function ($q) use ($request) {
            $q->where('pin_code', $request->pin_code);
        })->first();

        return $check_pincode;
    }
}
