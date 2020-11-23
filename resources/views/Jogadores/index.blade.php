@extends('layout')
@section('titulo')
@endsection
@section('header')
Jogadores:
@endsection
@section('conteudo')
<ul>
@foreach($jogadores as $jogador)
<li>
<a style="color:#000000" href="{{route('jogadores.show',['id'=>$jogador->id_jogador])}}">
<h5>{{$jogador->nome}}</h5>
</li>
@endforeach
@endsection