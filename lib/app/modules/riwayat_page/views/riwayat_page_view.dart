import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/riwayat_page_controller.dart';

class RiwayatPageView extends GetView<RiwayatPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RiwayatPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'RiwayatPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
