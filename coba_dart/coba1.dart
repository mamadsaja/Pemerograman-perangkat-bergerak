import 'dart:io';
void main(){
  print('hallow world');

  print('day1 i learn darts');


  // var i = -8;
  // if (i>0) {
  //   print("positive");
  // } else if (i==0) {
  //     print("zero");
  // } else {
  //     print("negative");
  // }

  
  print("masukkan nama anda:");
  String? name = stdin.readLineSync();
  print("Hello, $name :) \nSelamat datang");

  print("masukkan angka yang anda inginkan :");
  int num = int.parse(stdin.readLineSync()!);
  if(num == 2){
    print("anda memasukkan angka nomor 2");
  }
  else if( num == 1){
    print("anda memasukkan angka nomor 1");
  }
  else{
    print("anda memasukkan angka selain 1 dan 2");
  }

  // print("masukkan angka yang ingin anda hitung");
  // print("masukkan angka pertama :");
  // int num1 = int.parse(stdin.readLineSync()!);
  // print("masukkan angka kedua :");
  // int num2 = int.parse(stdin.readLineSync()!);
  // print("jenis perhitungan (+, -, *, /) :");
  // String op = stdin.readLineSync()!;
  // if(op == '+'){
  //   print("Hasil penjumlahan : ${num1+num2}");
  // }
  // if(op == '-'){
  //   print("Hasil pengurangan : ${num1-num2}");
  // }
  // if(op == '*'){
  //   print("Hasil perkalian : ${num1*num2}");
  // }
  // if(op == '/'){
  //   if(num2 == 0){
  //     print("Error! Kedua angka kedua harus bernilai 0");
  //   }
  //   else{
  //     print("Hasil pembagian : ${num1/num2}");
  //   }
  // }
  // else{
  //   print("Operator perhitungan yang anda masukkan tidak tersedia");
  // }

    print("masukkan angka yang ingin anda hitung");
  print("masukkan angka pertama :");
  int num3 = int.parse(stdin.readLineSync()!);
  print("masukkan angka kedua :");
  int num4 = int.parse(stdin.readLineSync()!);
  print("jenis perhitungan (+, -, *, /) :");
  String opp = stdin.readLineSync()!;
  switch(opp){
    case '+' : 
      print("Hasil penjumlahan : ${num3+num4}");
      break;
    case '-' :
      print("Hasil pengurangan : ${num3-num4}");
      break;
    case '*' :
      print("Hasi perhitungan : ${num3*num4}");
      break;
    case '/' :
      print("Hasil pembagian : ${num3/num4}");
      break;
  }


  // var bil = 'tile';
 	// switch (bil) {
	// 	case 0 :
	// 		print("zero");
	// 		break;
	// 	case 2 :
	// 		print("two");
	// 		break;
  //   case 10 :
  //     print("ten");
  //     break;
  //   case 200 :
  //     print("Kawal TAK!!!");
  //     break;
	// 	default : 
	// 		print("other");
  //     break;
   
	// }

  // // var i=0 ;
	// // while (i<5000) {
	// // 	print("loop $i");
	// // 	i++;
	// // }

  // // var i=0;
  // //   do {
  // //       print("loop $i");
  // //       i++;
  // //     } while (i<800000);

  // for (var a=1;a<7;a++) {
	// 	print("heading $a");
  // }

  // var dic = [12,13,14,15,16,17,]; 
  // var pit = [0,1,2,3,4,5,6,7];
  //   for (var situ in dic) { 
  //     print(situ); 
  //   }
  //   for (var tru in pit){
  //     print(tru);
  //   }




}