import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bustleup/config/color_constants.dart';
import 'package:bustleup/config/icons_constants.dart';
import 'package:bustleup/config/theme_config.dart';
import 'package:bustleup/utils/app_buttons.dart';

class DeleteModal extends StatelessWidget {
  const DeleteModal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 30.w,
            top: 20.h,
          ),
          child: Row(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 38.w.w,
                    width: 38.w.w,
                    decoration: BoxDecoration(
                        color: const Color(0xffFDAD0F),
                        borderRadius: BorderRadius.circular(99)),
                  ),
                  Icon(
                    KiibApp.tick,
                    size: 45.sp,
                    color: Colors.white,
                  )
                ],
              ),
              SizedBox(width: 5.w),
              const Text('Mark as read')
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: const Divider(
            thickness: 0.9,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30.w, bottom: 10.h),
          child: Row(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 38.w.w,
                    width: 38.w.w,
                    decoration: BoxDecoration(
                        color: const Color(0xffDF5858),
                        borderRadius: BorderRadius.circular(99)),
                  ),
                  Icon(
                    KiibApp.delete,
                    size: 20.sp,
                    color: Colors.white,
                  )
                ],
              ),
              SizedBox(width: 10.w),
              const Text(
                'Delete',
                style: TextStyle(color: Color(0xffDF5858)),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: const Divider(
            thickness: 0.9,
          ),
        ),
        SizedBox(
          height: 10.h,
        )
      ],
    );
  }
}

class TransactionModal extends StatelessWidget {
  const TransactionModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 60.w,
                    height: 60.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(99),
                        color: const Color(0xffFCCECE)),
                  ),
                  Icon(
                    KiibApp.arrow_diagonal_down,
                    size: 32.sp,
                    color: const Color(0xffDF5858),
                  )
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                '10,000',
                style: Theme.of(context).textTheme.headlineMedium,
              )
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Transaction type',
                    style: TextStyle(
                        fontSize: BodyText, color: const Color(0xffB2B2B2)),
                  ),
                  Text(
                    'Money sent',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Transaction type',
                    style: TextStyle(
                        fontSize: BodyText, color: const Color(0xffB2B2B2)),
                  ),
                  Text(
                    'Money sent',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Recipient:',
                    style: TextStyle(
                        fontSize: BodyText, color: const Color(0xffB2B2B2)),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Emmanuel Effiong',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Text(
                        '2219867652',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Transaction type',
                    style: TextStyle(
                        fontSize: BodyText, color: const Color(0xffB2B2B2)),
                  ),
                  Text(
                    'Money sent',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Column(
            children: [
              ElevatedButtonUtil(
                text: 'Receipt',
                onPressed: () {},
              ),
              SizedBox(
                height: 10.h,
              ),
              TextButtonUtil(
                text: "Done",
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}

class NotificationModal extends StatelessWidget {
  const NotificationModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 41.w,
                    height: 41.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(99),
                      color: const Color(0xffFCCECE),
                    ),
                  ),
                  Icon(
                    KiibApp.arrow_diagonal_down,
                    size: 19.sp,
                    color: const Color(0xffDF5858),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Money Request',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(fontSize: 18.w, color: Colors.black),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Transaction type',
                    style: TextStyle(
                      fontSize: SmallText,
                      color: const Color(0xffB2B2B2),
                    ),
                  ),
                  Text(
                    'Money sent',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontSize: BodyText,
                        ),
                  ),
                ],
              ),
              SizedBox(height: 19.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Transaction type',
                    style: TextStyle(
                      fontSize: SmallText,
                      color: const Color(0xffB2B2B2),
                    ),
                  ),
                  Text(
                    'Money sent',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontSize: BodyText,
                        ),
                  ),
                ],
              ),
              SizedBox(height: 19.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Recipient Transaction',
                    style: TextStyle(
                      fontSize: SmallText,
                      color: const Color(0xffB2B2B2),
                    ),
                  ),
                  Text(
                    'Money sent',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontSize: BodyText,
                        ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Column(
            children: [
              ElevatedButtonUtil(
                text: 'Accept',
                onPressed: () {},
              ),
              SizedBox(
                height: 10.h,
              ),
              TextButtonUtil(
                text: "Reject",
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MemberModal extends StatelessWidget {
  const MemberModal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 30.w, top: 20.h),
          child: Row(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 38.w.w,
                    width: 38.w.w,
                    decoration: BoxDecoration(
                        color: const Color(0xffDF5858),
                        borderRadius: BorderRadius.circular(99)),
                  ),
                  Icon(
                    KiibApp.delete,
                    size: 20.sp,
                    color: Colors.white,
                  )
                ],
              ),
              SizedBox(
                width: 10.w,
              ),
              const Text(
                'Leave payment list',
                style: TextStyle(color: Color(0xffDF5858)),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: const Divider(
            thickness: 0.9,
          ),
        ),
      ],
    );
  }
}

class AdminModal extends StatelessWidget {
  const AdminModal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.w, top: 20.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 38.w,
                    width: 38.w,
                    decoration: BoxDecoration(
                        color: const Color(0xffFDAD0F),
                        borderRadius: BorderRadius.circular(99)),
                  ),
                  Icon(
                    KiibApp.find_friend,
                    size: 40.sp,
                    color: Colors.white,
                  )
                ],
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                'Add Members',
                style: Theme.of(context).textTheme.bodyMedium,
              )
            ],
          ),
          const Divider(
            thickness: 0.9,
          ),
          Row(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 38.w,
                    width: 38.w,
                    decoration: BoxDecoration(
                        color: const Color(0xff1e1e1e),
                        borderRadius: BorderRadius.circular(99)),
                  ),
                  Icon(
                    KiibApp.show,
                    size: 15.sp,
                    color: Colors.white,
                  )
                ],
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                'Set Visibility',
                style: Theme.of(context).textTheme.bodyMedium,
              )
            ],
          ),
          const Divider(
            thickness: 0.9,
          ),
          Row(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 38.w,
                    width: 38.w,
                    decoration: BoxDecoration(
                        color: const Color(0xff9e52b5),
                        borderRadius: BorderRadius.circular(99)),
                  ),
                  Icon(
                    KiibApp.message,
                    size: 15.sp,
                    color: Colors.white,
                  )
                ],
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                'Message Members',
                style: Theme.of(context).textTheme.bodyMedium,
              )
            ],
          ),
          const Divider(
            thickness: 0.9,
          ),
          Row(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 38.w,
                    width: 38.w,
                    decoration: BoxDecoration(
                        color: const Color(0xff27AE60),
                        borderRadius: BorderRadius.circular(99)),
                  ),
                  Icon(
                    KiibApp.dollar_circle,
                    size: 15.sp,
                    color: Colors.white,
                  )
                ],
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                'View Balance',
                style: Theme.of(context).textTheme.bodyMedium,
              )
            ],
          ),
          const Divider(
            thickness: 0.9,
          ),
          Row(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 38.w,
                    width: 38.w,
                    decoration: BoxDecoration(
                        color: const Color(0xffDF5858),
                        borderRadius: BorderRadius.circular(99)),
                  ),
                  Icon(
                    KiibApp.logout,
                    size: 15.sp,
                    color: Colors.white,
                  )
                ],
              ),
              SizedBox(
                width: 10.h,
              ),
              Text(
                'Delete Payment List',
                style: TextStyle(
                    color: const Color(0xffDF5858), fontSize: BodyText),
              )
            ],
          ),
          const Divider(
            thickness: 0.9,
          ),
          SizedBox(
            height: 10.h,
          )
        ],
      ),
    );
  }
}

class AdminLongPressModal extends StatelessWidget {
  const AdminLongPressModal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 30.w,
            top: 20.h,
          ),
          child: Row(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 38.w,
                    width: 38.w,
                    decoration: BoxDecoration(
                        color: const Color(0xffFDAD0F),
                        borderRadius: BorderRadius.circular(99)),
                  ),
                  Icon(
                    KiibApp.find_friend,
                    size: 45.sp,
                    color: Colors.white,
                  )
                ],
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                'Make Admin',
                style: Theme.of(context).textTheme.bodyMedium,
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: const Divider(
            thickness: 0.9,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30.w, bottom: 10.h),
          child: Row(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 38.w,
                    width: 38.w,
                    decoration: BoxDecoration(
                        color: const Color(0xffDF5858),
                        borderRadius: BorderRadius.circular(99)),
                  ),
                  Icon(
                    KiibApp.logout,
                    size: 20.sp,
                    color: Colors.white,
                  )
                ],
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                'Remove Member',
                style: TextStyle(
                    color: const Color(0xffDF5858), fontSize: BodyText),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: const Divider(
            thickness: 0.9,
          ),
        ),
        SizedBox(
          height: 10.h,
        )
      ],
    );
  }
}

class ConfirmationModal extends StatelessWidget {
  final String text;
  const ConfirmationModal({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: 20.w, right: 20.w, top: 25.h, bottom: 35.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          SizedBox(
            height: 10.h,
          ),
          Column(
            children: [
              ElevatedButtonUtil(
                text: 'Yes',
                onPressed: () {},
              ),
              SizedBox(
                height: 10.h,
              ),
              TextButtonUtil(
                text: "No",
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}

class LoadingModal extends StatelessWidget {
  const LoadingModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 35.h),
          child: Column(
            children: [
              Icon(
                KiibApp.dollar_circle,
                size: 80.sp,
                color: kTextColor,
              ),
              FittedBox(
                child: Text(
                  'Processing Transaction',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 10.h),
          child: const Text('go and go'),
        )
      ],
    );
  }
}

class SuccessModal extends StatelessWidget {
  const SuccessModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 80.w,
                width: 80.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(99),
                    color: const Color(0xffE9F7EF)),
              ),
              Icon(
                KiibApp.success,
                color: const Color(0xff27AE60),
                size: 75.sp,
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Text('Success!',
              style: TextStyle(
                  color: const Color(0xff333333), fontSize: SuccesText)),
          SizedBox(
            height: 15.h,
          ),
          TextButtonUtil(text: 'close', onPressed: () {})
        ],
      ),
    );
  }
}

class TransactionErrorModal extends StatelessWidget {
  const TransactionErrorModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 70.w,
                width: 70.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(99),
                    color: const Color(0xffFEEFEF)),
              ),
              Icon(
                KiibApp.close_circle,
                color: const Color(0xffDF5858),
                size: 64.sp,
              ),
              Icon(
                KiibApp.close,
                color: Colors.white,
                size: 25.sp,
              )
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            'Transaction Failed',
            style:
                TextStyle(fontSize: SuccesText, color: const Color(0xff1E1E1E)),
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            'Check your internet connection',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(
            height: 20.h,
          ),
          Column(
            children: [
              ElevatedButtonUtil(
                text: 'Retry',
                onPressed: () {},
              ),
              SizedBox(
                height: 10.h,
              ),
              TextButtonUtil(
                text: "Done",
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}

class FilterModal extends StatelessWidget {
  const FilterModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Filter transactions',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  width: 148.w,
                  height: 29,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xffB9B9B9), width: 0.8),
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    'Money Sent',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: Container(
                  width: 148.w,
                  height: 29,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xffB9B9B9), width: 0.8),
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    'Money Received',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ConnectionErrorModal extends StatelessWidget {
  const ConnectionErrorModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 70.w,
                width: 70.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(99),
                    color: const Color(0xffFCF8EB)),
              ),
              Icon(
                KiibApp.connection_error,
                color: const Color(0xffB59532),
                size: 64.sp,
              ),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            'Connection Error',
            style:
                TextStyle(fontSize: SuccesText, color: const Color(0xff1E1E1E)),
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            'There seems to be a problem, Check your connection',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
