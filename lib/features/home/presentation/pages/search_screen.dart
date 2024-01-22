import 'package:flutter/material.dart';
import 'package:kiib/config/color_constants.dart';
import 'package:kiib/config/theme_config.dart';
import 'package:kiib/features/send/domain/user_data.dart';
import 'package:kiib/utils/input_fields.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: kBackgroundColor,
      body: SafeArea(
          child: Padding(
        padding: ScreenPadding,
        child: SingleChildScrollView(
          child: Column(children: [
            // input section
            const SearchInputUtil(
              labelText: 'Input user ID',
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text('Recents'),
                SingleChildScrollView(
                  child: SizedBox(
                    height: 600,
                    child: ListView.builder(
                        itemCount: users.length,
                        itemBuilder: (context, index) {
                          return UserDetails(
                              profileImage: users[index].profileImage,
                              userName: users[index].userName);
                        }),
                  ),
                ),
              ],
            )
          ]),
        ),
      )),
    );
  }
}

class UserDetails extends StatelessWidget {
  final String profileImage, userName;
  const UserDetails(
      {super.key, required this.profileImage, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(profileImage),
                radius: 18,
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userName,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ],
          ),
        ),
        const Divider(
          color: Color(0xffB9B9B9),
          height: 10,
        )
      ],
    );
  }
}
