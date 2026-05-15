class Postac{
    var nazwa: String
    var opis: String
    var zdjecie: String
    var atrybuty: [Atrybut] = []
    init(nazwa: String, opis: String, zdjecie: String, atrybuty: [Atrybut]) {
        self.nazwa = nazwa
        self.opis = opis
        self.zdjecie = zdjecie
        if atrybuty.count > 0 {
            self.atrybuty = atrybuty
        }
    }
}
