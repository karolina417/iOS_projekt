import SwiftUI
import CoreData


struct ContentView: View {
    
    var body: some View {
        TabView{
            EncyklopediaView()
                .tabItem {
                    Label("Encyclopedia", systemImage: "book.closed")
                }
            PorownywarkaView()
                .tabItem {
                    Label("Porównywarka", systemImage: "square.split.2x1")
                }
            QuizView()
                .tabItem {
                    Label("Quiz", systemImage: "questionmark")
                }
        }.tint(Color(red: 0.39, green: 0.19, blue: 0.35))
    }
    
}
#Preview {
    ContentView()
        .environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
}
