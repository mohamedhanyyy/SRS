import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:srs/core/resources/colors.dart';
import 'package:srs/modules/profile/presentation/screens/profile_screen.dart';

import '../../../../services/notifications/firebase_notification.dart';
import '../../../violation/presentation/screens/violation_screen.dart';


class HomeScreen extends StatefulWidget {


  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  int currentIndex = 0;

  @override
  Future<void> didChangeDependencies() async {
    super.didChangeDependencies();
    if (!mounted) return;

    await FirebaseCustomNotification.setUpFirebase();

  }
  changeIndex(index) {
    currentIndex = index;
    setState(() {});
  }

  List<Widget> pages = [
    const ViolationScreen(),
    const ViolationScreen(),
    const ViolationScreen(),
    const ViolationScreen(),
    const ProfileScreen()
  ];
  List<String> titles = [
    'الرئيسية',
    'المخالفات',
    'الطلبات',
    'الإشعارات',
    'حسابي',
  ];
  List<String> icons = [
    'assets/icons/home.svg',
    'assets/icons/violation.svg',
    'assets/icons/orders.svg',
    'assets/icons/notif.svg',
    'assets/icons/profile.svg',
  ];
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: AppColors.grey,
            currentIndex: currentIndex,
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: const TextStyle(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w600,
                fontSize: 10),
            unselectedLabelStyle: const TextStyle(
                color: AppColors.grey2,
                fontSize: 10,
                fontWeight: FontWeight.w600),
            onTap: changeIndex,
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(icons[0]), label: titles[0]),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(icons[1]), label: titles[1]),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(icons[2]), label: titles[2]),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(icons[3]), label: titles[3]),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(icons[4]), label: titles[4]),
            ]),
        body: pages[currentIndex],
      ),
    );
  }
}
