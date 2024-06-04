<x-app-layout>

    <main class="container mt-5 shadow p-3 bg-white sm:rounded-lg">
        <h2 class="h2">Unisciti ad una delle nostre incredibili attività!</h2>
        <div class="table-responsive">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Nome</th>
                        <th scope="col">Descrizione</th>
                        <th scope="col">Corso</th>
                        <th scope="col">Dettagli</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($activities as $activity)
                        <tr>
                            <th scope="row">{{ $loop->iteration }}</th>
                            <td>{{ $activity->name }}</td>
                            <td>{{ $activity->description }}</td>
                            <td>{{ $activity->course_name }}</td>
                            <td class="text-center text-primary-emphasis"><a href="activity/{{$activity->id}}"><i class="bi bi-journals"></i></a></td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </main>
</x-app-layout>