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
            DodajPostacView()
                .tabItem{
                    Label("Dodaj Postać", systemImage: "plus")
                }
        }
    }
    
}
#Preview {
    ContentView()
        .environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
}
