import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kiib/config/color_constants.dart';
import 'package:kiib/config/theme_config.dart';
import 'package:kiib/features/onboarding/data/onboarding_model.dart';
import 'package:kiib/features/onboarding/presentation/pages/login_screen.dart';
import 'package:kiib/features/onboarding/presentation/pages/signup_screen.dart';
import 'package:kiib/utils/app_buttons.dart';
import 'package:kiib/utils/modals.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _controller;
  int _pageIndex = 0;

  @override
  void initState() {
    _controller = PageController(
      initialPage: 0,
    );
    _startAutoScroll();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _startAutoScroll() {
    Timer.periodic(const Duration(seconds: 4), (timer) {
      if (_controller.hasClients) {
        if (_pageIndex < contents.length - 1) {
          _controller.nextPage(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeIn,
          );
        } else {
          _controller.animateToPage(
            0,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeOut,
          );
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            padding: ScreenPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 60.h),
                Expanded(
                  flex: 3,
                  child: PageView.builder(
                    itemCount: contents.length,
                    controller: _controller,
                    onPageChanged: (index) {
                      setState(() {
                        _pageIndex = index;
                      });
                    },
                    itemBuilder: (context, index) {
                      return FractionallySizedBox(
                        widthFactor: 1,
                        child: OnboardingContent(
                          image: contents[index].image,
                          title: contents[index].title,
                          subtitle: contents[index].subtitle,
                        ),
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                      contents.length,
                      (index) => Padding(
                        padding: const EdgeInsets.only(right: 4),
                        child: ScrollIndicator(isActive: index == _pageIndex),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: ElevatedButtonUtil(
                          text: 'Create Account',
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (_) => const SignUpScreen()),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 20),
                      Flexible(
                        child: TextButtonUtil(
                          text: 'I have an Account',
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (_) => const LogInScreen()),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: FractionallySizedBox(
            heightFactor: 0.9,
            child: Image.asset(
              image,
              fit: BoxFit.contain,
            ),
          ),
        ),
        SizedBox(height: 10.h),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: FittedBox(
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  subtitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: BodyText, color: kTextColor),
                  maxLines: 3,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ScrollIndicator extends StatelessWidget {
  const ScrollIndicator({Key? key, this.isActive = false}) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      height: 8,
      width: isActive ? 8 : 8,
      margin: const EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(
        color: isActive ? kTextColor : const Color.fromARGB(255, 176, 174, 174),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
