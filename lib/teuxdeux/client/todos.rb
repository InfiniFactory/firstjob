
module TeuxDeux
  class Client
    module ToDos
      def list_todos(options={})
        get("list.json", options)
      end
      alias :todos :list_todos

      def list_somedays(options={})
        get("list/someday.json", options)
      end
      alias :someday :list_somedays

      def create_todo(todo, do_on, done=false, position=0)
        post("todo.json", {
          :todo_item => {
            :todo => todo,
            :do_on => do_on,
            :done => done ? 1 : 0,