<x-app-layout>


    <main class="container mt-5 shadow p-3 bg-white sm:rounded-lg">
        <h2 class="h2">Iscriviti ora!</h2>
        <a href="/personal/course"><i class="bi bi-arrow-left"></i></a>
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Nome</th>
                    <th scope="col">Descrizione</th>
                    <th scope="col">Capacità</th>
                    <th scope="col">Azione</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">1</th> 
                    <td>{{ $course->name }}</td>
                    <td>{{ $course->description }}</td>
                    <td class="text-center">{{ $course->capacity }}</td>
                    <td>
                        @if (!$reservation)
                            <form method="POST" action="{{ route('reservation.store') }}">
                                @csrf
                                <input type="hidden" name="course_id" value="{{ $course->id }}">
                                <button type="submit" class="btn btn-primary">Iscriviti Ora</button>
                            </form>
                        @elseif ($reservation)
                            @switch($reservation)
                            @case($reservation->status == 'pending' || $reservation->status == 'Pending')
                                <p>Ti sei gia iscritto per questo. <span class="text-secondary">In pending...</span></p>
                                @break
                            @case($reservation->status == 'Rifiutato' || $reservation->status == 'Rifiutato')
                                <p>la tua prenotazione è <span class="text-danger">respinta...</span></p>
                                <form method="POST" action="{{ route('reservation.update', ['reservation' => $reservation->id]) }}">
                                    @csrf
                                    @method('PATCH')
                                    <input type="hidden" name="book_again" value="{{ $reservation->id }}">
                                    <button type="submit" class="btn btn-primary">Prenotati ora di nuovo</button>
                                </form>
                                @break
                            @case($reservation->status == 'Accettato' || $reservation->status == 'Accettato')
                                <p>La tua prenotazione è stata <span class="text-primary">Accettata!</span></p>
                                @break
                            @endswitch
                        @endif
                    </td>
                </tr>
            </tbody>
        </table>
    </main>
</x-app-layout>
