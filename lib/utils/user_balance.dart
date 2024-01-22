import 'package:flutter/material.dart';

class UserBalanceUtil extends StatelessWidget {
  const UserBalanceUtil({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Balance', style: Theme.of(context).textTheme.bodyLarge,),
        const Text('NGN 23,830', style: TextStyle(fontSize: 16, color: Colors.black, ), )
      ],
    );
  }
}