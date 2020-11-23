@extends('layout')
@section('titulo')
Equipas
@endsection
@section('header')
Equipas:
@endsection
@section('conteudo')
<ul>
@foreach($equipas as $equipa)
<li>
<a style="color:#000000" href="{{route('equipas.show',['id'=>$equipa->id_equipa])}}">
<h5>{{$equipa->designacao}}</h5>
</li>
@endforeach
@endsection