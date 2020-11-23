@extends('layout')
@section('titulo')
Equipas
@endsection
@section('header')

@endsection
@section('conteudo')
<ul>
@if(isset($equipa->id_equipa))
 <h4>Detalhes da Equipa {{$equipa->id_equipa}}</h4>
<b>Designação: </b>{{$equipa->designacao}}<br>
<b>Designação Curta: </b>{{$equipa->designacao_curta}}<br>
<b>Localidade: </b>{{$equipa->localidade}}<br>
<b>Jogadores: </b> <br>
<ul>
@foreach($equipa->jogadores as  $jogador)
<a style="color:#000000" href="{{route('jogadores.show',['id'=>$jogador->id_jogador])}}">
<li>{{$jogador->nome}}<br></li>
@endforeach
@else
<h1 style="color:#ff0000">ERRO</h1>
@endif

@endsection