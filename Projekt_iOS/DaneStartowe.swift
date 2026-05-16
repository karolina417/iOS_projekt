import CoreData

struct DaneStartowe {
    static func zaladuj(context: NSManagedObjectContext) {
        
        
        // MARK: Dane wczytywane tylko przy 1 starcie aplikacji - żeby odświeżyć zrestartuj XCode
        let request: NSFetchRequest<Postac> = Postac.fetchRequest()
        let count = (try? context.count(for: request)) ?? 0
        guard count == 0 else { return }
        
        // TODO: UZUPEŁNIĆ
        // --- Atrybuty ---
        // MARK: Atrybuty mają 1:N więc można robić np. moc1 (Moc o wartości1) i przypisać do wielu postaci jak niżej
        let moc0 = Atrybut(context: context)
        moc0.nazwa = "Moc magiczna"
        moc0.wartosc = 0
        
        let moc1 = Atrybut(context: context)
        moc1.nazwa = "Moc magiczna"
        moc1.wartosc = 1
        
        let moc2 = Atrybut(context: context)
        moc2.nazwa = "Moc magiczna"
        moc2.wartosc = 2
        
        let moc3 = Atrybut(context: context)
        moc3.nazwa = "Moc magiczna"
        moc3.wartosc = 3
        
        let sila0 = Atrybut(context: context)
        sila0.nazwa = "Siła"
        sila0.wartosc = 0
        
        let sila1 = Atrybut(context: context)
        sila1.nazwa = "Siła"
        sila1.wartosc = 1
        
        let sila2 = Atrybut(context: context)
        sila2.nazwa = "Siła"
        sila2.wartosc = 2
        
        let sila3 = Atrybut(context: context)
        sila3.nazwa = "Siła"
        sila3.wartosc = 3
        
        // --- Postacie ---
        let duch = Postac(context: context)
        duch.nazwa = "Duch"
        duch.opis = "Wygląd ducha zależy od sposobu jego śmierci – różne przyczyny nadają mu inne kolory. Duchy poruszają się, unosząc się nad ziemią, a ich głos ma charakterystyczne echo. Nie mogą ponownie umrzeć i są odporne wszystkie z zagrożeń. Potrafią przenikać przez ściany oraz manipulować obiektami, unosząc je i wprawiając w ruch. Ich aktywność ogranicza się do godzin nocnych – od 23:00 do 6:00."
        duch.zdjecie = "duch"
        duch.addToAtrybuty(sila0)
        duch.addToAtrybuty(moc0)
        
        let zombie = Postac(context: context)
        zombie.nazwa = "Zombie"
        zombie.opis = "Zombie to nieumarłe istoty, które pojawiają się podczas pełni księżyca, wychodząc z ziemi. Po jej zakończeniu wracają do swoich grobów. Poruszają się bardzo wolno i mają trudności z pokonywaniem przeszkód, takich jak schody. Są słabymi pływakami. Niszczą rośliny i wykazują silną potrzebę atakowania innych, szczególnie w celu „zjedzenia mózgu” i przy okazji zmiany zaatakowanego w zombie."
        zombie.zdjecie = "zombie"
        zombie.addToAtrybuty(sila1)
        zombie.addToAtrybuty(moc0)
        
        // --- Pytania ---
        let pytanie = Pytanie(context: context)
        pytanie.tresc = "Na czyje samopoczucie oraz zachowanie żadna faza księżyca nie ma wpływu?"
        pytanie.odpowiedzi = ["czarownicy", "wilkołaka", "wróżki", "zombie"]
        pytanie.poprawna = 0
        
        let pytanie2 = Pytanie(context: context)
        pytanie2.tresc = "Od czego zależy kolor ducha?"
        pytanie2.odpowiedzi = ["fazy księżyca", "sposobu jego śmierci", "jego nastroju", "pogody"]
        pytanie2.poprawna = 1
        
        try? context.save()
        print("✅ Dane startowe załadowane")
    }
}
