import 'package:flutter/material.dart';
import 'package:kiib/config/color_constants.dart';
import 'package:kiib/config/icons_constants.dart';
import 'package:kiib/features/home/presentation/pages/notifications_screen.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome 👋', style: Theme.of(context).textTheme.bodyMedium),
            const Text(
              'Nherci Rotimi',
              style: TextStyle(fontSize: 16, color: kTextColor),
            ),
          ],
        ),
        Stack(alignment: Alignment.center, children: [
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(99),
                color: const Color.fromARGB(255, 223, 222, 222)),
          ),
          InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => const NotificationScreen()));
              },
              child: const Icon(
                KiibApp.message,
                color: kTextColorDark,
                size: 20,
              ))
        ])
      ],
    );
  }
}
