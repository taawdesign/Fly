import SwiftUI

struct ContentView: View {
    @State private var counter = 0
    
    var body: some View {
        VStack(spacing: 30) {
            Text("🚀 SwiftIDE Works!")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("\(counter)")
                .font(.system(size: 80, weight: .bold))
                .foregroundColor(.blue)
            
            HStack(spacing: 20) {
                Button(action: { counter -= 1 }) {
                    Text("-")
                        .font(.largeTitle)
                        .frame(width: 70, height: 70)
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(35)
                }
                
                Button(action: { counter += 1 }) {
                    Text("+")
                        .font(.largeTitle)
                        .frame(width: 70, height: 70)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(35)
                }
            }
            
            Button("Reset") {
                counter = 0
            }
            .padding()
            .background(Color.gray.opacity(0.2))
            .cornerRadius(10)
        }
        .padding()
    }
}