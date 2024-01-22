import 'package:flutter/material.dart';
import 'package:kiib/config/color_constants.dart';
import 'package:kiib/config/theme_config.dart';
import 'package:kiib/features/home/presentation/widgets/my_code.dart';
import 'package:kiib/features/home/presentation/widgets/scan_code.dart';
import 'package:kiib/utils/app_bar.dart';

class ScanScreen extends StatelessWidget {
  const ScanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBarUtil(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: kBackgroundColor,
        body:  SafeArea(
            child: Padding(
          padding: HomeScreenPadding,
          child: Column(
            children: [
              TabBar(
                indicatorColor: kTextColor,
                labelColor: const Color(0xff4B4B4B),
                unselectedLabelColor: const Color(0xffB9B9B9),
                dividerColor: const Color(0xffB9B9B9),
                labelStyle: Theme.of(context).textTheme.bodyLarge,
                unselectedLabelStyle: Theme.of(context).textTheme.bodyLarge,
                tabs: const [
                  Tab(
                    text: 'My Code',
                  ),
                  Tab(
                    text: 'Scan Code',
                  ),
                ],
              ),
             const Expanded(
                  child: TabBarView(
                children: [
                  MyCode(),
                  ScanCode(),
                ],
              ))
            ],
          ),
        )),
      ),
    );
  }
}
