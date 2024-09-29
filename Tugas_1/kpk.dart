import 'dart:io';
void main(){

  print("masukkan bilangan pertama:");
  int num1 = int.parse(stdin.readLineSync()!);
  print("masukkan bilangan kedua:");
  int num2 = int.parse(stdin.readLineSync()!);
  
  int hasil = hitung(num1, num2);

  print("KPK $num1 dan $num2 = $hasil");
}
  int hitung(int a, int b){
    while(b!= 0){
      int c = b;
      b = a % b;
      a = c;
    }
    return a;
  }