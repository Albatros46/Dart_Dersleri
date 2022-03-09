import 'dart:io';

void main(List<String> args) {
  print("Adinizi Giriniz :");
  String? isim = stdin.readLineSync();
  print("Yasiniz Giriniz :");
  int? yas = int.parse(stdin.readLineSync()!);//! isareti ile null deger olmayacagini belirtiyoruz yoksa hata veriyor.
  print("Adiniz :$isim"); 
  print("Yasiniz :$yas");
}
/**
 * launch.json  dosyasina bu sekilde yapilirsa aktif dosya calistirilacaktir.
     {
            "name": "Dart & Flutter",
            "request": "launch",
            "type": "dart",
            "program": "${file}",
            "console": "terminal" //program her calismada terminalden calisacak
        }
 */