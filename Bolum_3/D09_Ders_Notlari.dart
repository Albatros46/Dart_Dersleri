void main(List<String> args) {
  // Koleksiyonlar, map ve set ler iterable den türetelmektedir, bunun icin asagidaki gibi kullanim sekilleri de bulunmaktadir.
  var liste1 = <String>[]; //kisa kullanim sekli
  var mySet = <int>{12, 36, 45};
  var myMap = <int, Object>{
    1: "Servet"
  }; // object yerine "dynamic" de yayzilabilir

//------------------------
  var tekSayilar = [1, 3, 5, 7, 9, 11, 15];
  print("Tek Sayilar :$tekSayilar");
  var ciftSayilar = [8, 6, 4, 2];
  print("Cift Sayilar :$ciftSayilar");
  var sonListe = [];
  print("Son Liste 0 :$sonListe");
  sonListe.addAll(tekSayilar);
  print("Son Liste 1 :$sonListe");
  sonListe.add(ciftSayilar);
  print("Son Liste 2 :$sonListe");
  //------------------------
  // addAll kisa yondetmi
  print("---------------------------");
  var sonliste2 = [
    tekSayilar,
    ciftSayilar
  ]; // iki listeyi bir liste icinde ayri ayri liste olarak gosterecek
  print(sonliste2);
  // spreads operator yontemi ile iki farkli listeyi tek liste olrak kisa yontemle yazdiracagiz
  var sonliste3 = [...tekSayilar, ...ciftSayilar];
  print(sonliste3);
  print("-------------------");
  //Map lerde kullanim
  var map1 = {
    34: "istanbul"
  }; //<int,String>, <int,Object>, <int,dynamic> seklinde de belirtilir
  var map2 = {
    "Istanbul": "Atasehir"
  }; //<String,String>, <String,Object>, <String,dynamic>
  var sonMap = {...map1, ...map2};
  print(sonMap);
  print("---------------------");
  //Set lerde Kullanim
  var set1 = {"Servet"};
  var set2 = {"Ahmet"};
  var set3 = {"Akif"};
  var set4 = {"Oguz"};
  var sonSet = {...set1, ...set2, ...set3, ...set4};
  print(sonSet);
}
