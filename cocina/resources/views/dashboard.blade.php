<x-app-layout>
    @if(Auth::user()->name == "SuperAdmin")
    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900 dark:text-gray-100">
                    {{ __("Has iniciado sesión, este es tu id:") }}
                    {{ Auth::user()->id }}
                </div>
            </div>
        </div>
    </div>
    @endif

    @if($recetas_usuario->count() >= 1)
    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900 dark:text-gray-100">
                    <div class="max-w-[720px] mx-auto">         
                        <div class="block mb-4 mx-auto border-b border-slate-300 pb-2 max-w-[360px] text-center">
                            <h1>Mis Recetas</h1>
                        </div>
                        <br>
                        <div class="relative flex flex-col w-full h-full overflow-scroll text-slate-300 bg-slate-800 shadow-md rounded-lg bg-clip-border">
                            <table class="w-full text-left table-auto min-w-max">
                                <thead>
                                    <tr>
                                        <th class="p-4 border-b border-slate-600 bg-slate-700">
                                            <p class="text-sm font-normal leading-none text-slate-300">
                                                Nombre Receta
                                            </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-600 bg-slate-700">
                                            <p class="text-sm font-normal leading-none text-slate-300">
                                                Categoría
                                            </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-600 bg-slate-700">
                                            <p class="text-sm font-normal leading-none text-slate-300">
                                                Acciones
                                            </p>
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($recetas_usuario as $receta)
                                        <tr class="hover:bg-slate-700">
                                            <td class="p-4 border-b border-slate-700 bg-slate-900">
                                                <p class="text-sm text-slate-100 font-semibold">
                                                    {{ $receta->nombre_receta }}
                                                </p>
                                            </td>
                                            <td class="p-4 border-b border-slate-700 bg-slate-900">
                                                <p class="text-sm text-slate-100 font-semibold">
                                                    {{ $receta->nombre_categoria }}
                                                </p>
                                            </td>
                                            <td class="p-4 border-b border-slate-700 bg-slate-900">
                                                <a class="text-sm text-slate-100 font-semibold" href="{{asset('recetas')."/".$receta->nombre_receta."/editar"}}">
                                                    Editar
                                                </a>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>                   
                    </div>
                </div>
            </div>
        </div>
    </div>
    @endif

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900 dark:text-gray-100">
                    <div class="max-w-[720px] mx-auto">         
                        <div class="block mb-4 mx-auto border-b border-slate-300 pb-2 max-w-[360px] text-center">
                            <h1>Listado de Recetas</h1>
                        </div>
                        <br>
                        <div class="relative flex flex-col w-full h-full overflow-scroll text-slate-300 bg-slate-800 shadow-md rounded-lg bg-clip-border">
                            <table class="w-full text-left table-auto min-w-max">
                                <thead>
                                    <tr>
                                        <th class="p-4 border-b border-slate-600 bg-slate-700">
                                            <p class="text-sm font-normal leading-none text-slate-300">
                                                Nombre Receta
                                            </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-600 bg-slate-700">
                                            <p class="text-sm font-normal leading-none text-slate-300">
                                                Categoría
                                            </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-600 bg-slate-700">
                                            <p class="text-sm font-normal leading-none text-slate-300">
                                                Autor
                                            </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-600 bg-slate-700">
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($recetas as $receta)
                                        <tr class="hover:bg-slate-700">
                                            <td class="p-4 border-b border-slate-700 bg-slate-900">
                                                <p class="text-sm text-slate-100 font-semibold">
                                                    {{ $receta->nombre_receta }}
                                                </p>
                                            </td>
                                            <td class="p-4 border-b border-slate-700 bg-slate-900">
                                                <p class="text-sm text-slate-100 font-semibold">
                                                    {{ $receta->nombre_categoria }}
                                                </p>
                                            </td>
                                            <td class="p-4 border-b border-slate-700 bg-slate-900">
                                                <p class="text-sm text-slate-100 font-semibold">
                                                    {{ $receta->nombre_usuario }}
                                                </p>
                                            </td>
                                            <td class="p-4 border-b border-slate-700 bg-slate-900">
                                                <a class="text-sm text-slate-100 font-semibold" href="{{asset('recetas')."/".$receta->nombre_receta}}">
                                                    Ver
                                                </a>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>                   
                    </div>
                </div>
            </div>
        </div>
    </div>

</x-app-layout>