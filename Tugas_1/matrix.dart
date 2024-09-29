import 'dart:io';
void main(){


  print("inputkan angka matrix yang diinginkan");
  print("matrix A (jumlah baris):");
  int A = int.parse(stdin.readLineSync()!);
  print("matrix B (jumlah kolom):");
  int B = int.parse(stdin.readLineSync()!);

  List<List<int>> matrix = List.generate(A, (i) => List.filled(B, 0));

  for (int i = 0; i < A; i++) {
    for (int j = 0; j < B; j++) {
      print("masukkan nilai matrix [$i][$j]:");
      matrix[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  print("Matriks yang terbentuk:");
  for (int i = 0; i < A; i++) {
    print(matrix[i]);
  }

  // matrix transpose
  List<List<int>> transpose = List.generate(B, (j) => List.filled(A, 0));
  for (int i = 0; i < A; i++) {
    for (int j = 0; j < B; j++) {
      transpose[j][i] = matrix[i][j];
    }
  }
  print("Transpose matriks:");
  for (int i = 0; i < B; i++) {
    print(transpose[i]);
  }
  
}