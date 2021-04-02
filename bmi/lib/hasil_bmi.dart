import 'package:flutter/material.dart';
import 'dart:math';
//import 'about_me.dart';

class BMIResult extends StatelessWidget {
  BMIResult(
      // ignore: non_constant_identifier_names
      {@required this.tinggi_badan,
      // ignore: non_constant_identifier_names
      @required this.berat_badan,
      // ignore: non_constant_identifier_names
      @required this.nama_lengkap,
      // ignore: non_constant_identifier_names
      @required this.tahun_lahir,
      // ignore: non_constant_identifier_names
      @required this.bulan_lahir,
      // ignore: non_constant_identifier_names
      @required this.tanggal_lahir,
      // ignore: non_constant_identifier_names
      @required this.jk});

  final int tinggi_badan; // ignore: non_constant_identifier_names
  final int berat_badan; // ignore: non_constant_identifier_names
  final int tahun_lahir; // ignore: non_constant_identifier_names
  final int bulan_lahir; // ignore: non_constant_identifier_names
  final int tanggal_lahir; // ignore: non_constant_identifier_names
  final String nama_lengkap; // ignore: non_constant_identifier_names
  final String jk; // ignore: non_constant_identifier_names

  @override
  Widget build(BuildContext context) {
    double bmi = berat_badan / pow(tinggi_badan / 100, 2);
    String cBMI;
    if (bmi >= 28)
      cBMI = "Obesitas";
    else if (bmi >= 23)
      cBMI = "Gemuk";
    else if (bmi >= 17.5)
      cBMI = "Normal";
    else
      cBMI = "Kurus";

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Hasil BMI'),
      ),
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20,
              child: Container(
                color: Colors.white,
              ),
            ),
            new Text(
              "Nama: $nama_lengkap",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.black87),
            ),
            SizedBox(
              height: 10,
              child: Container(
                color: Colors.white,
              ),
            ),
            new Text(
              "Umur: ${2021 - tahun_lahir} Tahun",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.black87),
            ),
            SizedBox(
              height: 10,
              child: Container(
                color: Colors.white,
              ),
            ),
            new Text(
              "Bulan: $bulan_lahir",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.black87),
            ),
            SizedBox(
              height: 10,
              child: Container(
                color: Colors.white,
              ),
            ),
            new Text(
              "Tanggal: $tanggal_lahir",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.black87),
            ),
            SizedBox(
              height: 10,
              child: Container(
                color: Colors.white,
              ),
            ),
            new Text(
              "Jenis Kelamin: $jk",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.black87),
            ),
            SizedBox(
              height: 20,
              child: Container(
                color: Colors.white,
              ),
            ),
            Text(
              cBMI,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            Text(
              bmi.toStringAsFixed(2),
              style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
            Text(
              'Jangkauan Normal BMI',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black54,
              ),
            ),
            Text(
              '17,5 - 22.9',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
