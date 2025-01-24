<?php

namespace App\Http\Controllers;

use App\Helpers\Global_helper;
use App\Mail\OtpMail;
use Illuminate\Http\Request;
use App\Models\User;
use Firebase\JWT\JWT;
use Illuminate\Support\Facades\Hash;
use DB;
use Carbon\Carbon;
use Illuminate\Support\Facades\Mail;

class AuthController extends Controller
{
    protected $company_name;
    protected $company_email;
    public function __construct()
    {
        $this->company_name = Global_helper::companyDetails()->name;
        $this->company_email = Global_helper::companyDetails()->email;
    }
    public function send_mobile_otp(Request $request)
    {
        $validated = $request->validate([
            'mobile_no' => [
                'required',
                'regex:/^[6-9][0-9]{9}$/',
            ]
        ]);
        $get_user = User::where('status',1)->where('mobile_no',$request->mobile_no)->first();
        if($get_user && $request->type == "register"){
            return response()->json([
                'status' => "ERROR",
                'message' => "User already registered with this mobile no",
            ], 409);
        }
        if((!$get_user) && ($request->type == "login")){
            return response()->json([
                'status' => "ERROR",
                'message' => "User not found",
            ], 404);
        }

        $otp = 1234;
        $mobile_no  = $request->mobile_no;
        $type  = $request->type;
        if ($mobile_no != "7428059960") {
            $entity_id = 1701159540601889654;
            $senderId  = "NRSOFT";
            $temp_id   = "1707164805234023036";
            $userid = "NERASOFT1";
            $otp = rand(1000, 9999);
            $request = "Login Request";
            $password = 111321;
            $temp = "Dear User Your OTP For Login in sixcash is $otp Valid For 10 Minutes. we request you to don't share with anyone .Thanks NSAFPL";
            $url = 'http://sms.nerasoft.in/api/SmsApi/SendSingleApi?' . http_build_query([
                'UserID'    => $userid,
                'Password'  => $password,
                'SenderID'  => $senderId,
                'Phno'      => $mobile_no,
                'Msg'       => $temp,
                'EntityID'  => $entity_id,
                'TemplateID' => $temp_id
            ]);
            $ch = curl_init();
            curl_setopt($ch, CURLOPT_URL, $url);
            curl_setopt($ch, CURLOPT_POST, 1);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            $headers = [
                'Content-Type: application/json',
                'Content-Length: 0'
            ];
            curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
            $response = curl_exec($ch);
            if ($response === false) {
                $error = curl_error($ch);
                curl_close($ch);
                return "Error: $error";
            }
            curl_close($ch);
        }
        if ($type == "register") {
            $module_type = 2;
        } else {
            $module_type = 1;
        }
        $otp_type = 1;
        $this->GenerateOTP($otp, $module_type, $otp_type, $mobile_no);
        return response()->json([
            'status' => "OK",
            'message' => "Mobile Otp Sent Successfully",
        ], 200);
        return $otp;
    }
    public function send_email_otp(Request $request)
    {
        $validated = $request->validate([
            'email' => [
                'required',
                'email',
            ],
        ]);

        $get_user = User::where('status',1)->where('email',$request->email)->first();
        if($get_user && $request->type == "register"){
            return response()->json([
                'status' => "ERROR",
                'message' => "User already registered with this email",
            ], 409);
        }
        if((!$get_user) && ($request->type == "login" || $request->type == "forget_password")){
            return response()->json([
                'status' => "ERROR",
                'message' => "User not found",
            ], 404);
        }

        $otp = 1234;
        $email  = $request->email;
        $type  = $request->type;
        if ($email != "fazlu.developer@gmail.com") {
            $otp = rand(1000, 9999);
            Mail::to($email)->send(new OtpMail($otp, $this->company_email, $this->company_name, $this->company_email));
        }
        if ($type == "register") {
            $module_type = 2;
        } else if ($type == "forget_password") {
            $module_type = 3;
        } else {
            $module_type = 1;
        }
        $otp_type = 2;
        $this->GenerateOTP($otp, $module_type, $otp_type, $email);
        return response()->json([
            'status' => "OK",
            'message' => "Email Otp Sent Successfully",
        ], 200);
    }
    public function GenerateOTP($otp, $module_type, $otp_type, $mobile_no)
    {
        $genrateOTP = DB::table('tbl_otp')->insert([
            'otp' => $otp,
            'otp_type' => $otp_type,
            'module_type' => $module_type,
            'field_value' => $mobile_no,
            'created_at' => now(),
            'updated_at' => now(),
        ]);
        if ($genrateOTP) {
            return true;
        }
    }
    public function verify_otp(Request $request)
    {
        $validated = $request->validate([
            'type' => 'required',
            'field_value' => 'required',
            'otp' => [
                'required',
                'integer',
                'digits:4',
            ],
        ]);
        $getOTP = DB::table('tbl_otp')
            ->where('field_value', $request->field_value)
            ->where('status', 1)
            ->where('otp', $request->otp)
            ->orderBy('id', 'desc')
            ->first();
        if (!$getOTP) {
            return response()->json([
                'status' => "Error",
                'message' => "Invalid OTP. Please Enter OTP",
            ], 401);
        } else {
            $current_time = Carbon::now();
            $otpTime = Carbon::parse($getOTP->created_at);
            if ($current_time->diffInMinutes($otpTime) > 10) {
                return response()->json([
                    'status' => "Error",
                    'message' => "OTP is expired",
                    'data' => $request->all()
                ], 401);
            }
            $this->ExpireOTP($getOTP->id);
            return response()->json([
                'status' => "OK",
                'message' => "OTP Verify Successfully",
            ], 200);
        }
        return response()->json(['error' => 'Invalid credentials'], 401);
    }
    public function signup(Request $request)
    {
        $validated = $request->validate([
            'name' => [
                'required',
                'string',
                'max:255',
            ],
            'mobile_no' => [
                'required',
                'regex:/^[6-9][0-9]{9}$/',
            ],
            'email' => [
                'required',
                'email',
            ],
            'gender' => [
                'required',
                'in:male,female,other',
            ],
            'password' => [
                'required',
                'string',
                'min:8',
            ],
        ]);
        $user = User::where(function ($query) use ($request) {
            $query->where('mobile_no', $request->mobile_no)
                ->orWhere('email', $request->email);
        })->where('status', '!=', 3)->first();
        if ($user) {
            return response()->json([
                'status' => "Error",
                'message' => "Mobile Number or Email already exists",
            ], 409);
        }
        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->mobile_no = $request->mobile_no;
        $user->gender = $request->gender;
        $user->password = Hash::make($request->password);
        $user->status = 1;
        $user->role_id = 2;
        $user->created_at = now();
        $user->updated_at = now();
        $user->save();
        $get_user = User::where('mobile_no', $request->mobile_no)
            ->where('status', 1)
            ->first();
        $role_details = DB::table('roles')
            ->where('id', $get_user->role_id)
            ->where('status', 1)
            ->first();
        $token = $this->createJwtToken($get_user, $role_details->title);
        if ($token) {
            $this->ExpireToken($get_user->id);
            $this->StoreToken($get_user->id, $token);
        }
        return response()->json([
            'status' => "OK",
            'token' => $token,
            'user' => $get_user,
            'role' => $role_details->title,
        ], 200);
    }
    public function login(Request $request)
    {
        $validated = $request->validate([
            'field_value' => 'required',
            'otp' => [
                'required',
                'integer',
                'digits:4',
            ],
        ]);
        $getOTP = DB::table('tbl_otp')
            ->where('field_value', $request->field_value)
            ->where('status', 1)
            ->where('otp', $request->otp)
            ->orderBy('id', 'desc')
            ->first();
        if (!$getOTP) {
            return response()->json([
                'status' => "Error",
                'message' => "Invalid OTP. Please Enter OTP",
            ], 401);
        } else {
            $current_time = Carbon::now();
            $otpTime = Carbon::parse($getOTP->created_at);
            if ($current_time->diffInMinutes($otpTime) > 10) {
                return response()->json([
                    'status' => "Error",
                    'message' => "OTP is expired",
                    'data' => $request->all()
                ], 401);
            }
            $this->ExpireOTP($getOTP->id);
            $user = DB::table('users as a')->leftJoin('roles as b', 'a.role_id', 'b.id')->select('a.*', 'b.title as role_type')->where('b.id', 2)->where('a.' . $request->type . '', $request->field_value)->first();
            if (!$user) {
                return response()->json([
                    'status' => "Error",
                   'message' => "User not found",
                ], 404);
            }
            $token = $this->createJwtToken($user, $user->role_type);
            if ($token) {
                $this->ExpireToken($user->id);
                $this->StoreToken($user->id, $token);
            }
            return response()->json([
                'status' => "OK",
                'token' => $token,
                'user' => $user,
                'role' => $user->role_type
            ], 200);
            return response()->json(['error' => 'Invalid credentials'], 401);
        }
    }
    private function createJwtToken($user, $role)
    {
        $key = env('JWT_SECRET');
        $payload = [
            'role' => $role,
            'sub' => $user->id,
            'iat' => time(),
            'exp' => time() + 600000, // Set a proper expiration time in seconds (e.g., 10 minutes)
        ];
        return JWT::encode($payload, $key, 'HS256');
    }
    public function ExpireOTP($id)
    {
        $expireOTP = DB::table('tbl_otp')
            ->where('id', $id)
            ->where('status', 1)
            ->update(['status' => 2]);
        if ($expireOTP) {
            return true;
        }
    }
    public function StoreToken($user_id, $token)
    {
        $storeToken = DB::table('tbl_token')->insert([
            'user_id' => $user_id,
            'token' => $token,
            'created_at' => now(),
            'updated_at' => now(),
            'status' => 1,
        ]);
    }
    public function CheckToken($user_id, $token)
    {
        $checkToken = DB::table('tbl_token')
            ->where('user_id', $user_id)
            ->where('token', $token)
            ->where('status', 1)
            ->first();
        if ($checkToken) {
            return true;
        } else {
            return false;
        }
    }
    public function ExpireToken($user_id)
    {
        $expireToken = DB::table('tbl_token')
            ->where('user_id', $user_id)
            ->where('status', 1)
            ->update(['status' => 2, 'updated_at' => now()]);
        if ($expireToken) {
            return true;
        }
    }
    public function user_logout(Request $request)
    {
        $user_id = $request->user->id;
        $this->ExpireToken($user_id);
        return response()->json([
            'status' => "OK",
            'message' => "User Logout Successfully"
        ], 200);
    }
    public function getTokenStatus(Request $request)
    {
        $token = $request->token;
        $checkToken = DB::table('tbl_token')
            ->where('token', $token)
            ->orderBy('id', 'desc')
            ->first();
        if ($checkToken) {
            if ($checkToken->status == 1) {
                return response()->json([
                    'status' => "OK",
                    'message' => "Token is Active",
                    'data' => $request->all()
                ], 200);
            } else {
                return response()->json([
                    'status' => "Error",
                    'message' => "Token is Expired or Invalid",
                    'data' => $request->all()
                ], 401);
            }
        } else {
            return response()->json([
                'status' => "Error",
                'message' => "Invalid Token",
                'data' => $request->all()
            ], 401);
        }
    }

    public function forget_password(Request $request)
    {
        $validated = $request->validate([
            'email' => ['required', 'email'],
            'password' => ['required', 'string', 'min:8'],
        ]);
        $user = User::where('email', $request->email)
            ->where('status', 1)
            ->first();
        if (!$user) {
            return response()->json([
                'status' => "Error",
                'message' => "User Not Found",
            ], 404);
        }
        $user->password = Hash::make($request->password);
        $user->updated_at = now();
        $user->save();
        return response()->json([
            'status' => "OK",
            'message' => "Password updated successfully",
        ], 200);
    }
    public function update_profile(Request $request)
    {
        echo 324234; die;
        // $user = User::findOrFail($request->user->id);
        // if ($request->hasFile('vehicle_image')) {
        //     foreach ($request->file('vehicle_image') as $image) {
        //         $filePath = $image->store('vehicle_image', 'public');
        //         DB::table('tbl_vehicle_image')->insert(['user_id' => $user->id,  'image' => $filePath , 'type' => 2]);
        //     }
        // }
        // if ($request->hasFile('vehicle_with_driver')) {
        //     foreach ($request->file('vehicle_with_driver') as $image) {
        //         $filePath = $image->store('vehicle_with_driver', 'public');
        //         DB::table('tbl_vehicle_image')->insert(['user_id' => $user->id,  'image' => $filePath , 'type' => 1]);
        //     }
        // }
        $fields = [
            'name', 'email', 'image', 'mobile_no', 'gender', 'aadhar_no', 'pan_no',
            'state', 'city', 'town', 'pincode', 'address', 'permanent_state',
            'permanent_city', 'permanent_town', 'permanent_pincode',
            'permanent_address', 'vehicle_type', 'vehicle_capicity',
            'registration_number', 'service_expiry_date', 'dl_number',
            'dl_front_image', 'dl_back_image', 'rc_number', 'rc_front_image',
            'rc_back_image', 'ins_number', 'ins_image', 'police_verification'
        ];
        $fileFields = [
            'dl_front_image', 'dl_back_image', 'rc_front_image',
            'rc_back_image', 'ins_image', 'police_verification'
        ];
        foreach ($fields as $field) {
            if ($fileFields && $request->hasFile($field)) {
                $file = $request->file($field);
                $path = $file->store('uploads/profile', 'public');
                $user->{$field} = $path;
            } elseif ($request->has($field)) {
                $user->{$field} = $request->input($field);
            }
        }
        $user->save();
        return response()->json(['status' => 'OK', 'message' => 'Profile updated successfully'], 200);
    }
}
