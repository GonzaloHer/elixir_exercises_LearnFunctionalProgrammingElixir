# enves de escribir siempre File. y la funcion que quiero usar simplemente importo el modulo al archivo con las funciones que voy a usar

defmodule TaskListWithImport do
  import File, only: [write: 3, read: 1]  # los numeros despues de las funciones son la cantiad de parametros, ponemos los nombres de las funciones que usamos para que cuando importe varios modulos, saber de que modulo sale cada funcion, hay que ser explicitos.
  @file_name "task_list.md"

  def add(task_name) do
    task = "[ ] " <> task_name <> "\n"
    write(@file_name, task, [:append])
  end

  def show_list do read(@file_name)
  end

end
