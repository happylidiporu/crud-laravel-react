<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Resources\MuridResource;
use App\Models\MuridModel;

class MuridController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return MuridResource::collection(MuridModel::all());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'nama' => 'required',
            'alamat' => 'required',
        ]);
        $murid = new MuridModel([
            'nama' => $request->nama,
            'alamat' => $request->alamat,
        ]);
        $murid->save();
        return response()->json([
            'data' => 'Murid registered!'
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        return new MuridResource(MuridModel::findOrFail($id));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'nama' => 'required',
            'alamat' => 'required',
        ]);
        $murid = MuridModel::findOrFail($id);
        $murid->nama = $request->nama;
        $murid->alamat = $request->alamat;
        $murid->save();
        return response()->json([
            'data' => 'Murid updated!'
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $murid = MuridModel::findOrFail($id);
        $murid->delete();
        return response()->json([
            'data' => 'Murid deleted!'
        ]);
    }
}
