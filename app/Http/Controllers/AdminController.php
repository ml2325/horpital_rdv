<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Doctor;
use App\Models\Appointment;
use App\Notifications\SendEmailNotification;
use Notification;


class AdminController extends Controller
{
    public function addview()
    {
        return view('admin.add_doctor');
    }

    public function upload(Request $request)
    {
        $doctor = new doctor;
        $image = $request->file;
        $imagename = time() . '.' . $image->getClientoriginalExtension();
        $request->file->move('doctorimage', $imagename);
        $doctor->image = $imagename;

        $doctor->name = $request->name;
        $doctor->phone = $request->number;
        $doctor->room = $request->room;
        $doctor->speciality = $request->speciality;

        $doctor->save();
        return redirect()->back()->with('message', 'Doctor added succesfully');
    }

    public function showappointment()
    {
        $data = appointment::all();

        return view('admin.showappointment', compact('data'));
    }


    public function approved($id)
    {
        $data = appointment::find($id);
        $data->status = 'approved';
        $data->save();

        return redirect()->back();
    }


    public function canceled($id)
    {
        $data = appointment::find($id);
        $data->status = 'canceled';
        $data->save();

        return redirect()->back();
    }


    public function showdoctor()
    {
        $doctors = Doctor::all();
        return view('admin.showdoctor', compact('doctors'));
    }


    public function deletedoctor($id)
    {
        $data = doctor::find($id);
        $data->delete();
        return redirect()->back();
    }

    public function updatedoctor($id)
    {
        $data = doctor::find($id);
        return view('admin.update_doctor', compact('data'));
    }

    public function editdoctor(Request $request, $id)
    {
        $doctor = doctor::find($id);
        $doctor->name = $request->name;
        $doctor->phone = $request->phone;
        $doctor->speciality = $request->speciality;
        $doctor->room = $request->room;
        $image = $request->file;
        if ($image) {
            $imagename = time() . '.' . $image->getClientoriginalExtension();
            $request->file->move('doctorimage', $imagename);
            $doctor->image = $imagename;
        }
        $doctor->save();
        return redirect()->back()->with('message', 'Doctor edited succesfully');
    }


    public function emailview($id)
    {
        $data = appointment::find($id);
        return view('admin.email_view', compact('data'));
    }

    public function sendmail(Request $request, $id)
    {
        $data = appointment::find($id);
        $details = [
            'greeting' => $request->greeting,
            'body' => $request->body,
            'actiontext' => $request->actiontext,
            'actionurl' => $request->actionurl,
            'endpart' => $request->endpart
        ];
        Notification::send($data, new SendEmailNotification($details));

        return redirect()->back();
    }
}
