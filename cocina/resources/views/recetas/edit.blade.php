<x-app-layout>
    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900 dark:text-gray-100">
                  <form method="POST" action="/recetas/editado">
                    @csrf
                    @method('PUT')
                    <input type="text" name="nombre" placeholder="nombre">
                    <input class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded" type="submit" value="Guardar">
                    <style>
                      .btn {
                        @apply font-bold py-2 px-4 rounded;
                      }
                      .btn-blue {
                        @apply bg-blue-500 text-white;
                      }
                      .btn-blue:hover {
                        @apply bg-blue-700;
                      }
                    </style>
                  </form>  
                  <form method="POST" action="{{asset("recetas/eliminado")."/".$receta->_id}}">
                    @csrf
                    @method('DELETE')
                    <input class="btn btn-blue bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded" type="submit" value="Eliminar">
                    <style>
                      .btn {
                        @apply font-bold py-2 px-4 rounded;
                      }
                      .btn-blue {
                        @apply bg-blue-500 text-white;
                      }
                      .btn-blue:hover {
                        @apply bg-blue-700;
                      }
                    </style>
                  </form>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>