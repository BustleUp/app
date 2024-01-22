import 'package:flutter/material.dart';
import 'package:bustleup/config/icons_constants.dart';

// ignore: non_constant_identifier_names
SnackBarUtil(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(KiibApp.success),
            Text(message, style: const TextStyle( color: Color(0xff104928)),),
          ],
        ),
        backgroundColor: const Color(0xffE9F7EF),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(99)),
    
      ),
    );
  }

