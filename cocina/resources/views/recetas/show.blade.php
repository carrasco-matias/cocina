<x-app-layout>
    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900 dark:text-gray-100">
                  <div class="space-y-12">
                    <div class="border-b border-gray-900/10">
                      <h2 class="font-medium dark:text-white">{{ $receta->nombre_receta }}</h2>
                    </div>
                    <div class="border-b border-gray-900/10 pb-12">
                      <h2 class="font-medium dark:text-white">Autor</h2>
                      <p class="font-light dark:text-white">{{ $receta->nombre_usuario}}</p>
                      <br>
                      <h2 class="font-medium dark:text-white">Categoría receta</h2>
                      <p class="font-light dark:text-white">{{ $receta->nombre_categoria}}</p>
                      <br>
                      <h2 class="font-medium dark:text-white">Descripción</h2>
                      <p class="font-light dark:text-white">{{ $receta->descripcion}}</p>
                      <br>
                      <h2 class="font-medium dark:text-white">Tiempo preparación</h2>
                      <p class="font-light dark:text-white">{{ $receta->tiempo_preparacion}}</p>
                      <br>
                      <h2 class="font-medium dark:text-white">Ingredientes</h2>
                      <p class="font-light dark:text-white">
                        @foreach($receta->ingredientes as $ingrediente)
                        - {{ $ingrediente }}
                        <br>
                        @endforeach
                      </p>
                      <br>
                      <h2 class="font-medium dark:text-white">Instrucciones</h2>
                      <p class="font-light dark:text-white">{{ $receta->instrucciones }}</p>
                      <br>
                    </div>
                  </div>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>