import 'dart:io';
void main(){
  List<List<int>> matrix = [
    [for (int i = 1; i <= 3; i++) i * 10], // beris kelipatan 5
    [for (int i = 1; i <= 4; i++) i * 8], // baris bilangan genap
    [for (int i = 1; i <= 5; i++) i * 12], // bilangan kuadrat
    [for (int i = 0; i <= 8; i++) i]      // bilangan asli mulai dari 3
  ];
  print("Isi List:");
  for (var row in matrix) {
    print(row.join(' '));
  }

  print("masukkan angka :");
  int number = int.parse(stdin.readLineSync()!);  
  int cari = number; 
  print("\nBilangan yang dicari: $cari");

  cariNilai(matrix, cari);
}

void cariNilai(List<List<int>> matrix, int nilai) {
  for (int i = 0; i < matrix.length; i++) {
    for (int j = 0; j < matrix[i].length; j++) {
      if (matrix[i][j] == nilai) {
        print("$nilai berada di: baris ${i + 1} kolom ${j + 1}");
        return;
      }
    }
  }
  print("$nilai tidak ditemukan dalam List.");
}