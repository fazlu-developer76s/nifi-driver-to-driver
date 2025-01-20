@extends('layouts/app')
@section('content')
    <style>
        strong {
            font-weight: bold;
        }
        .lead-status-badge {
            font-size: 0.9rem;
            padding: 5px 10px;
            border-radius: 12px;
        }
        .info_div {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 1rem;
        }
        .first_div {
            flex: 0 0 40%;
            text-align: left;
        }
        .second_div {
            flex: 0 0 55%;
            text-align: left;
        }
        .container-fluid {
            padding: 0 2rem;
        }
        .page-header {
            margin-bottom: 1rem;
        }
        .breadcrumb-item {
            font-size: 0.9rem;
        }
        .card {
            margin-bottom: 2rem;
        }
        .card-header {
            padding: 1rem 1.5rem;
        }
        .card-body {
            padding: 1.5rem;
        }
        @media (max-width: 768px) {
            .info_div {
                flex-direction: column;
                text-align: left;
            }
            .second_div {
                text-align: left;
                margin-top: 0.5rem;
            }
        }
    </style>
    @if (isset($get_booking))
        @php $form_action = "lead.update"; @endphp
    @else
        @php $form_action = "lead.create"; @endphp
    @endif
    <input type="hidden" id="user_id" value="{{ Auth::user()->id }}">
    <input type="hidden" id="lead_id" value="{{ isset($get_booking) ? @$get_booking->id : ' ' }}">
    <div class="container-fluid">
        <div id="content" class="app-content">
            <div class="d-flex align-items-center mb-3">
                <div>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="dashboard.php">Home</a></li>
                        <li class="breadcrumb-item"><a href="javascript:;">Booking Information</a></li>
                        <li class="breadcrumb-item active"><i class="fa fa-arrow-back"></i> Create Booking Information</li>
                    </ol>
                    <h1 class="page-header mb-0">Booking Information</h1>
                </div>
            </div>
            <!-- Row for equal division -->
            <div class="row">
                <!-- Form Section -->
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header bg-primary text-white">
                            <h4 class="mb-0">Booking Information Information</h4>
                        </div>
                        @switch(@$get_booking->booking_status)
                            @case(1)
                                @php $booking_status = "Open"; @endphp
                            @break
                            @case(2)
                                @php $booking_status = "Accept"; @endphp
                            @break
                            @case(3)
                                @php $booking_status = "Rejected"; @endphp
                            @break
                            @case(4)
                                @php $booking_status = "Resolve"; @endphp
                            @break
                            @default
                                @php $booking_status = "N/A"; @endphp
                        @endswitch
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <table class="table table-bordered">
                                        <tbody>
                                            <tr>
                                                <h4>Customer Information</h4>
                                                <td><strong>Full Name:</strong></td>
                                                <td>{{ ucwords(@$get_booking->user_name ?? 'N/A') }}</td>
                                            </tr>
                                            <tr>
                                                <td><strong>Email:</strong></td>
                                                <td>{{ @$get_booking->user_email ?? 'N/A' }}</td>
                                            </tr>
                                            <tr>
                                                <td><strong>Mobile No:</strong></td>
                                                <td>{{ @$get_booking->user_mobile_no ?? 'N/A' }}</td>
                                            </tr>
                                            <tr>
                                                <td><strong>Pincode:</strong></td>
                                                <td>{{ @$get_booking->pincode ?? 'N/A' }}</td>
                                            </tr>
                                            <tr>
                                                <td><strong>SOC:</strong></td>
                                                <td>{{ @$get_booking->soc ?? 'N/A' }}</td>
                                            </tr>
                                            <tr>
                                                <td><strong>Created At:</strong></td>
                                                <td>{{ \Carbon\Carbon::parse(@$get_booking->created_at)->format('d F Y h:i A') ?? 'N/A' }}
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="col-md-6">
                                    <table class="table table-bordered">
                                        <tbody>
                                            <tr>
                                                <h4>Vehicle Information</h4>
                                                <td><strong>Vehicle Type:</strong></td>
                                                <td>{{ ucwords(@$get_booking->vehicle_type ?? 'N/A') }}</td>
                                            </tr>
                                            <tr>
                                                <td><strong>Vehicle Number:</strong></td>
                                                <td>{{ @$get_booking->vehicle_number ?? 'N/A' }}</td>
                                            </tr>
                                            <tr>
                                                <td><strong>Booking Date:</strong></td>
                                                <td>{{ \Carbon\Carbon::parse(@$get_booking->booking_date)->format('d F Y') ?? 'N/A' }}
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><strong>Booking Time:</strong></td>
                                                <td>{{ isset($get_booking->booking_time) ? date('h:i A', strtotime($get_booking->booking_time)) : 'N/A' }}
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><strong>Status:</strong></td>
                                                <td>{{ $booking_status }}</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="mb-3">
                                                        <label for="option" class="form-label">Select Status</label>
                                                        <select class="form-select" id="status" name="option">
                                                            <option selected value="">Select an option</option>
                                                            <option value="1"{{ @$get_booking->booking_status == 1 ? 'selected' : '' }}>Open</option>
                                                            <option value="2"{{ @$get_booking->booking_status == 2 ? 'selected' : '' }}>Accept</option>
                                                            <option value="3"{{ @$get_booking->booking_status == 3 ? 'selected' : '' }}>Rejected</option>
                                                            <option value="4"{{ @$get_booking->booking_status == 4 ? 'selected' : '' }}>Resolve</option>
                                                            <option value="5"{{ @$get_booking->booking_status == 5 ? 'selected' : '' }}>Cancel</option>
                                                        </select>
                                                    </div>
                                                <td>
                                                    <span type="submit" class="btn btn-primary"
                                                        onclick="return SaveNotes();">Submit</button>
                                                </td>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
