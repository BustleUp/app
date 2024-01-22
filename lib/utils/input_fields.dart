import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bustleup/config/color_constants.dart';
import 'package:bustleup/config/icons_constants.dart';
import 'package:bustleup/config/theme_config.dart';

class PhoneInputFieldUtil extends StatefulWidget {
  final String? labelText;
  final Function() onValueInput;

  const PhoneInputFieldUtil(
      {super.key, this.labelText, required this.onValueInput});

  @override
  State<PhoneInputFieldUtil> createState() => _PhoneInputFieldUtilState();
}

class _PhoneInputFieldUtilState extends State<PhoneInputFieldUtil> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          keyboardType: TextInputType.phone,
          cursorColor: kTextColorDark,
          controller: myController,
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(),
                  borderRadius: BorderRadius.circular(10)),
              prefixIcon:  Icon(
                KiibApp.flag,
                color: const Color(0xff128807),
                size: BodyText,
              ),
              labelText: widget.labelText,
              labelStyle: Theme.of(context).textTheme.bodyMedium,
              border: OutlineInputBorder(
                  borderSide: const BorderSide(),
                  borderRadius: BorderRadius.circular(10))),
          onChanged: (value) {
            myController.text;
          },
        ),
      ],
    );
  }
}

class PasswordInputUtil extends StatelessWidget {
  final String labelText;
  final Function() onValueInput;
  const PasswordInputUtil(
      {super.key, required this.labelText, required this.onValueInput});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
              suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    KiibApp.show,
                    color: kTextColorLight,
                  )),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(),
                  borderRadius: BorderRadius.circular(10)),
              labelText: labelText,
              labelStyle: Theme.of(context).textTheme.bodyMedium,
              border: OutlineInputBorder(
                  borderSide: const BorderSide(),
                  borderRadius: BorderRadius.circular(10))),
        ),
      ],
    );
  }
}

class TextInputFieldUtil extends StatelessWidget {
  final String labelText;
  final String text;
  final bool? sameAsName;
  final Function() onValueInput;
  final Function()? onPressed;

  const TextInputFieldUtil(
      {super.key,
      required this.labelText,
      required this.text,
      this.onPressed,
      this.sameAsName = false,
      required this.onValueInput});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const SizedBox(
          height: 3,
        ),
        TextField(
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(),
                  borderRadius: BorderRadius.circular(10)),
              labelText: labelText,
              labelStyle: Theme.of(context).textTheme.bodyMedium,
              border: OutlineInputBorder(
                  borderSide: const BorderSide(),
                  borderRadius: BorderRadius.circular(10))),
        ),
        const SizedBox(
          height: 2,
        ),
        sameAsName == false
            ? const Text('')
            : InkWell(
                onTap: onPressed,
                child:  Row(
                  children: [
                    Text(
                      'Use full name',
                      style: TextStyle(
                          fontSize: SmallText, color: kTextColorLight),
                    ),
                    const Icon(
                      KiibApp.tick_square,
                      size: 18,
                      color: kTextColorLight,
                    ),
                  ],
                ),
              ),
        const SizedBox(
          height: 2,
        )
      ],
    );
  }
}

class EnterPinUtil extends StatelessWidget {
  final Function() values;
  const EnterPinUtil({super.key, required this.values});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Otp(),
        SizedBox(
          width: 15,
        ),
        Otp(),
        SizedBox(
          width: 15,
        ),
        Otp(),
        SizedBox(
          width: 15,
        ),
        Otp(),
      ],
    );
  }
}

class Otp extends StatelessWidget {
  const Otp({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: TextFormField(
        keyboardType: TextInputType.number,
        style: Theme.of(context).textTheme.bodyLarge,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
          if (value.isEmpty) {
            FocusScope.of(context).previousFocus();
          }
        },
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: kTextColorLight),
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: kTextColorLight),
              borderRadius: BorderRadius.circular(12),
            )),
        onSaved: (value) {},
      ),
    );
  }
}

class SearchInputUtil extends StatefulWidget {
  final String labelText;
  final bool? userID;

  const SearchInputUtil(
      {super.key, required this.labelText, this.userID = false});

  @override
  State<SearchInputUtil> createState() => _SearchInputUtilState();
}

class _SearchInputUtilState extends State<SearchInputUtil> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        widget.userID == false
            ? const Text('')
            : const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('User ID'),
                ],
              ),
        const SizedBox(
          height: 2,
        ),
        TextField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              prefixIcon: const Icon(
                KiibApp.search,
                color: kTextColorLight,
                size: 20,
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(),
                  borderRadius: BorderRadius.circular(10)),
              labelText: widget.labelText,
              labelStyle: Theme.of(context).textTheme.bodyMedium,
              border: OutlineInputBorder(
                  borderSide: const BorderSide(),
                  borderRadius: BorderRadius.circular(10))),
        ),
      ],
    );
  }
}
