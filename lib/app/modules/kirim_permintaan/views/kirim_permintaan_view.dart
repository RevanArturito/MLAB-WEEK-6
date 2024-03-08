// ignore_for_file: prefer_const_constructors

import 'package:brokoli/app/modules/produk_page/views/produk_page_view.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/kirim_permintaan_controller.dart';

class KirimPermintaanView extends GetView<KirimPermintaanController> {
  final _textEditingController = TextEditingController();

  void handleCreateTodo() {
    final newProduct = {
      'nama' : _textEditingController.text,
      'status' : false,
    };
    FirebaseFirestore.instance.collection('product_data').doc().set(newProduct);
    _textEditingController.text = "";
    Get.back();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Color(0xFFf3faf3),
      appBar: AppBar(
        backgroundColor: Color(0xFF62C172),
        toolbarHeight: 86, 
        title: Text(
          "Kirim Permintaan",
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed:  () => Navigator.of(context).pop(
              MaterialPageRoute(
                builder: (context) => ProdukPageView(),
              ),
            ), 
          icon: Icon(Icons.arrow_back),
          color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text("Foto Produk",
              style: GoogleFonts.poppins (
                textStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                )
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 76,
              width: 76,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.green),
                color: Colors.white
              ),
              child: Center(
                child: Image.asset('assets/images/camera.png', color: Colors.green),
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Nama Produk", 
              style: GoogleFonts.poppins(
                fontSize: 15,
                textStyle  : TextStyle(
                  fontWeight: FontWeight.bold
                ),
            )),
            SizedBox(height: 7),
            SizedBox(
              width: double.infinity,
              child: TextField(
                controller: _textEditingController,
                decoration: InputDecoration(
                  isDense: true,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.5))
                  ),
                ),
                style: TextStyle(fontSize: 15.0, height: 1, color: Colors.black),
              ),
            ),
            SizedBox(height: 13),
            Text(
              "Deskripsi Produk", 
              style: GoogleFonts.poppins(
                fontSize: 15,
                textStyle  : TextStyle(
                  fontWeight: FontWeight.bold
                ),
            )),
            SizedBox(height: 7),
            Text(
              'Produk fresh dan menyenangkan.', 
              style: GoogleFonts.poppins(
                fontSize: 13,
                color: Color(0xFF000000),
                
            )),
            SizedBox(height: 5),
            Divider(color: Colors.grey,thickness: 0.5),
            SizedBox(height: 5),
             Text(
              "Kategori", 
              style: GoogleFonts.poppins(
                fontSize: 15,
                textStyle  : TextStyle(
                  fontWeight: FontWeight.bold
                ),
            )),
            SizedBox(height: 7),
            Text(
              'Sayuran', 
              style: GoogleFonts.poppins(
                fontSize: 13,
                color: Color(0xFF000000),
                
            )),
            SizedBox(height: 5),
            Divider(color: Colors.grey,thickness: 0.5),
            SizedBox(height: 5),
             Text(
              "Harga", 
              style: GoogleFonts.poppins(
                fontSize: 15,
                textStyle  : TextStyle(
                  fontWeight: FontWeight.bold
                ),
            )),
            SizedBox(height: 7),
            Text(
              'Rp. 50.000,-', 
              style: GoogleFonts.poppins(
                fontSize: 13,
                color: Color(0xFF000000),
                
            )),
            SizedBox(height: 5),
            Divider(color: Colors.grey,thickness: 0.5),
            SizedBox(height: 5),
            Text(
              "Jumlah", 
              style: GoogleFonts.poppins(
                fontSize: 15,
                textStyle  : TextStyle(
                  fontWeight: FontWeight.bold
                ),
            )),
            SizedBox(height: 7),
            Text(
              '1', 
              style: GoogleFonts.poppins(
                fontSize: 13,
                color: Color(0xFF000000),
                
            )),
            SizedBox(height: 5),
            Divider(color: Colors.grey,thickness: 0.5),
            SizedBox(height: 5),
            Text(
              "Durasi Tahan", 
              style: GoogleFonts.poppins(
                fontSize: 15,
                textStyle  : TextStyle(
                  fontWeight: FontWeight.bold
                ),
            )),
            SizedBox(height: 7),
            Text(
              '2 - 4 Hari', 
              style: GoogleFonts.poppins(
                fontSize: 13,
                color: Color(0xFF000000),
                
            )),
            SizedBox(height: 5),
            Divider(color: Colors.grey,thickness: 0.5),
            SizedBox(height: 5),
            Text(
              "Berat", 
              style: GoogleFonts.poppins(
                fontSize: 15,
                textStyle  : TextStyle(
                  fontWeight: FontWeight.bold
                ),
            )),
            SizedBox(height: 7),
            Text(
              'Dalam gram (contoh : 500gr untuk 1 ikat)', 
              style: GoogleFonts.poppins(
                fontSize: 13,
                color: Color(0xFF000000),
                
            )),
            Text(
              '500', 
              style: GoogleFonts.poppins(
                fontSize: 13,
                color: Color(0xFF000000),
                
            )),
            SizedBox(height: 5),
            Divider(color: Colors.grey,thickness: 0.5),
            SizedBox(height: 30),

            GestureDetector(
              onTap: () {handleCreateTodo();},
              child: Container(
                width: double.infinity,
                height: 52,
                decoration: BoxDecoration(
                  color: Color(0xFF74DA74),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text('Kirim',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      textStyle : TextStyle(
                        fontSize: 18
                      )
                    )
                  )
                ),
              ),
            ),

          ],         
        ),
      )
    );
  }
}
