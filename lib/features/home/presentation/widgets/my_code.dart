import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kiib/config/icons_constants.dart';
import 'package:kiib/config/theme_config.dart';
import 'package:kiib/features/deposit/presentation/pages/deposit_money.dart';
import 'package:kiib/features/deposit/presentation/pages/deposit_summary.dart';
import 'package:kiib/utils/app_buttons.dart';
import 'package:kiib/utils/snack_bar.dart';

class MyCode extends StatelessWidget {
  const MyCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Show QR code
          Expanded(
              flex: 4,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                       Icon(
                          KiibApp.qr_code,
                          color: const Color(0xff000000),
                          size: 210.sp,
                        ),
                        Image.asset(
                          'assets/images/kiib.png',
                          height: 60.w,
                          width: 60.w,
                        )
                      ],
                    ),
                     SizedBox(
                      height: 50.h,
                    ),
                     Text('Nherci Rotimi',
                        style: TextStyle(fontSize: SuccesText)),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Scan to pay',
                            style: Theme.of(context).textTheme.bodyLarge),
                        Text('@Nherci',
                            style: TextStyle(
                                fontSize: SmallText, color: const Color(0xff239E57))),
                      ],
                    )
                  ],
                ),
              )),

          // Confirmation Button
          Expanded(
            flex: 1,
            child: Column(
              children: [
                ElevatedButtonUtil(
                  text: 'Copy user ID',
                  onPressed: () {
                    SnackBarUtil('User ID copied successfully', context);
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButtonUtil(
                  text: "Request",
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (_) => const DepositSummaryScreen()));
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
