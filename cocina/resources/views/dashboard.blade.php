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

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            @if($recetas_usuario->count() >= 1)
            <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900 dark:text-gray-100">     
                    <div class="block mb-4 mx-auto border-b border-slate-300 pb-2 max-w-[360px] text-center">
                        <h1>Mis Recetas</h1>
                        <a class="cursor-pointer font-medium text-blue-600 dark:text-blue-500 hover:underline" href="crear/recetas">Crear</a>
                    </div>
                    <br>
                    <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg">
                        <div class="p-6 text-gray-900 dark:text-gray-100">
                            <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
                                <table class="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400">
                                    <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
                                        <tr>
                                            <th scope="col" class="px-6 py-3">Nombre Receta</th>
                                            <th scope="col" class="px-6 py-3">Categoría</th>
                                            <th scope="col" class="px-6 py-3">Acciones</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($recetas_usuario as $receta)
                                        <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
                                            <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">  {{ $receta->nombre_receta }}
                                            </th>
                                            <td class="px-6 py-4">
                                                {{ $receta->nombre_categoria }}
                                            </td>
                                            <td class="px-6 py-4">
                                                <a class="font-medium text-blue-600 dark:text-blue-500 hover:underline" href="{{asset('recetas')."/".$receta->nombre_receta."/editar"}}">
                                                    Editar
                                                </a>
                                                <br>
                                                <form method="POST" action="{{asset("recetas/eliminado")."/".$receta->_id}}">
                                                    @csrf
                                                    @method('DELETE')
                                                    <input class="cursor-pointer font-medium text-blue-600 dark:text-blue-500 hover:underline" type="submit" value="Eliminar" onclick="return confirm('¿Está seguro de borrar esta receta?');">
                                                </form>
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
            @endif
            <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900 dark:text-gray-100">     
                    <div class="block mb-4 mx-auto border-b border-slate-300 pb-2 max-w-[360px] text-center">
                        <h1>Listado de Recetas</h1>
                    </div>
                    <br>
                    <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg">
                        <div class="p-6 text-gray-900 dark:text-gray-100">
                            <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
                                <table class="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400">
                                    <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
                                    <tr>
                                    <th scope="col" class="px-6 py-3">    Nombre Receta
                                    </th>
                                    <th scope="col" class="px-6 py-3">
                                        Categoría
                                    </th>
                                    <th scope="col" class="px-6 py-3">
                                        Autor
                                    </th>
                                    <th scope="col" class="px-6 py-3">Acciones</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($recetas as $receta)
                                        <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
                                            <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">{{ $receta->nombre_receta }}</th>
                                            <td class="px-6 py-4">
                                                    {{ $receta->nombre_categoria }}
                                            </td>
                                            <td class="px-6 py-4">
                                                    {{ $receta->nombre_usuario }}
                                            </td>
                                            <td class="px-6 py-4">
                                                <a class="font-medium text-blue-600 dark:text-blue-500 hover:underline" href="{{asset('recetas')."/".$receta->nombre_receta}}">
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
    </div>

</x-app-layout>