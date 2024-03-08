// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:brokoli/app/modules/profile_page/views/profile_page_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/ubah_password_controller.dart';

class UbahPasswordView extends GetView<UbahPasswordController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf3faf3),
      appBar: AppBar(
        backgroundColor: Color(0xFF62C172),
        toolbarHeight: 86, 
        title: Text(
          "Ubah Password",
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed:  () => Navigator.of(context).pop(
              MaterialPageRoute(
                builder: (context) => ProfilePageView(),
              ),
            ), 
          icon: Icon(Icons.arrow_back),
          color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 36),
            Text(
              "Password Lama", 
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: Color(0xFFAAAAAA),
            )),           
            SizedBox(
              width: double.infinity,
              child: TextField(
                decoration: InputDecoration(
                  isDense: true,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.5))
                  ),
                ),
                style: TextStyle(fontSize: 15.0, height: 1, color: Colors.black),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Password Baru", 
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: Color(0xFFAAAAAA),
            )),           
            SizedBox(
              width: double.infinity,
              child: TextField(
                decoration: InputDecoration(
                  isDense: true,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.5))
                  ),
                ),
                style: TextStyle(fontSize: 15.0, height: 1, color: Colors.black),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Konfirmasi Password Baru", 
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: Color(0xFFAAAAAA),
              ),
            ),           
            SizedBox(
              width: double.infinity,
              child: TextField(
                decoration: InputDecoration(
                  isDense: true,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.5))
                  ),
                ),
                style: TextStyle(fontSize: 15.0, height: 1, color: Colors.black),
              ),
            ),
            SizedBox(height: 338),
            Center(
              child: GestureDetector(
                onTap: () => Navigator.of(context).pop(
                  MaterialPageRoute(
                    builder: (context) => ProfilePageView(),
                  ),
                ), 
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
              )
            ) 
          ],
        ),
      )
    );
  }
}
