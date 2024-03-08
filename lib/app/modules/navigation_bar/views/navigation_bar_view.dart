// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:brokoli/app/modules/home/views/home_view.dart';
import 'package:brokoli/app/modules/kirim_permintaan/views/kirim_permintaan_view.dart';
import 'package:brokoli/app/modules/produk_page/views/produk_page_view.dart';
import 'package:brokoli/app/modules/profile_page/views/profile_page_view.dart';
import 'package:brokoli/app/modules/riwayat_page/views/riwayat_page_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/navigation_bar_controller.dart';

class NavigationBarView extends GetView<NavigationBarController> {
  NavigationBarController navigationBarController = Get.put(NavigationBarController());
  @override
  Widget build(BuildContext context) {
      return GetBuilder<NavigationBarController>(builder: (controller) {
        return Scaffold(
        body: SafeArea(
          child: IndexedStack(
          index: controller.tabIndex,
          children: [
            HomeView(),
            ProdukPageView(),
            RiwayatPageView(),
            ProfilePageView()
          ],
        )),
        floatingActionButton: controller.tabIndex == 1
        ? FloatingActionButton(
         onPressed:() => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) =>  KirimPermintaanView(),
            )
          ),
          shape: CircleBorder(),
          child: Image.asset('assets/images/add.png'),
          backgroundColor: Color(0xFF62C172),
        )
        : null,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        bottomNavigationBar : BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          selectedFontSize: 14,
          showUnselectedLabels: false,
          selectedItemColor: Colors.green,
          onTap: (index) {controller.changeTab(index);},
          currentIndex: controller.tabIndex,
          type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/home-2.png', 
              scale: 4.2
            ), 
            label : "Home", 
            activeIcon: Image.asset(
              'assets/images/home-2.png', 
              scale: 4.2, 
              color: Colors.green
            )
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/fruit.png', 
              scale: 4
            ), 
            label : "Products",
            activeIcon: Image.asset(
              'assets/images/fruit.png', 
              scale: 4, 
              color: Colors.green
            )
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/transaction-minus.png', 
              scale: 4.4,
            ), 
            label : "Riwayat", 
            activeIcon: Image.asset(
              'assets/images/transaction-minus.png', 
              color: Colors.green, 
              scale: 4
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined), 
            label : "Profile", 
            activeIcon: Icon(Icons.account_circle_outlined, 
              color: Colors.green
            )
          ),
         ],
        ),
      );
    });
  }
}