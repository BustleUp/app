import 'package:flutter/material.dart';
import 'package:bustleup/config/icons_constants.dart';

class AppBarUtil extends StatelessWidget implements PreferredSizeWidget {
  final Widget? accountBalance;
  final bool? icon;
  final Function() onPressed;
  final Function()? onPressedDelete;

  const AppBarUtil(
      {super.key,
      this.accountBalance,
      this.icon = false,
      required this.onPressed,
      this.onPressedDelete});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Stack(children: [
          Positioned.fill(
              child: accountBalance == null
                  ? const Center(child: Text(''))
                  : Center(child: accountBalance!)),
          InkWell(
            onTap: onPressed,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  KiibApp.left,
                  size: 35,
                ),
                Text(
                  'Back',
                  style: Theme.of(context).textTheme.bodyMedium,
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: icon == false
                    ? const Text('')
                    : InkWell(
                        onTap: onPressedDelete,
                        child: const Icon(Icons.delete_outlined),
                      ),
              ),
            ],
          )
        ]),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 60);
}
