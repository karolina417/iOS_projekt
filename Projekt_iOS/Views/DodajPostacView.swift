import SwiftUI
import CoreData

struct DodajPostacView: View {
    @Environment(\.managedObjectContext) private var context
    @Environment(\.dismiss) private var dismiss
    
    @State private var nazwa = ""
    @State private var opis = ""
    @State private var zdjecie = ""
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Nazwa", text: $nazwa)
                TextField("Opis", text: $opis)
                TextField("Zdjecie", text: $zdjecie)
            }
            .navigationTitle("Nowa postać")
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Zapisz") {
                        let postac = Postac(context: context)
                        postac.nazwa = nazwa
                        postac.opis = opis
                        postac.zdjecie = zdjecie
                        try? context.save()
                        dismiss()
                    }
                    .disabled(nazwa.isEmpty)
                }
            }
        }
    }
}
