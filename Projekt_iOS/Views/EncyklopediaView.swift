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
            List(postacie, id: \.self) { postac in
                NavigationLink(destination: SzczegolyView(postac: postac)) {
                    Text(postac.nazwa ?? "Brak nazwy")
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
