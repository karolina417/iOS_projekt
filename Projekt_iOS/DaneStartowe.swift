import CoreData

struct DaneStartowe {
    static func zaladuj(context: NSManagedObjectContext) {
        
        
        // MARK: Dane wczytywane tylko przy 1 starcie aplikacji - żeby odświeżyć zrestartuj XCode
        let request: NSFetchRequest<Postac> = Postac.fetchRequest()
        let count = (try? context.count(for: request)) ?? 0
        guard count == 0 else { return }
        
        // TODO: UZUPEŁNIĆ
        // --- Postacie ---
        let duch = Postac(context: context)
        duch.nazwa = "Duch"
        duch.opis = "Straszny duch"
        duch.zdjecie = "duch"
        
        // --- Atrybuty ---
        let moc1 = Atrybut(context: context)
        moc1.nazwa = "Moc"
        moc1.wartosc = 95
        duch.addToAtrybuty(moc1)
        
        // --- Pytania ---
        let pytanie = Pytanie(context: context)
        pytanie.tresc = "Jak straszny jest Duch?"
        pytanie.odpowiedzi = ["Wcale", "Trochę", "Nawet straszny", "Śmiertelnie Straszny"]
        pytanie.poprawna = 1
        
        try? context.save()
        print("✅ Dane startowe załadowane")
    }
}
