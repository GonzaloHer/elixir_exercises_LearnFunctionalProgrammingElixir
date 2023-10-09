defmodule TaskList do
  @file_name "task_list.md" # puedo acceder desde cualquier funcion a esto dentro de este modulo - ESTO ES UN STRING

  def add(task_name) do
    task = "[ ]" <> task_name <> "\n" # el contenido que vamos a agregar
    File.write(@file_name, task, [:append]) # en el path @file_name escribimos `task` https://hexdocs.pm/elixir/1.13/File.html#write/3
  end

  def show_list do
    File.read(@file_name)
  end
end
