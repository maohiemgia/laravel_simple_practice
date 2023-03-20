<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class EmployeeController extends Controller
{
    public function show()
    {
        // query employees infor, calculate age, department name, count relatives
        $employees =  DB::table('employees')
            ->leftJoin('departments', 'employees.department_id', '=', 'departments.id')
            ->leftJoin('relatives', 'employees.id', '=', 'relatives.employee_id')
            ->select('employees.id', 'employees.name', 'employees.email', 'employees.phone_number', 'employees.gender', 'departments.name as department_name', DB::raw('TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) AS age'), DB::raw('count(relatives.id) as count_relatives'))
            // count need groupBy all columns duplicate
            ->groupBy('employees.id', 'employees.name', 'employees.email', 'employees.phone_number', 'employees.gender', 'department_name', 'age')
            ->orderBy('age')
            // ->get();
            ->paginate(10);

        // query relatives
        $relatives = DB::table('relatives')
            ->orderBy('employee_id')
            ->orderBy('relations')
            ->get();

        return view('employee', [
            'employees' => $employees,
            'relatives' => $relatives,
        ]);
    }
}
