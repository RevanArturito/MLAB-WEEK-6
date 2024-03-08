// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:brokoli/app/modules/profile_page/views/profile_page_view.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/ubah_profile_controller.dart';

class UbahProfileView extends GetView<UbahProfileController> {
  final _namaEditingController = TextEditingController();
  final _emailEditingController = TextEditingController();
  final _alamatEditingController = TextEditingController();
  final _noTelpEditingController = TextEditingController();

  void handleUpdateTodo() {
    final newProfileData = {
      'nama' : _namaEditingController.text,
      'email' : _emailEditingController.text,
      'alamat' : _alamatEditingController.text,
      'no_telepon' : _noTelpEditingController.text,
    };
    FirebaseFirestore.instance.collection('profile_data').doc('GBKvQB8KrRMebNaVAPeG').update(newProfileData);
    _namaEditingController.text = "";
    _noTelpEditingController.text = "";
    _alamatEditingController.text = "";
    _emailEditingController.text = "";
    Get.back();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed:  () => Navigator.of(context).pop(
              MaterialPageRoute(
                builder: (context) => ProfilePageView(),
              ),
            ), 
          icon: Icon(Icons.arrow_back, color: Colors.white)
        ),
        backgroundColor: Color(0xFF62C172),
        toolbarHeight: 136,
        title: Text('Ubah Profil', 
          style: GoogleFonts.poppins(
            color : Colors.white,
            fontWeight:FontWeight.bold
          )
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child : Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 24),
            Center(
              child : Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset('assets/images/PpBulat.png', scale: 4),
                  Opacity(
                    opacity: 0.4,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.black,
                    ), 
                  ),
                   Image.asset('assets/images/camera.png', color: Colors.white, scale: 0.8),
                ],
              )
            ),
            SizedBox(height: 36),
            Text(
              "Nama Lengkap", 
              style: GoogleFonts.poppins(
                fontSize: 15,
                color: Color(0xFFAAAAAA),
            )),           
            SizedBox(
              width: double.infinity,
              child: TextField(
                controller: _namaEditingController,
                decoration: InputDecoration(
                  isDense: true,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.5))
                  ),
                ),
                style: TextStyle(fontSize: 15.0, height: 1, color: Colors.black),
              ),
            ),
            SizedBox(height: 12),
            Text(
              "Email", 
              style: GoogleFonts.poppins(
                fontSize: 15,
                color: Color(0xFFAAAAAA),
            )),           
            SizedBox(
              width: double.infinity,
              child: TextField(
                controller: _emailEditingController,
                decoration: InputDecoration(
                  isDense: true,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.5))
                  ),
                ),
                style: TextStyle(fontSize: 15.0, height: 1, color: Colors.black),
              ),
            ),
            SizedBox(height: 12),
            Text(
              "Alamat", 
              style: GoogleFonts.poppins(
                fontSize: 15,
                color: Color(0xFFAAAAAA),
            )),           
            SizedBox(
              width: double.infinity,
              child: TextField(
                controller: _alamatEditingController,
                decoration: InputDecoration(
                  isDense: true,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.5))
                  ),
                ),
                style: TextStyle(fontSize: 15.0, height: 1, color: Colors.black),
              ),
            ),
            SizedBox(height: 12),
            Text(
              "Nomor Telepon", 
              style: GoogleFonts.poppins(
                fontSize: 15,
                color: Color(0xFFAAAAAA),
            )),           
            SizedBox(
              width: double.infinity,
              child: TextField(
                controller: _noTelpEditingController,
                decoration: InputDecoration(
                  isDense: true,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.5))
                  ),
                ),
                style: TextStyle(fontSize: 15.0, height: 1, color: Colors.black),
              ),
            ),
            SizedBox(height: 176),
            Center(
              child: GestureDetector(
                onTap: () {handleUpdateTodo();},
                child: Container(
                  width: 164,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Color(0xFF74DA74),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text("Simpan", 
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16
                      )
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      )
    );
  }
}
