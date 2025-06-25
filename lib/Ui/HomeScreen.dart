import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami_app_c14/Core/AssetManager.dart';
import 'package:islami_app_c14/Core/ColorManager.dart';
import 'package:islami_app_c14/Core/StringManager.dart';
import 'package:islami_app_c14/Ui/Taps/HadithTap/Hadith.dart';
import 'package:islami_app_c14/Ui/Taps/QuranTap/Quran.dart';
import 'package:islami_app_c14/Ui/Taps/RadioTap/Radio.dart';
import 'package:islami_app_c14/Ui/Taps/SebhaTap/Sebha.dart';
import 'package:islami_app_c14/Ui/Taps/TimeTap/Time.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List<Widget> screens = [
    QuranScreen(),
    HadithScreen(),
    SebhaScreen(),
    RadioScreen(),
    TimeScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        //backgroundColor: ColorManager.primary,
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        indicatorColor: ColorManager.background.withOpacity(0.6),
        selectedIndex: selectedIndex,
          onDestinationSelected: (index){
          setState(() {
            selectedIndex = index;
          });
          },
          destinations: [
            NavigationDestination(
                icon: SvgPicture.asset(AssetManager.quranOff),
                selectedIcon: SvgPicture.asset(AssetManager.quranOn),
                label: StringManager.quran,
            ),
            NavigationDestination(
              icon: SvgPicture.asset(AssetManager.hadithOff),
              selectedIcon: SvgPicture.asset(AssetManager.hadithOn),
              label: StringManager.hadith,
            ),
            NavigationDestination(
              icon: SvgPicture.asset(AssetManager.sebhaOff),
              selectedIcon: SvgPicture.asset(AssetManager.sebhaOn),
              label: StringManager.sebha,
            ),
            NavigationDestination(
              icon: SvgPicture.asset(AssetManager.radioOff),
              selectedIcon: SvgPicture.asset(AssetManager.radioOn),
              label: StringManager.radio,
            ),
            NavigationDestination(
              icon: SvgPicture.asset(AssetManager.timeOff),
              selectedIcon: SvgPicture.asset(AssetManager.timeOn),
              label: StringManager.time,
            ),
          ]
      ),
      body: screens[selectedIndex],
    );
  }
}
/*BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorManager.primary,
         selectedItemColor: ColorManager.white,
         showUnselectedLabels: false,
         showSelectedLabels: true,
         unselectedItemColor: Colors.black,
         //selectedFontSize: 16,
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 12,
        ),
         currentIndex: selectedIndex,
          onTap: (index){
          setState(() {
            selectedIndex = index;
          });
          },
          items: [
            BottomNavigationBarItem(

                icon: SvgPicture.asset(AssetManager.quranOff),
              activeIcon: SvgPicture.asset(AssetManager.quranOn),
              backgroundColor: ColorManager.background,
              label: StringManager.quran,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AssetManager.hadithOff),
              activeIcon: SvgPicture.asset(AssetManager.hadithOn),
              backgroundColor: ColorManager.background,
              label: StringManager.hadith,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AssetManager.sebhaOff),
              activeIcon: SvgPicture.asset(AssetManager.sebhaOn),
              backgroundColor: ColorManager.background,
              label: StringManager.sebha,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AssetManager.radioOff),
              activeIcon: SvgPicture.asset(AssetManager.radioOn),
              backgroundColor: ColorManager.background,
              label: StringManager.radio,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AssetManager.timeOff),
              activeIcon: SvgPicture.asset(AssetManager.timeOn),
              backgroundColor: ColorManager.background,
              label: StringManager.time,
            ),
          ],
      )*/