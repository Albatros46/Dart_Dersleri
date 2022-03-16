void main(List<String> args) {
  BinekArac binek1 = BinekArac("Toyota", "Avensis", "Benzin", true, 120000);
  binek1.Calistir();
  binek1.AracBilgileri();

  MotorluTasit motor1 = MotorSiklet("Suzuki", "Fast", "800");
  motor1.Calistir();
}

class MotorluTasit {
  String marka;
  String model;
  String yakit;

  MotorluTasit(this.marka, this.model, this.yakit);
  void Calistir() {
    print("Arac Calistirildi...");
  }
}

class BinekArac extends MotorluTasit {
  bool otomatik;
  int km;
  BinekArac(
      String markasi, String modeli, String yakiti, this.otomatik, this.km)
      : super(markasi, modeli, yakiti);
  void AracBilgileri() {
    print("___Arac Bilgileri___");
    print("Markasi $marka modeli $model otomatik $otomatik $km km");
  }
}

class MotorSiklet extends MotorluTasit {
  String cc;
  MotorSiklet(String mark, String mod, this.cc) : super(mark, mod, cc);
  @override
  void Calistir() {
    super.Calistir();
    print("$marka motorum modeli ise $model $cc gucunde");
  }
}
