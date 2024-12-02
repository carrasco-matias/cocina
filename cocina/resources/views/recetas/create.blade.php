<x-app-layout>
  <form method="POST" action="/recetas/creado">
    @csrf
    @method('POST')
    <div class="py-12">
      <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
        <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg">
          <div class="p-6 text-gray-900 dark:text-gray-100">
            <div class="space-y-12">
              <div class="border-b border-gray-900/10 pb-6">
                <h2 class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white"></h2>
              </div>

              <div class="sm:col-span-4">
                <label for="nombre_receta" class="font-medium dark:text-white">Nombre receta</label>
                <div class="mt-2">
                  <input required id="nombre_receta" name="nombre_receta" type="nombre_receta" autocomplete="nombre_receta" class="block w-full rounded-md bg-white px-3 py-1.5 text-base text-gray-900 outline outline-1 -outline-offset-1 outline-gray-300 placeholder:text-gray-400 focus:outline-2 focus:-outline-offset-2 focus:outline-indigo-600 sm:text-sm/6" value="">
                </div>
              </div>

              <div class="sm:col-span-3">
                <label for="nombre_categoria" class="font-medium dark:text-white">Categorias</label>
                <div class="mt-2 grid grid-cols-1">
                  <select id="nombre_categoria" name="nombre_categoria" autocomplete="nombre_categoria" class="col-start-1 row-start-1 w-full appearance-none rounded-md bg-white py-1.5 pl-3 pr-8 text-base text-gray-900 outline outline-1 -outline-offset-1 outline-gray-300 focus:outline-2 focus:-outline-offset-2 focus:outline-indigo-600 sm:text-sm/6">
                    @foreach($categorias as $categoria)
                      <option>{{$categoria->nombre}}</option>
                    @endforeach
                  </select>
                  <svg class="pointer-events-none col-start-1 row-start-1 mr-2 size-5 self-center justify-self-end text-gray-500 sm:size-4" viewBox="0 0 16 16" fill="currentColor" aria-hidden="true" data-slot="icon">
                    <path fill-rule="evenodd" d="M4.22 6.22a.75.75 0 0 1 1.06 0L8 8.94l2.72-2.72a.75.75 0 1 1 1.06 1.06l-3.25 3.25a.75.75 0 0 1-1.06 0L4.22 7.28a.75.75 0 0 1 0-1.06Z" clip-rule="evenodd" />
                  </svg>
                </div>
              </div>

              <div class="sm:col-span-4">
                <label for="descripcion" class="font-medium dark:text-white">Descripción</label>
                <div class="mt-2">
                  <input required id="descripcion" name="descripcion" type="descripcion" autocomplete="descripcion" class="block w-full rounded-md bg-white px-3 py-1.5 text-base text-gray-900 outline outline-1 -outline-offset-1 outline-gray-300 placeholder:text-gray-400 focus:outline-2 focus:-outline-offset-2 focus:outline-indigo-600 sm:text-sm/6" value="">
                </div>
              </div>

              <div class="sm:col-span-4">
                <label for="tiempo_preparacion" class="font-medium dark:text-white">Tiempo preparación</label>
                <div class="mt-2">
                  <input required id="tiempo_preparacion" name="tiempo_preparacion" type="tiempo_preparacion" autocomplete="tiempo_preparacion" class="block w-full rounded-md bg-white px-3 py-1.5 text-base text-gray-900 outline outline-1 -outline-offset-1 outline-gray-300 placeholder:text-gray-400 focus:outline-2 focus:-outline-offset-2 focus:outline-indigo-600 sm:text-sm/6" value="">
                </div>
              </div>

              <div class="sm:col-span-3">
                <label for="ingredientes" class="font-medium dark:text-white">Ingredientes</label>
                <div class="mt-2 grid grid-cols-1">
                  <select required name="ingredientes[]" id="ingredientes" multiple class="col-start-1 row-start-1 w-full appearance-none rounded-md bg-white py-1.5 pl-3 pr-8 text-base text-gray-900 outline outline-1 -outline-offset-1 outline-gray-300 focus:outline-2 focus:-outline-offset-2 focus:outline-indigo-600 sm:text-sm/6">
                    @foreach($ingredientes as $ingrediente)
                      <option value="{{$ingrediente->nombre}}">{{$ingrediente->nombre}}</option>
                    @endforeach
                  </select>
                </div>
              </div>


              <div class="sm:col-span-4">
                <label for="instrucciones" class="font-medium dark:text-white">Instrucciones</label>
                <div class="mt-2">
                  <input required id="instrucciones" name="instrucciones" type="instrucciones" autocomplete="instrucciones" class="block w-full rounded-md bg-white px-3 py-1.5 text-base text-gray-900 outline outline-1 -outline-offset-1 outline-gray-300 placeholder:text-gray-400 focus:outline-2 focus:-outline-offset-2 focus:outline-indigo-600 sm:text-sm/6" value="">
                </div>
              </div>
              <div class="mt-6 flex items-center justify-end gap-x-6">
                <button type="submit" class="rounded-md bg-indigo-600 px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600">Guardar</button>
              </div>

              <input type="hidden" value="" name="id">
            </div>
          </div>
        </div>
      </div>
    </div>
  </form>
</x-app-layout>