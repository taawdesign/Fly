import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    @State private var counter = 0
    
    var body: some View {
        VStack(spacing: 24) {
            Text("Hello, SwiftIDE!")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("Counter: \(counter)")
                .font(.title2)
            
            HStack(spacing: 16) {
                Button("-") { counter -= 1 }
                Button("+") { counter += 1 }
            }
            .font(.title)
        }
        .padding()
    }
}