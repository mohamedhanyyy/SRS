import 'package:flutter/material.dart';

class ViolationDetailsScreen extends StatefulWidget {
  const ViolationDetailsScreen({super.key});

  @override
  State<ViolationDetailsScreen> createState() => _ViolationDetailsScreenState();
}

class _ViolationDetailsScreenState extends State<ViolationDetailsScreen> {
  @override

  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(appBar: AppBar(),));
  }
}
