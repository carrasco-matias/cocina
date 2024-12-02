<form action="{{ asset("recetas/delete/") }}" method="POST">
    @method('DELETE')
    <input type="hidden" name="id" value="{{$receta->_id}}">
    <input class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded" type="submit" value="Eliminar">
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