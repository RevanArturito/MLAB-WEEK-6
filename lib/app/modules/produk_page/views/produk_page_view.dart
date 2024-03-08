// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, curly_braces_in_flow_control_structures


import 'package:brokoli/app/shared/widgets/product_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/produk_page_controller.dart';

class ProdukPageView extends GetView<ProdukPageController> {
 // ProdukPageController  produkPageController =Get.put(ProdukPageController());

  void handleDeleteTodo(String id) {
    FirebaseFirestore.instance.collection('product_data').doc(id).delete();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf3faf3),
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              "List Produk",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 18),
            TextField(
              decoration: InputDecoration(
                filled: true,
                hintText: 'Cari Produk',
                hintStyle: TextStyle(color: Colors.grey),
                suffixIcon: Image.asset('assets/images/search-normal.png', scale : 4),
                fillColor: Colors.white,
                isDense: true,
                contentPadding: const EdgeInsets.only(
                  left: 14.0, bottom: 8.0, top: 8.0
                ),
                border: OutlineInputBorder(
                  borderSide:  BorderSide.none,
                  borderRadius: BorderRadius.circular(12),
                ),
            ),
            ),
          ],
        ),
        backgroundColor: Color(0xFF62C172),
        toolbarHeight: 140, 
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
          .collection('product_data')
          .snapshots(), 
        builder: (context, snapshot) {
          var document = snapshot.data!.docs;
          if(snapshot.connectionState == ConnectionState.waiting) {
            return Text("Mohon tunggu..");
          } 
  
          if (!snapshot.hasData) {
            return Text("Tidak ada data");
          }

          return GridView.builder(
            padding: EdgeInsets.all(16),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 3/4,
              ),
              itemCount: document.length,
              itemBuilder: (BuildContext context, int index ) {
                  return Product(
                    nama: document[index].data()['nama'], 
                    status: document[index].data()['status'], 
                    id: document[index].id,
                    onDelete: handleDeleteTodo
                  );
              },
          );
        }
      )
    );
  }
}
