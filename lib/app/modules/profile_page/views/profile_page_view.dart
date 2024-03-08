// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:brokoli/app/modules/ubah_password/views/ubah_password_view.dart';
import 'package:brokoli/app/modules/ubah_profile/views/ubah_profile_view.dart';
import 'package:brokoli/app/shared/widgets/profile_data_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/profile_page_controller.dart';

class ProfilePageView extends GetView<ProfilePageController> {
  //ProfilePageController profilePageController= Get.put(ProfilePageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf3faf3),
      appBar: AppBar(
        backgroundColor: Color(0xFF62C172),
        toolbarHeight: 136, 
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 1),
          child:  StreamBuilder(
            stream:
                FirebaseFirestore.instance.collection('profile_data').snapshots(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Text("Mohon tunggu...");
              }

              if (!snapshot.hasData) {
                return Text("Tidak ada data...");
              }
                
            return Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/Pp.png'),
                radius: 40,
              ),
              SizedBox(width: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(snapshot.data!.docs.first['nama'], 
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                    ),
                  ),
                  Text(snapshot.data!.docs.first['email'],
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              Spacer(),
              IconButton(
                onPressed:() => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>  UbahProfileView(),
                  )
                ),
                  icon: Image.asset('assets/images/brushEdit.png', scale: 4)
              )
            ],
          );          
       })
      ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 36),
            ProfileData(profileModel: controller.profilemodel),
            SizedBox(height: 12),
            Divider(color: Colors.grey,thickness: 0.5),
            Text(
              "Keamanan", 
              style: GoogleFonts.poppins(
                fontSize: 15,
                color: Color(0xFF000000),
            )),
            SizedBox(height: 10),
            GestureDetector(
              onTap:() => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>  UbahPasswordView(),
                )
              ),
              child: Container(
                child: Row(
                  children: [
                    Text(
                      "Ubah Password", 
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: Color(0xFF000000),
                    )),
                    Spacer(),   
                    Icon(Icons.chevron_right_outlined),            
                  ],
                )
              ),
            ), 
            SizedBox(height: 10), 
            Divider(color: Colors.grey,thickness: 0.5),
            SizedBox(height: 36),
            GestureDetector(
              onTap: () {},
              child : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/logout.png', scale: 4),
                    SizedBox(width: 10),
                    Text("Logout Akun",
                      style: GoogleFonts.poppins()
                    )
                  ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
