class Pytanie{
    var tresc: String
    var odpowiedzi: [String]
    var poprawna: Int
    
    init(tresc: String, odpowiedzi: [String], poprawna: Int) {
        self.tresc = tresc
        self.odpowiedzi = odpowiedzi
        self.poprawna = poprawna
    }
}
