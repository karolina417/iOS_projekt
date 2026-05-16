import CoreData

struct DaneStartowe {
    static func zaladuj(context: NSManagedObjectContext) {
        
        
        // MARK: Dane wczytywane tylko przy 1 starcie aplikacji - żeby odświeżyć zrestartuj XCode
        let request: NSFetchRequest<Postac> = Postac.fetchRequest()
        let count = (try? context.count(for: request)) ?? 0
        guard count == 0 else { return }
        
        // MARK: Atrybuty mają 1:N więc można robić np. moc1 (Moc o wartości1) i przypisać do wielu postaci jak niżej
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
        
        let szybkosc0 = Atrybut(context: context)
        szybkosc0.nazwa = "Szybkość"
        szybkosc0.wartosc = 0
        
        let szybkosc1 = Atrybut(context: context)
        szybkosc1.nazwa = "Szybkość"
        szybkosc1.wartosc = 1
        
        let szybkosc2 = Atrybut(context: context)
        szybkosc2.nazwa = "Szybkość"
        szybkosc2.wartosc = 2
        
        let szybkosc3 = Atrybut(context: context)
        szybkosc3.nazwa = "Szybkość"
        szybkosc3.wartosc = 3
        
        let latanie0 = Atrybut(context: context)
        latanie0.nazwa = "Umiejętność latania"
        latanie0.wartosc = 0
        
        let latanie1 = Atrybut(context: context)
        latanie1.nazwa = "Umiejętność latania"
        latanie1.wartosc = 1
        
        let latanie2 = Atrybut(context: context)
        latanie2.nazwa = "Umiejętność latania"
        latanie2.wartosc = 2
        
        let latanie3 = Atrybut(context: context)
        latanie3.nazwa = "Umiejętność latania"
        latanie3.wartosc = 3
        
        let woda0 = Atrybut(context: context)
        woda0.nazwa = "Odporność na wodę"
        woda0.wartosc = 0
        
        let woda1 = Atrybut(context: context)
        woda1.nazwa = "Odporność na wodę"
        woda1.wartosc = 1
        
        let woda2 = Atrybut(context: context)
        woda2.nazwa = "Odporność na wodę"
        woda2.wartosc = 2
        
        let woda3 = Atrybut(context: context)
        woda3.nazwa = "Odporność na wodę"
        woda3.wartosc = 3
        
        let slonce0 = Atrybut(context: context)
        slonce0.nazwa = "Odporność na światło słoneczne"
        slonce0.wartosc = 0
        
        let slonce1 = Atrybut(context: context)
        slonce1.nazwa = "Odporność na światło słoneczne"
        slonce1.wartosc = 1
        
        let slonce2 = Atrybut(context: context)
        slonce2.nazwa = "Odporność na światło słoneczne"
        slonce2.wartosc = 2
        
        let slonce3 = Atrybut(context: context)
        slonce3.nazwa = "Odporność na światło słoneczne"
        slonce3.wartosc = 3
        
        let ksiezyc0 = Atrybut(context: context)
        ksiezyc0.nazwa = "Odporność na fazy księżyca"
        ksiezyc0.wartosc = 0
        
        let ksiezyc1 = Atrybut(context: context)
        ksiezyc1.nazwa = "Odporność na fazy księżyca"
        ksiezyc1.wartosc = 1
        
        let ksiezyc2 = Atrybut(context: context)
        ksiezyc2.nazwa = "Odporność na fazy księżyca"
        ksiezyc2.wartosc = 2
        
        let ksiezyc3 = Atrybut(context: context)
        ksiezyc3.nazwa = "Odporność na fazy księżyca"
        ksiezyc3.wartosc = 3
        
        let dl_zycia0 = Atrybut(context: context)
        dl_zycia0.nazwa = "Długość życia"
        dl_zycia0.wartosc = 0
        
        let dl_zycia1 = Atrybut(context: context)
        dl_zycia1.nazwa = "Długość życia"
        dl_zycia1.wartosc = 1
        
        let dl_zycia2 = Atrybut(context: context)
        dl_zycia2.nazwa = "Długość życia"
        dl_zycia2.wartosc = 2
        
        let dl_zycia3 = Atrybut(context: context)
        dl_zycia3.nazwa = "Długość życia"
        dl_zycia3.wartosc = 3
        
        let akt_nocna0 = Atrybut(context: context)
        akt_nocna0.nazwa = "Aktywność nocna"
        akt_nocna0.wartosc = 0
        
        let akt_nocna1 = Atrybut(context: context)
        akt_nocna1.nazwa = "Aktywność nocna"
        akt_nocna1.wartosc = 1
        
        let akt_nocna2 = Atrybut(context: context)
        akt_nocna2.nazwa = "Aktywność nocna"
        akt_nocna2.wartosc = 2
        
        let akt_nocna3 = Atrybut(context: context)
        akt_nocna3.nazwa = "Aktywność nocna"
        akt_nocna3.wartosc = 3
        
        // --- Postacie ---
        let wrozka = Postac(context: context)
        wrozka.nazwa = "Wróżka"
        wrozka.opis = "Wróżki potrafią kurczyć się do swojego naturalnego, niewielkiego rozmiaru – wtedy przypominają lewitujące, świecące istoty. Posiadają skrzydła, dzięki którym mogą latać, choć często poruszają się również pieszo. Dysponują magią, którą wykorzystują m.in. do naprawy przedmiotów czy przywracania zombie do ludzkiej postaci. Ich moc magiczna ma jednak dzienny limit. Wróżki potrafią tworzyć unikalne aury wpływające na otoczenie, np. poprawiające nastrój innych postaci. Uwielbiają psoty i żarty – za pomocą magicznego pyłu mogą np. zmienić czyjeś ubranie lub wywołać uczucie zimna. Podczas nowiu księżyca czują się osłabione, natomiast w inne noce ich samopoczucie jest bardzo dobre. Starzeją się bardzo powoli."
        wrozka.zdjecie = "wrozka"
        wrozka.addToAtrybuty(sila0)
        wrozka.addToAtrybuty(moc2)
        wrozka.addToAtrybuty(szybkosc1)
        wrozka.addToAtrybuty(latanie3)
        wrozka.addToAtrybuty(woda0)
        wrozka.addToAtrybuty(slonce3)
        wrozka.addToAtrybuty(ksiezyc2)
        wrozka.addToAtrybuty(dl_zycia3)
        wrozka.addToAtrybuty(akt_nocna1)
        
        let czarownica = Postac(context: context)
        czarownica.nazwa = "Czarownica"
        czarownica.opis = "Czarownice wyglądają jak zwykli ludzie, jednak posiadają rozwinięte zdolności magiczne, które wykorzystują przy pomocy różdżki. Ich moc magiczna jest ograniczona i regeneruje się podczas odpoczynku lub po wypiciu specjalnego eliksiru. Potrafią rzucać klątwy, zaklęcia miłości i szczęścia, wskrzeszać zmarłych jako zombie, a także nakłaniać duchy do straszenia innych. Mogą naprawiać przedmioty za pomocą magii oraz dokonywać transmutacji, np. zamieniając owoce i warzywa w małe zwierzęta. Specjalizują się w alchemii, tworzeniu eliksirów oraz lataniu na miotle. Mogą również brać udział w pojedynkach magicznych."
        czarownica.zdjecie = "czarownica"
        czarownica.addToAtrybuty(sila1)
        czarownica.addToAtrybuty(moc2)
        czarownica.addToAtrybuty(szybkosc1)
        czarownica.addToAtrybuty(latanie1)
        czarownica.addToAtrybuty(woda0)
        czarownica.addToAtrybuty(slonce3)
        czarownica.addToAtrybuty(ksiezyc2)
        czarownica.addToAtrybuty(dl_zycia1)
        czarownica.addToAtrybuty(akt_nocna1)
        
        let wampir = Postac(context: context)
        wampir.nazwa = "Wampir"
        wampir.opis = "Wampiry wyróżniają się bladą cerą, świecącymi oczami oraz charakterystycznymi kłami. Starzeją się bardzo powoli, przez co sprawiają wrażenie niezmiennych w czasie. Są wyjątkowo szybkie i silne. Aby przetrwać, muszą zaspokajać pragnienie, pijąc plazmę – np. od innych postaci. Zwykłe jedzenie nie zaspokaja tej potrzeby. Wampiry są wrażliwe na światło słoneczne – zbyt długie przebywanie na słońcu może doprowadzić do ich śmierci (przemiany w popiół). Czosnek działa na nie osłabiająco - zjadając go mogą zemdleć. Najlepiej funkcjonują nocą, dlatego nazywane są „panami nocy”. Śpią w trumnach, często unosząc się nad ich powierzchnią. Potrafią czytać w myślach, hipnotyzować innych oraz przemieniać ich w wampiry poprzez ugryzienie."
        wampir.zdjecie = "wampir"
        wampir.addToAtrybuty(sila2)
        wampir.addToAtrybuty(moc1)
        wampir.addToAtrybuty(szybkosc2)
        wampir.addToAtrybuty(latanie0)
        wampir.addToAtrybuty(woda0)
        wampir.addToAtrybuty(slonce0)
        wampir.addToAtrybuty(ksiezyc3)
        wampir.addToAtrybuty(dl_zycia3)
        wampir.addToAtrybuty(akt_nocna3)
        
        let wilkolak = Postac(context: context)
        wilkolak.nazwa = "Wilkołak"
        wilkolak.opis = "Wilkołaki na co dzień wyglądają podobnie do zwykłych osób, jednak można zauważyć u nich pewne charakterystyczne cechy, takie jak bardziej dziki wygląd czy wyostrzone rysy twarzy. Już od najmłodszych lat wykazują silne instynkty łowieckie. Podczas pełni księżyca przemieniają się w swoją wilczą formę. W tej postaci ich ciało pokrywa gęste owłosienie, pojawiają się spiczaste uszy, świecące oczy oraz wysunięta szczęka z widocznymi kłami. Poruszają się wtedy na czterech łapach, osiągając bardzo dużą prędkość, oraz charakteryzują się największą ze wszystkich siłą. Wilkołaki mogą zarażać innych swoją klątwą poprzez ugryzienie. Potrafią polować, wyć do księżyca oraz żywią się m.in. surowym mięsem i rybami."
        wilkolak.zdjecie = "wilkolak"
        wilkolak.addToAtrybuty(sila3)
        wilkolak.addToAtrybuty(moc0)
        wilkolak.addToAtrybuty(szybkosc3)
        wilkolak.addToAtrybuty(latanie0)
        wilkolak.addToAtrybuty(woda0)
        wilkolak.addToAtrybuty(slonce0)
        wilkolak.addToAtrybuty(ksiezyc0)
        wilkolak.addToAtrybuty(dl_zycia2)
        wilkolak.addToAtrybuty(akt_nocna3)
        
        let zombie = Postac(context: context)
        zombie.nazwa = "Zombie"
        zombie.opis = "Zombie to nieumarłe istoty, które pojawiają się podczas pełni księżyca, wychodząc z ziemi. Po jej zakończeniu wracają do swoich grobów. Poruszają się bardzo wolno i mają trudności z pokonywaniem przeszkód, takich jak schody. Są słabymi pływakami. Niszczą rośliny i wykazują silną potrzebę atakowania innych, szczególnie w celu „zjedzenia mózgu” i przy okazji zmiany zaatakowanego w zombie."
        zombie.zdjecie = "zombie"
        zombie.addToAtrybuty(sila1)
        zombie.addToAtrybuty(moc0)
        zombie.addToAtrybuty(szybkosc0)
        zombie.addToAtrybuty(latanie0)
        zombie.addToAtrybuty(woda0)
        zombie.addToAtrybuty(slonce3)
        zombie.addToAtrybuty(ksiezyc1)
        zombie.addToAtrybuty(dl_zycia1)
        zombie.addToAtrybuty(akt_nocna3)
        
        let syrena = Postac(context: context)
        syrena.nazwa = "Syrena"
        syrena.opis = "Syreny w wodzie posiadają ogon, natomiast na lądzie przyjmują postać z nogami pokrytymi łuskami. Można je spotkać podczas pływania, nurkowania lub żeglowania. Odżywiają się głównie wodorostami, ponieważ jedzenie ryb powoduje u nich złe samopoczucie. Do życia potrzebują regularnego kontaktu z wodą – jej brak może doprowadzić do odwodnienia, światło słoneczne również je wysusza. Co najmniej raz na 48 godzin muszą przebywać w oceanie lub morzu, inaczej utracą swoje moce, ogon i staną się zwykłymi postaciami. Syreny nie są atakowane przez rekiny ani Krakena, a nawet mogą przywoływać rekiny, by zaatakowały innych. Potrafią również wzywać inne syreny za pomocą muszli."
        syrena.zdjecie = "syrena"
        syrena.addToAtrybuty(sila2)
        syrena.addToAtrybuty(moc0)
        syrena.addToAtrybuty(szybkosc1)
        syrena.addToAtrybuty(latanie0)
        syrena.addToAtrybuty(woda3)
        syrena.addToAtrybuty(slonce1)
        syrena.addToAtrybuty(ksiezyc3)
        syrena.addToAtrybuty(dl_zycia2)
        syrena.addToAtrybuty(akt_nocna1)
        
        let dzin = Postac(context: context)
        dzin.nazwa = "Dżin"
        dzin.opis = "Dżin to magiczna istota zamieszkująca starą, zakurzoną lampę - ten kto ją potrze zdobywa od niego trzy życzenia, które dżin spełni np. bogactwa, urody, długiego życia, wskrzeszenia kogoś, szczęścia, miłości czy większej ilości życzeń - zazwyczaj dostanie od niego jedno dodatkowe. Może lewitować oraz tego posiada wiele zdolności magicznych, takich jak ognioodporność, natychmiastowe sprzątanie, przywoływanie potrwa wysokiej jakości, znikanie czy kontrolowanie umysłów innych postaci."
        dzin.zdjecie = "dzin"
        dzin.addToAtrybuty(sila2)
        dzin.addToAtrybuty(moc3)
        dzin.addToAtrybuty(szybkosc1)
        dzin.addToAtrybuty(latanie3)
        dzin.addToAtrybuty(woda0)
        dzin.addToAtrybuty(slonce3)
        dzin.addToAtrybuty(ksiezyc3)
        dzin.addToAtrybuty(dl_zycia2)
        dzin.addToAtrybuty(akt_nocna1)
        
        let duch = Postac(context: context)
        duch.nazwa = "Duch"
        duch.opis = "Wygląd ducha zależy od sposobu jego śmierci – różne przyczyny nadają mu inne kolory. Duchy poruszają się, unosząc się nad ziemią, a ich głos ma charakterystyczne echo. Nie mogą ponownie umrzeć i są odporne wszystkie z zagrożeń. Potrafią przenikać przez ściany oraz manipulować obiektami, unosząc je i wprawiając w ruch. Ich aktywność ogranicza się do godzin nocnych – od 23:00 do 6:00."
        duch.zdjecie = "duch"
        duch.addToAtrybuty(sila0)
        duch.addToAtrybuty(moc0)
        duch.addToAtrybuty(szybkosc1)
        duch.addToAtrybuty(latanie3)
        duch.addToAtrybuty(woda3)
        duch.addToAtrybuty(slonce3)
        duch.addToAtrybuty(ksiezyc3)
        duch.addToAtrybuty(dl_zycia0)
        duch.addToAtrybuty(akt_nocna3)
        
        // --- Pytania ---
        let pytanie = Pytanie(context: context)
        pytanie.tresc = "Na czyje samopoczucie oraz zachowanie żadna faza księżyca nie ma wpływu?"
        pytanie.odpowiedzi = ["czarownicy", "wilkołaka", "wróżki", "zombie"]
        pytanie.poprawna = 0
        
        let pytanie2 = Pytanie(context: context)
        pytanie2.tresc = "Od czego zależy kolor ducha?"
        pytanie2.odpowiedzi = ["fazy księżyca", "sposobu jego śmierci", "jego nastroju", "pogody"]
        pytanie2.poprawna = 1
        
        let pytanie3 = Pytanie(context: context)
        pytanie3.tresc = "Którą zdolność specjalną posiada dżin?"
        pytanie3.odpowiedzi = ["ognioodporność", "mogą oddychać pod wodą", "w pełnię księżyca przechodzą przemianę"]
        pytanie3.poprawna = 0
        
        let pytanie4 = Pytanie(context: context)
        pytanie4.tresc = "Syreny najchętniej żywią się:"
        pytanie4.odpowiedzi = ["wodorostami", "owocami", "rybami"]
        pytanie4.poprawna = 0
        
        let pytanie5 = Pytanie(context: context)
        pytanie5.tresc = "Co na zewnątrz stanowi dla wampirów niebezpieczeństwo?"
        pytanie5.odpowiedzi = ["deszcz", "słońce", "śnieg"]
        pytanie5.poprawna = 1
        
        let pytanie6 = Pytanie(context: context)
        pytanie6.tresc = "Która z postaci nie ma dziennego limitu wykorzystania swojej mocy magicznej?"
        pytanie6.odpowiedzi = ["wróżka", "czarownica", "dżin"]
        pytanie6.poprawna = 2
        
        let pytanie7 = Pytanie(context: context)
        pytanie7.tresc = "Którego z życzeń dżin nie spełni po potarciu lampy?"
        pytanie7.odpowiedzi = ["wskrzeszenia zmarłego", "bogactwa", "miłości", "przemiany w wampira"]
        pytanie7.poprawna = 3
        
        let pytanie8 = Pytanie(context: context)
        pytanie8.tresc = "Czego do czarowania i płatania psikusów używa wróżka?"
        pytanie8.odpowiedzi = ["różdżki", "magicznego pyłu"]
        pytanie8.poprawna = 1
        
        let pytanie9 = Pytanie(context: context)
        pytanie9.tresc = "Która postać jest najsilniejsza i najszybsza?"
        pytanie9.odpowiedzi = ["wilkołak podczas pełni", "wampir nocą", "syrena w wodzie"]
        pytanie9.poprawna = 0
        
        let pytanie10 = Pytanie(context: context)
        pytanie10.tresc = "Dla kogo światło słoneczne jest bezpieczne?"
        pytanie10.odpowiedzi = ["syreny", "wampira", "ducha"]
        pytanie10.poprawna = 2
        
        let pytanie11 = Pytanie(context: context)
        pytanie11.tresc = "Czy Kraken zagraża syrenom?"
        pytanie11.odpowiedzi = ["tak", "nie"]
        pytanie11.poprawna = 1
        
        let pytanie12 = Pytanie(context: context)
        pytanie12.tresc = "Kto porusza się najwolniej?"
        pytanie12.odpowiedzi = ["zombie", "wróżka", "duch"]
        pytanie12.poprawna = 0
        
        let pytanie13 = Pytanie(context: context)
        pytanie13.tresc = "W jakich godzinach bytują duchy?"
        pytanie13.odpowiedzi = ["23:00 - 6:00", "22:00 - 5:00", "24:00 - 7:00"]
        pytanie13.poprawna = 0
        
        let pytanie14 = Pytanie(context: context)
        pytanie14.tresc = "Ile czasu maksymalnie syrena może przebywać na lądzie, zanim zacznie się adaptować do życia lądowego?"
        pytanie14.odpowiedzi = ["24 godziny", "48 godzin", "72 godziny"]
        pytanie14.poprawna = 1
        
        let pytanie15 = Pytanie(context: context)
        pytanie15.tresc = "Która postać może przenikać przez ściany?"
        pytanie15.odpowiedzi = ["duch", "wilkołak", "zombie"]
        pytanie15.poprawna = 0
        
        let pytanie16 = Pytanie(context: context)
        pytanie16.tresc = "W jaki sposób czarownica nie zregeneruje mocy magicznej?"
        pytanie16.odpowiedzi = ["wypijając specjalny eliksir", "odpoczywając", "wchodząc do wody"]
        pytanie16.poprawna = 2
        
        let pytanie17 = Pytanie(context: context)
        pytanie17.tresc = "W jaki sposób wilkołak może przemienić inną osobę?"
        pytanie17.odpowiedzi = ["poprzez hipnozę", "poprzez ugryzienie", "poprzez zaklęcie"]
        pytanie17.poprawna = 1
        
        let pytanie18 = Pytanie(context: context)
        pytanie18.tresc = "Gdzie mieszka dżin?"
        pytanie18.odpowiedzi = ["w zamku", "w jaskini", "w magicznej lampie"]
        pytanie18.poprawna = 2
        
        let pytanie19 = Pytanie(context: context)
        pytanie19.tresc = "Co robią zombie z roślinami?"
        pytanie19.odpowiedzi = ["podlewają je", "niszczą je", "zbierają owoce"]
        pytanie19.poprawna = 1
        
        let pytanie20 = Pytanie(context: context)
        pytanie20.tresc = "Jak syrena wzywa inne syreny?"
        pytanie20.odpowiedzi = ["śpiewem", "za pomocą muszli", "telepatią"]
        pytanie20.poprawna = 1
        
        let pytanie21 = Pytanie(context: context)
        pytanie21.tresc = "Która postać posiada skrzydła i potrafi latać?"
        pytanie21.odpowiedzi = ["czarownica", "wróżka", "duch"]
        pytanie21.poprawna = 1
        
        let pytanie22 = Pytanie(context: context)
        pytanie22.tresc = "Czego potrzebuje wampir, aby przetrwać?"
        pytanie22.odpowiedzi = ["wody", "plazmy", "światła księżyca"]
        pytanie22.poprawna = 1
        
        let pytanie23 = Pytanie(context: context)
        pytanie23.tresc = "Która postać specjalizuje się w alchemii i tworzeniu eliksirów?"
        pytanie23.odpowiedzi = ["wróżka", "czarownica", "syrena"]
        pytanie23.poprawna = 1
        
        let pytanie24 = Pytanie(context: context)
        pytanie24.tresc = "W jakiej formie wilkołak porusza się najszybciej?"
        pytanie24.odpowiedzi = ["na dwóch nogach", "na czterech łapach"]
        pytanie24.poprawna = 1
        
        let pytanie25 = Pytanie(context: context)
        pytanie25.tresc = "Co stanie się z syreną, jeśli zbyt długo nie będzie przebywać w oceanie lub morzu?"
        pytanie25.odpowiedzi = ["stanie się zombie", "straci swoje moce i ogon", "zamieni się w ducha"]
        pytanie25.poprawna = 1
        
        try? context.save()
        print("✅ Dane startowe załadowane")
    }
}
