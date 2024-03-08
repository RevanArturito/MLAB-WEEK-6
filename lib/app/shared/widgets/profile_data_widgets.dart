// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors


import 'package:brokoli/app/data/model/profile_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileData extends StatelessWidget {
  final ProfileModel profileModel;
  const ProfileData({
    super.key,
    required this.profileModel,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection('profile_data')
          .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Mohon tunggu...");
        }

        if (!snapshot.hasData) {
          return Text("Tidak ada data...");
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nama Lengkap", 
              style: GoogleFonts.poppins(
                fontSize: 15,
                color: Color(0xFFAAAAAA),
            )),
            SizedBox(height: 8),
            Text(
              snapshot.data!.docs.first['nama'], 
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: Color(0xFF000000),
            )),
            SizedBox(height: 16),
            Text(
              "Email", 
              style: GoogleFonts.poppins(
                fontSize: 15,
                color: Color(0xFFAAAAAA),
            )),
            SizedBox(height: 8),
            Text(
              snapshot.data!.docs.first['email'], 
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: Color(0xFF000000),
            )),
            SizedBox(height: 16),
            Text(
              "No Telepon", 
              style: GoogleFonts.poppins(
                fontSize: 15,
                color: Color(0xFFAAAAAA),
            )),
            SizedBox(height: 8),
            Text(
              snapshot.data!.docs.first['no_telepon'], 
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: Color(0xFF000000),
            )),
            SizedBox(height: 16),
            Text(
              "Alamat", 
              style: GoogleFonts.poppins(
                fontSize: 15,
                color: Color(0xFFAAAAAA),
            )),
            SizedBox(height: 8),
            Text(
              snapshot.data!.docs.first['alamat'], 
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: Color(0xFF000000),
            )),
            
          ],
        );  
      },
    );
  }
}