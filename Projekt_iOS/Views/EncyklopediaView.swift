import SwiftUI
import CoreData

struct EncyklopediaView: View {
    @Environment(\.managedObjectContext) private var context

    @FetchRequest(
        entity: Postac.entity(),
        sortDescriptors: [NSSortDescriptor(keyPath: \Postac.nazwa, ascending: true)]
    ) var postacie: FetchedResults<Postac>

    var body: some View {
        NavigationView {
            VStack{
                Image("wszystkie")
                    .resizable()
                    .scaledToFit()
                if postacie.isEmpty {
                    Text("Brak postaci!")
                }else{
                    List(postacie, id: \.self) { postac in
                        NavigationLink(destination: SzczegolyView(postac: postac)) {
                            Text(postac.nazwa ?? "Brak nazwy")
                        }
                    }
                    .listStyle(.plain)
                }
                
            }
            .navigationTitle("Wybierz postać")
        }
    }
}

#Preview {
    EncyklopediaView()
        .environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
}
