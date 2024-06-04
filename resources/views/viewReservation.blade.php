{{-- Questa pagina sarà accessibile solo dall'amministratore --}}
<x-app-layout>


    <main class="container mt-5 shadow p-3 bg-white sm:rounded-lg">
        <h2 class="h2">Accetta o rifiuta la prenotazione</h2>
        
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Nome Corso</th>
                    <th scope="col">User Name</th>
                    <th scope="col">Stato</th>
                </tr>
            </thead>
          
            <tbody>
                @foreach($reservations as $reservation)
                    <tr>
                        <th scope="row">{{ $loop->iteration }}</th>
                        <td>{{ $reservation->course->name }}</td>
                        <td>{{ $reservation->user->name }}</td>
                        <td>{{ $reservation->status }}</td>
                        <td>@if( $reservation->status == 'Accettato' || $reservation->status == 'Accettato' )
                                <button disabled type="submit" name="accept" class="btn btn-primary">Accetta</button>
                            @else
                            <form method="POST" action="{{ route('reservation.update', ['reservation' => $reservation->id]) }}">
                                @csrf
                                @method('PATCH')
                                <input type="hidden" name="reservation_id" value="{{ $reservation->id }}">
                                <button type="submit" name="accept" class="btn btn-primary">Accetta</button>
                            </form>
                            @endif

                        </td>
                        <td>@if( $reservation->status == 'Rifiutato' || $reservation->status == 'Rifiutato' )
                            <button disabled type="submit" name="reject" class="btn btn-danger">Rifiuta</button>
                            @else
                            <form method="POST" action="{{ route('reservation.update', ['reservation' => $reservation->id]) }}">
                                @csrf
                                @method('PATCH')
                                <input type="hidden" name="reservation_id" value="{{ $reservation->id }}">
                                <button type="submit" name="reject" class="btn btn-danger">Rifiuta</button>
                            </form>
                            @endif
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </main>
</x-app-layout>
