@extends('layouts.website')

@section('content')


@include('website.include.banner')
@include('website.include.offer')
@include('website.include.popular_features')
{{-- @include('website.include.projects') --}}
@include('website.include.saas_and_laas')
@include('website.include.categories')
@include('website.include.different')
@include('website.include.cloud_based')
@include('website.include.quote')
@include('website.include.featured_solutions')
@include('website.include.why_sas')
@include('website.include.plans')
@include('website.include.blogs')
@include('website.include.question')
@include('website.include.customer')
@endsection