<x-app-layout>
 

    <main class="container mt-5 shadow p-3 bg-white sm:rounded-lg">
        <h2 class="h2">Dettagli singola attività</h2>
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Nome</th>
                    <th scope="col">Descrizione</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">1</th> 
                    <td>{{ $activity->name }}</td>
                    <td>{{ $activity->description }}</td>
                </tr>
            </tbody>
        </table>
    </main>
</x-app-layout>
