<x-app-layout>


    <main class="container mt-5 shadow p-3 bg-white sm:rounded-lg">
        <h2 class="h2">Unisciti ad una delle nostre incredibili attività!</h2>
        @if($user_role === 'admin')
            <a href="/personal/course/create" class="btn btn-primary mt-3">Aggiungi un nuovo corso</a>
        @endif
        <div class="table-responsive">

        
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Nome</th>
                    <th scope="col">Descrizione</th>
                    <th scope="col">Capacità</th>
                    <th scope="col">Prenotazione</th>
                </tr>
            </thead>
            <tbody>
                @foreach($courses as $course)
                    <tr>
                        <th scope="row">{{ $loop->iteration }}</th>
                        <td>{{ $course->name }}</td>
                        <td>{{ $course->description }}</td>
                        <td class="text-center">{{ $course->capacity }}</td>
                        <td class="text-center text-primary-emphasis"><a href="course/{{ $course->id }}"><i class="bi bi-card-checklist"></i></a></td>
                        @if($user_role === 'admin')
                            <td>
                                <form action="{{ route('course.destroy', $course->id) }}" method="POST" onsubmit="return confirm('Vuoi eliminare questo corso?')">
                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" class="border-0 bg-white"><i class="text-danger bi bi-trash"></i></button>
                                </form>
                            </td>
                        @endif
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
    </main>
</x-app-layout>
