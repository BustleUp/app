import 'package:flutter/material.dart';
import 'package:kiib/config/color_constants.dart';
import 'package:kiib/config/theme_config.dart';
import 'package:kiib/features/home/presentation/widgets/card_frame.dart';
import 'package:kiib/features/home/presentation/widgets/header.dart';
import 'package:kiib/features/home/presentation/widgets/quick_action_menu.dart';
import 'package:kiib/features/home/presentation/widgets/transaction_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
          child: Padding(
        padding: HomeScreenPadding,
        child: const Column(
          children: [
            Header(),
            CardFrame(),
            QuickActionMenu(),
            Expanded(child: RecentTransactions())
          ],
        ),
      )),
    );
  }
}
