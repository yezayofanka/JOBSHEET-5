import 'package:flutter/material.dart';

class Mahasiswa {
  final String nama;
  final String nim;

  Mahasiswa({required this.nama, required this.nim});
}

class DaftarAbsensi extends StatelessWidget {
  final List<Mahasiswa> daftarMahasiswa;

  DaftarAbsensi({required this.daftarMahasiswa});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Absensi'),
      ),
      body: ListView.builder(
        itemCount: daftarMahasiswa.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(daftarMahasiswa[index].nama),
            subtitle: Text(daftarMahasiswa[index].nim),
          );
        },
      ),
    );
  }
}

void main() {
  List<Mahasiswa> daftarMahasiswa = [
    Mahasiswa(nama: 'Rizka nur kharifah', nim: 'STI202102431'),
    Mahasiswa(nama: 'linda senja anggraeni', nim: 'STI202102433'),
    Mahasiswa(nama: 'Yeza Yofanka', nim: 'STI202102443'),
    Mahasiswa(nama: 'Dwi septi lutfiana', nim: 'STI202102449'),
    Mahasiswa(nama: 'Nanda wiasti', nim: 'STI202102461'),
  ];

  runApp(MaterialApp(
    home: DaftarAbsensi(daftarMahasiswa: daftarMahasiswa),
  ));
}