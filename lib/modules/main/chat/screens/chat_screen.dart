import 'package:elite_commerce/common/widgets/bottom_bar/bottom_bar.dart';
import 'package:elite_commerce/custom/styles.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const KBottomBar(
        pageIndex: 1,
      ),
      body: Center(
        child: Text(
          'Chat Screen',
          style: kBlackStyle.copyWith(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
