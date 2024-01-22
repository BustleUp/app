import 'package:flutter/material.dart';
import 'package:kiib/config/color_constants.dart';
import 'package:kiib/config/icons_constants.dart';
import 'package:kiib/features/recieve/presentation/pages/show_qrcode.dart';
import 'package:kiib/features/send/presentation/pages/search_user.dart';

class CardFrame extends StatelessWidget {
  const CardFrame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    double getPercentageWidth(double percentage) {
      return screenWidth * percentage;
    }

    return SizedBox(
      width: double.infinity,
      height: getPercentageWidth(0.5),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/images/cardframe.png',
            width: double.infinity,
            height: double.infinity,
          ),
          Column(
            children: [
              SizedBox(
                height: getPercentageWidth(0.1),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Total Balance',
                    style: TextStyle(fontSize: 11, color: Color(0xffFCF1FF)),
                  ),
                  const SizedBox(width: 5),
                  Icon(
                    KiibApp.show,
                    color: Colors.white,
                    size: getPercentageWidth(0.03),
                  ),
                ],
              ),
              Text(
                'NGN 23,877',
                style: TextStyle(
                    fontSize: getPercentageWidth(0.06),
                    fontWeight: FontWeight.w700,
                    color: const Color(0xffFCF1FF)),
              ),
              SizedBox(height: getPercentageWidth(0.04)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const ShowQrCodescreen()));
                    },
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: getPercentageWidth(0.06),
                              width: getPercentageWidth(0.06),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: const Color(0xffFFFFFF),
                              ),
                            ),
                            const Icon(KiibApp.arrow_downward,
                                color: kTextColor, size: 16),
                          ],
                        ),
                        SizedBox(height: getPercentageWidth(0.015)),
                        Text('Receive',
                            style: Theme.of(context).textTheme.bodySmall),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const SearchUserSendScreen()));
                    },
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: getPercentageWidth(0.06),
                              width: getPercentageWidth(0.06),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: const Color(0xffFFFFFF),
                              ),
                            ),
                            const Icon(KiibApp.arrow_upward,
                                color: kTextColor, size: 16),
                          ],
                        ),
                        SizedBox(height: getPercentageWidth(0.015)),
                        Text('Send',
                            style: Theme.of(context).textTheme.bodySmall),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
