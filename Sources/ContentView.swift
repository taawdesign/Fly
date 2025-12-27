import SwiftUI

struct ContentView: View {
    @State private var todos = ["Buy groceries", "Walk the dog", "Learn Swift"]
    @State private var newTodo = ""
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("New todo...", text: $newTodo)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Button(action: addTodo) {
                        Image(systemName: "plus.circle.fill")
                            .font(.title)
                            .foregroundColor(.blue)
                    }
                }
                .padding()
                
                List {
                    ForEach(todos, id: \.self) { todo in
                        Text(todo)
                    }
                    .onDelete(perform: deleteTodo)
                }
            }
            .navigationTitle("My Todos")
        }
    }
    
    func addTodo() {
        if !newTodo.isEmpty {
            todos.append(newTodo)
            newTodo = ""
        }
    }
    
    func deleteTodo(at offsets: IndexSet) {
        todos.remove(atOffsets: offsets)
    }
}