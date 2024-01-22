import 'package:flutter/material.dart';
import 'package:kiib/config/color_constants.dart';
import 'package:kiib/config/theme_config.dart';
import 'package:kiib/features/home/domain/notifications_model.dart';
import 'package:kiib/utils/app_bar.dart';
import 'package:kiib/utils/modals.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBarUtil(
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: HomeScreenPadding,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10, right: 5),
                    child: Text(
                      'Mark all as read',
                      style: TextStyle(
                        fontSize: screenWidth *
                            0.035, // Adjust the font size based on screen width
                        color: kTextColorLight,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ListView.builder(
                    itemCount: notification.length,
                    itemBuilder: (context, index) {
                      return NotificationModel(
                        profileImage: notification[index].profileImage,
                        title: notification[index].title,
                        date: notification[index].date,
                        time: notification[index].time,
                        body: notification[index].body,
                        screenWidth: screenWidth,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NotificationModel extends StatelessWidget {
  final String profileImage;
  final String title;
  final String date;
  final String time;
  final String body;
  final double screenWidth;

  const NotificationModel({
    super.key,
    required this.profileImage,
    required this.title,
    required this.date,
    required this.time,
    required this.body,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    final smallTextSize =
        screenWidth * 0.03; // Adjust the small text size based on screen width

    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: InkWell(
        onLongPress: () {
          showModalBottomSheet(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            context: context,
            builder: (context) {
              return const DeleteModal();
            },
          );
        },
        onTap: () {
          showModalBottomSheet(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            context: context,
            builder: (context) {
              return const Text('text'); //NotificationModal();
            },
          );
        },
        child: Container(
          height: screenWidth * 0.28,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: const Color(0xffE9E9E9)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 8, right: 8),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: const Alignment(-1, -1),
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(profileImage),
                          radius: 18,
                        ),
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(99),
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: kTextColorDark,
                              fontSize: screenWidth *
                                  0.04, // Adjust the font size based on screen width
                            ),
                          ),
                          Text(
                            body,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: const Color(0xff989898),
                              fontSize: smallTextSize,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      date,
                      style: TextStyle(
                        fontSize: smallTextSize,
                        color: const Color(0xff989898),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10, left: 7),
                      child: Text(
                        time,
                        style: TextStyle(
                          color: const Color(0xff989898),
                          fontSize: smallTextSize,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
