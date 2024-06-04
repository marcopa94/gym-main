<x-guest-layout>
    <div class="mb-4 text-sm text-gray-600">
        {{ __("Hai dimenticato la password? Nessun problema. 
        Scrivi il tuo indirizzo email e ti manderemo un link per scegliere una nuova password.") }}
    </div>

    <!-- Session Status -->
    <x-auth-session-status class="mb-4" :status="session('status')" />

    <form method="POST" action="{{ route('password.email') }}">
        @csrf

        <!-- Email Address -->
        <div>
            <x-input-label for="email" :value="__('Email')" />
            <x-text-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required autofocus />
            <x-input-error :messages="$errors->get('email')" class="mt-2" />
        </div>

        <div class="flex items-center justify-end mt-4">
            
        

            <a class="underline text-sm text-gray-600 hover:text-gray-900 rounded-md focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500" href="{{ route('login') }}">
                {{ __('Torna al login') }}
            </a>
            
            <x-primary-button class="ml-4">
                {{ __('Invia Password Reset Link') }}
            </x-primary-button>
        </div>
    </form>
</x-guest-layout>
