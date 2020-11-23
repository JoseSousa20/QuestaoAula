@extends('layout')
@section('titulo')
Equipas
@endsection
@section('header')
Detalhes do Jogador:
@endsection
@section('conteudo')
<ul>
@if(isset($jogador->id_jogador))
<h4>Detalhes do jogador {{$jogador->id_jogador}}</h4>
<b>Nome: </b>{{$jogador->nome}}<br>
<b>Nacionalidade: </b>{{$jogador->nacionalidade}}<br>
<b>Data de nascimento: </b>{{$jogador->data_nascimento}}<br>
<b>Equipa: </b> {{$jogador->equipa->designacao}}
@else
<h1 style="color:#ff0000">ERRO</h1>
@endif
@endsection