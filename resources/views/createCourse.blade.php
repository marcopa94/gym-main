<x-app-layout>
    
    <main class="container mt-5 shadow p-3 bg-white sm:rounded-lg">
        <h2 class="h2">Crea un nuovo corso!</h2>
        <a href="/personal/course"><i class="bi bi-arrow-left"></i></a>

        <form method="post" action="/personal/course">
            @csrf
            <div class="mb-3">
                <label for="exampleTitle" class="form-label">Nome <span class="text-danger">*</span></label>
                <input type="text" name="name" class="form-control" id="exampleTitle" aria-describedby="title">
            </div>
            <div class="mb-3">
                <label for="exampleDescription" class="form-label">Descrizione <span class="text-danger">*</span></label>
                <textarea style="resize: none;" class="form-control" name="description" id="exampleDescription" rows="5"></textarea>
            </div>
            <div class="mb-3">
                <label for="exampleDeadline" class="form-label">Capacità <span class="text-danger">*</span></label>
                <input type="number" min=1 name="capacity" class="form-control" id="exampleDeadline" aria-describedby="deadline">
            </div>

            <button type="submit" class="btn btn-primary">Crea</button>
        </form>

    </main>
</x-app-layout>
