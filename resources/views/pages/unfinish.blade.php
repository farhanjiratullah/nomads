@extends('layouts.success')

@section('title', 'Checkout Success')

@section('content')
    <main>
        <section class="section-success d-flex align-items-center">
            <div class="col text-center">
                <h1>Oops!</h1>
                <p>
                    Your transaction is unfinished.
                </p>
                <a href="{{ route('home') }}" class="btn btn-home-page mt-3 px-5">
                    Home Page
                </a>
            </div>
        </section>
    </main>
@endsection