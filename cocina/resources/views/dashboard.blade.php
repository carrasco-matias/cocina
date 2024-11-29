<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900 dark:text-gray-100">
                    {{ @if(Auth::user()->name == "SuperAdmin") }}
                    {{ __("Has iniciado sesión, este es tu id:") }}
                    {{ Auth::user()->id }}
                    {{ @endif }}
                </div>
            </div>
        </div>
    </div>

    <div class="row py-12">
        <div class="col-6">
            <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900 dark:text-gray-100">
                    LISTADO MIS RECETAS   
                </div>
            </div>
        </div>
        <div class="col-6">
            <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900 dark:text-gray-100">
                   LISTADO RECETAS DE LA COMUNIDAD
                </div>
            </div>
        </div>
    </div>


</x-app-layout>
