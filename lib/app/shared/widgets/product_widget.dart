// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Product extends StatelessWidget {
  final String nama;
  final bool status;
  final String id;
  final void Function(String) onDelete;
  const Product({
    super.key,
    required this.nama,
    required this.status,
    required this.onDelete,
    required this.id,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 204,
      width: 164,
      decoration: BoxDecoration(
        color: Color(0xFFD1F3D1),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        children: [
          SizedBox(
            height: 18,
          ),
          Image.asset(
            'assets/images/brokoli.png',
            scale:4,
          ),
          SizedBox(height: 10),
          Container(
            height: 131,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 20.0, top: 10, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nama,
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                    status
                    ? Text('Selesai', 
                      style: GoogleFonts.poppins(
                        color: Color(0xFF3AAE4E),
                        textStyle : TextStyle(fontSize: 12)
                      )) 
                    : Text('Proses', 
                      style: GoogleFonts.poppins(
                        color: Color(0xFFF99500),
                        textStyle : TextStyle(fontSize: 12)
                      )),
                 
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {onDelete(id);},
                        child: Container(
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Icon(Icons.delete, size: 17, color: Colors.white)
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {print('tes');},
                        child: Container(
                          width: 68,
                          height: 28,
                          decoration: BoxDecoration(
                            color: Color(0xFF74DA74),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text('Detail',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                textStyle : TextStyle(fontSize: 12)
                              )
                            )
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
    
    }
  }
