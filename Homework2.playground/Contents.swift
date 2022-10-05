import UIKit

class Odev {
    //Derece - Fahrenhiet donusumu
    func soru1(derece :Double) -> Double {
        return derece * 1.8 + 32.0
    }
    //Dikdortgen cevre hesabi
    func soru2(kisaKenar :Double , uzunKenar :Double){
        print("Dikdorgenin cevresi : \(2 * (kisaKenar + uzunKenar))")
    }
    //Faktoriyel
    func soru3(sayi :Int) -> Int {
        var carpim = 1
        for i in 1...sayi {
            carpim *= i
        }
        return carpim
    }
    //Kelimedeki harf sayisi
    func soru4(kelime :String , harf :Character){
        var sayac = 0
        for i in kelime {
            if i == harf{
                sayac += 1
            }
        }
        print("\(kelime) kelimesinde \(sayac) tane \(harf) harfi vardir")
    }
    //Ic aci toplami
    func soru5(kenarSayisi :Int) -> Int{
        return (kenarSayisi-2) * 180
    }
    //Maas hesabi
    func soru6(gunSayisi :Int) -> Double {
        var sonuc = 0.0
        if gunSayisi <= 20 {
             sonuc = Double(gunSayisi) * 10.0
        }
        if gunSayisi > 20 {
             sonuc = 2000.0 + Double((gunSayisi - 20) * 20)
        }
        return sonuc
    }
    //Internet ucreti
    func soru7(kotaMiktari :Int) -> Int {
        var sonuc = 0
        if kotaMiktari <= 50 {
            sonuc = 100
        }
        if kotaMiktari > 50 {
            sonuc = 100 + (kotaMiktari-50) * 4
        }
        return sonuc
    }
}
let o = Odev()

//Soru 1
let fahrenhiet = o.soru1(derece: 42.0)
print("Fahrenhiet degeri : \(fahrenhiet)")

//Soru 2
o.soru2(kisaKenar: 20.0, uzunKenar: 30.0)

//Soru 3
let faktoriyel = o.soru3(sayi: 4)
print("Faktoriyel sonucu : \(faktoriyel)")

//Soru 4
o.soru4(kelime: "merhaba", harf: "a")

//Soru 5
let icAci = o.soru5(kenarSayisi: 3)
print("Ic aci toplami : \(icAci)")


//Soru 6
let maas = o.soru6(gunSayisi: 20)
print("Hesaplanan maas :\(maas)")

//Soru 7
let toplamUcret = o.soru7(kotaMiktari: 100)
print("Toplam Ucret : \(toplamUcret) ₺")
