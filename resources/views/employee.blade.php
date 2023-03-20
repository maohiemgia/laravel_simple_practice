@extends('master')

{{-- page title --}}
@section('page_title', 'Employees List')

{{-- style --}}

@push('style')
    <style>
        html {
            scroll-behavior: smooth;
        }

        * {
            cursor: pointer;
            user-select: none;
        }

        table th {
            vertical-align: middle !important;
            text-align: center;
        }

        table td {
            word-wrap: break-word;
            text-align: center;
        }

        .mybtn_func {
            position: fixed;
            right: 3%;
            top: 90%;
            transform: translateY(-50%);
            background-color: #ffca2c;
            color: white;
            border: none;
            padding: 15px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.25);
        }

        #myBtnUp:hover,
        #myBtnDown:hover {
            background-color: #3e8e41;
        }
    </style>
@endpush
@push('before_scripts')
    <script>
        // When the user scrolls down Xpx from the top of the document, show the button
        window.onscroll = function() {
            scrollFunction()
        };

        function scrollFunction() {
            if (document.body.scrollTop > 300 || document.documentElement.scrollTop > 300) {
                document.getElementById("myBtnUp").style.display = "block";
            } else {
                document.getElementById("myBtnUp").style.display = "none";
            }
            if (document.body.scrollTop > 1500 || document.documentElement.scrollTop > 1500) {
                document.getElementById("myBtnDown").style.display = "none";
            } else {
                document.getElementById("myBtnDown").style.display = "block";
            }

        }

        // When the user clicks on the button, scroll to the top of the document
        function topFunction() {
            document.body.scrollTop = 0;
            document.documentElement.scrollTop = 0;
        }

        function bottomFunction() {
            document.documentElement.scrollTop = document.documentElement.scrollHeight;
        }
    </script>
@endpush

{{-- content --}}
@section('main_content')
    <div class="container-fluid mt-5 px-2 px-lg-5">
        <h2>Employees List &#127808;</h2>
        <div class="row mx-auto my-3 d-flex justify-content-between">
            <p class="w-auto">
                This is list all
                <b>
                    employees
                </b>
                order by Age column increasing.
            </p>
            <a href="/" class="d-block btn btn-warning text-white w-auto">Refresh</a>
        </div>

        <div class="table-responsive px-lg-5">
            <table class="table table-striped table-bordered table-hover">
                <thead>
                    <tr>
                        <th>Number</th>
                        <th>Name</th>
                        <th>Tel</th>
                        <th>Email</th>
                        <th>Department's name</th>
                        <th>Age</th>
                        <th>Number relatives</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($employees as $index => $employee)
                        <tr>
                            <td>{{ ++$index }}</td>
                            <td class="text-success">{{ $employee->name }}</td>
                            <td class="text-muted">{{ $employee->phone_number }}</td>
                            <td class="text-primary">{{ $employee->email }}</td>
                            <td class="text-capitalize text-success">{{ $employee->department_name }}</td>
                            <td class="text-muted">{{ $employee->age }}</td>
                            <td>
                                <!-- Button to Open the Modal -->
                                <button type="button" class="btn btn-info text-white text-capitalize"
                                    data-bs-toggle="modal" data-bs-target="#myModal{{ $index }}">
                                    {{ $employee->count_relatives }} relatives
                                </button>
                                <!-- The Modal -->
                                <div class="modal fade" id="myModal{{ $index }}">
                                    <div class="modal-dialog modal-dialog-centered modal-xl">
                                        <div class="modal-content">
                                            <!-- Modal Header -->
                                            <div class="modal-header">
                                                <h4 class="modal-title text-wrap">Employees's relatives list of
                                                    <u class="text-warning">
                                                        {{ $employee->name }}
                                                    </u>
                                                </h4>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                            </div>

                                            <!-- Modal body -->
                                            <div class="modal-body">
                                                <p
                                                    class="mt-2 mb-5 d-flex flex-row flex-wrap justify-content-start text-wrap">
                                                    This is list all relatives of <b class="px-1">
                                                        {{ $employee->name }} </b>
                                                    order by alphabet A-Z of Relations column.
                                                </p>

                                                <div class="table-responsive px-lg-5">
                                                    <table class="table table-striped table-bordered table-hover">
                                                        <thead>
                                                            <tr>
                                                                <th>Number</th>
                                                                <th>Name</th>
                                                                <th>Gender</th>
                                                                <th>Relations</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            @php
                                                                $index_relative = 1;
                                                            @endphp
                                                            @foreach ($relatives as $relative)
                                                                @if ($relative->employee_id == $employee->id)
                                                                    <tr>
                                                                        <td>{{ $index_relative }}</td>
                                                                        <td class="text-success">
                                                                            {{ $relative->name }}</td>
                                                                        <td class="text-muted">
                                                                            @if ($relative->gender == 0)
                                                                                Female
                                                                            @else
                                                                                Male
                                                                            @endif
                                                                        </td>
                                                                        <td class="text-success text-capitalize">
                                                                            {{ $relative->relations }}</td>
                                                                    </tr>
                                                                    @php
                                                                        $index_relative += 1;
                                                                    @endphp
                                                                @endif
                                                            @endforeach
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>

                                            <!-- Modal footer -->
                                            <div class="modal-footer d-flex justify-content-between">
                                                <p class="fs-4 text-wrap">
                                                    Total: <span class="mark">{{ $index_relative - 1 }}</span>
                                                    relatives.
                                                </p>
                                                <button type="button" class="btn btn-danger"
                                                    data-bs-dismiss="modal">Close</button>
                                            </div>

                                        </div>
                                    </div>
                                </div>

                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>

        <!-- Center-aligned paginate -->
        <div class="row mx-auto mt-3 mb-5 d-flex flex-wrap w-auto">
            <ul class="pagination justify-content-center d-flex flex-wrap" style="margin:20px 0">
                <li class="page-item"><a class="page-link btn mx-2 px-3 py-2" href="/?page=1">First</a></li>
                <li class="page-item"><a class="page-link btn mx-2 px-3 py-2"
                        href="{{ $employees->previousPageUrl() }}">Previous</a></li>
                @for ($i = 0; $i < $employees->lastPage(); $i++)
                    <li class="page-item">
                        <a href="/?page={{ $i + 1 }}"
                            class="page-link btn mx-2 px-3 py-2 {{ $employees->currentPage() == $i + 1 ? 'active' : '' }}">
                            {{ $i + 1 }}
                        </a>
                    </li>
                @endfor
                <li class="page-item"><a class="page-link btn mx-2 px-3 py-2"
                        href="{{ $employees->nextPageUrl() }}">Next</a></li>
                <li class="page-item"><a class="page-link btn mx-2 px-3 py-2"
                        href="/?page={{ $employees->lastPage() }}">Last</a></li>
            </ul>
        </div>


        {{-- go up go down func --}}
        <button onclick="topFunction()" class="mybtn_func" id="myBtnUp" title="Go to top">&#9650;</button>
        <button onclick="bottomFunction()" class="mybtn_func" id="myBtnDown" title="Go to bottom">&#9660;</button>

    </div>


@endsection
