/**Burada veri türü belirtilebilir ama istege baglidir, yani belirtilmesede olur.
 * En öneli fark ise instance degiskenlier sadece final olarak tanimlanir, const ile tanimlanmaz.
 *  IMMUTABLE degismez.
 * 
 * final degerleri= runtime zamaninda devreye girecektir.
 * const degerler = compile esnasinda bile veri degisikligi olabilir.
 */
void main(List<String> args) {
  var str = "Servet"; // str referansi Servet adinda string ifadeyi gosteriyor
  str =
      "AKCADAG"; // str artik referans oalrak AKCADAG string ifadesini gosteriyor

  final String str2 = "Servet";
  // str2 = "Akcadag"; //str2 degistirilemez durumda oldugu icin hata verecektir.
  const String str3 = "Kahramanmaras"; // sabit degger degistirilemez

  final tarih = DateTime.now(); // runtime zamaninda devreye girecektir.
  // const tarih2=DateTime.now(); // runtime zamaninda devreye girecektir. bu yüzden kod satiri hata verecektir.

  final liste1 = [1, 2, 3];
  final liste2 = [1, 2, 3];
  if (liste1 == liste2) {
    print("ESIT");
  } else {
    print(
        "esit DEGIL!"); // bellekteki referans adresleri farkli oldugu icin esit degil
  }
  // final tanilmanirsa listeye eleman eklenir 
  // const tanimlanirsa liseteye elemanekleyemezsiniz
  print("---------------------");
  const liste3 = [1, 2, 3];
  const liste4 = [1, 2, 3];
  if (liste3 == liste4) {
    print("ESIT"); // bellekteki referans adreslerini ve icini kiyaslar esit olacaktir.
  } else {
    print(
        "esit DEGIL!"); 
  }
}
