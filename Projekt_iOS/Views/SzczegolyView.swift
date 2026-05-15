import SwiftUI

struct SzczegolyView: View {
    let postac: Postac

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                
                // Zdjęcie
                if let zdjecie = postac.zdjecie {
                    Image(zdjecie)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity)
                        .cornerRadius(12)
                }

                // Nazwa i opis
                Text(postac.nazwa ?? "")
                    .font(.largeTitle)
                    .bold()

                Text(postac.opis ?? "")
                    .font(.body)
                    .foregroundColor(.secondary)

                // Atrybuty
                if let atrybuty = postac.atrybuty as? Set<Atrybut>, !atrybuty.isEmpty {
                    Divider()
                    Text("Atrybuty")
                        .font(.headline)

                    ForEach(atrybuty.sorted { $0.nazwa ?? "" < $1.nazwa ?? "" }, id: \.self) { atrybut in
                        HStack {
                            Text(atrybut.nazwa ?? "")
                            Spacer()
                            ForEach(0..<3, id: \.self) { i in
                                Image(systemName: i < atrybut.wartosc ? "star.fill" : "star")
                                    .foregroundColor(.yellow)
                            }
                        }
                    }
                }
            }
            .padding()
        }
    }
}
