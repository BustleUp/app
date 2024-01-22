import 'package:flutter/material.dart';
import 'package:kiib/config/icons_constants.dart';
import 'package:kiib/features/deposit/presentation/pages/deposit_money.dart';
import 'package:kiib/features/home/presentation/pages/search_screen.dart';
import 'package:kiib/features/withdraw/presentation/pages/input_withdrawal_amount.dart';

class QuickActionMenu extends StatelessWidget {
  const QuickActionMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    double getPercentageWidth(double percentage) {
      return screenWidth * percentage;
    }

    return SizedBox(
      height: getPercentageWidth(0.23),
      width: double.infinity,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color(0xffFFFFFF)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const DepositMoneyScreen()));
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: getPercentageWidth(0.12),
                        width: getPercentageWidth(0.12),
                        decoration: BoxDecoration(
                            color: const Color(0xffBDECD9),
                            borderRadius: BorderRadius.circular(99)),
                      ),
                      Icon(
                        KiibApp.plus,
                        size: getPercentageWidth(0.12),
                        color: Colors.green.shade900,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: getPercentageWidth(0.015),
                ),
                Text(
                  'Add Money',
                  style: TextStyle(fontSize: getPercentageWidth(0.035)),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const WithdrawScreen()));
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: getPercentageWidth(0.12),
                        width: getPercentageWidth(0.12),
                        decoration: BoxDecoration(
                            color: const Color(0xffFEA5B2),
                            borderRadius: BorderRadius.circular(99)),
                      ),
                      Icon(
                        KiibApp.minus,
                        size: getPercentageWidth(0.12),
                        color: Colors.red.shade900,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: getPercentageWidth(0.015),
                ),
                Text(
                  'Withdraw',
                  style: TextStyle(fontSize: getPercentageWidth(0.035)),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: getPercentageWidth(0.12),
                        width: getPercentageWidth(0.12),
                        decoration: BoxDecoration(
                            color: const Color(0xff212437),
                            borderRadius: BorderRadius.circular(99)),
                      ),
                      Icon(
                        KiibApp.pay_list,
                        size: getPercentageWidth(0.12),
                        color: const Color(0xffFCF1FF),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: getPercentageWidth(0.015),
                ),
                Text(
                  'Payment List',
                  style: TextStyle(fontSize: getPercentageWidth(0.035)),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const SearchScreen()));
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: getPercentageWidth(0.12),
                        width: getPercentageWidth(0.12),
                        decoration: BoxDecoration(
                            color: const Color(0xffFDAD0F),
                            borderRadius: BorderRadius.circular(99)),
                      ),
                      Icon(
                        KiibApp.find_friend,
                        size: getPercentageWidth(0.12),
                        color: const Color(0xffFCF1FF),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: getPercentageWidth(0.015),
                ),
                Text(
                  'Find Friends',
                  style: TextStyle(fontSize: getPercentageWidth(0.035)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
