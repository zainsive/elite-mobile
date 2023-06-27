import 'package:elite_commerce/common/widgets/bottom_bar/bottom_bar.dart';
import 'package:elite_commerce/custom/styles.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const KBottomBar(
        pageIndex: 0,
      ),
      body: Center(
        child: Text(
          'Home Screen',
          style: kBlackStyle.copyWith(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
