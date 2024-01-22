import 'package:flutter/material.dart';
import 'package:kiib/config/color_constants.dart';
import 'package:kiib/config/theme_config.dart';
import 'package:kiib/features/home/domain/transaction_list_model.dart';
import 'package:kiib/utils/modals.dart';

class RecentTransactions extends StatefulWidget {
  const  RecentTransactions({super.key});

  @override
  State<RecentTransactions> createState() => _RecentTransactionsState();
}

class _RecentTransactionsState extends State<RecentTransactions> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         const SizedBox(
          height: 30,
        ),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Recent Transactions',
              style: TextStyle(
                  fontSize: SmallText,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            Text(
              'View Transactions',
              style: TextStyle(fontSize: SmallText, color: kTextColorLight),
            )
          ],
        ),
         const SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView.builder(
              itemCount: transactions.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:  const Color(0xffFFFFFF)),
                  child: TransactionModel(
                      profileImage: transactions[index].profileImage,
                      userName: transactions[index].userName,
                      date: transactions[index].date,
                      time: transactions[index].time,
                      amount: transactions[index].amount),
                );
              }),
        ),
      ],
    );
  }
}

class TransactionModel extends StatelessWidget {
  final String profileImage;
  final String userName;
  final String date;
  final String time;
  final String amount;

   TransactionModel(
      {super.key,
      required this.profileImage,
      required this.userName,
      required this.date,
      required this.time,
      required this.amount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.only(left: 8, right: 8, top: 8),
      child: InkWell(
        onTap: () {
          showModalBottomSheet(
              shape:  const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16))),
              context: context,
              builder: (context) {
                return  const Text('data'); //TransactionModal();
              });
        },
        child: Container(
          height: 80,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color:  const Color(0xffE9E9E9)),
          ),
          child: FittedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:  const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(profileImage),
                        radius: 20,
                      ),
                       const SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            userName,
                            style:  TextStyle(
                                fontSize: BodyText,
                                fontWeight: FontWeight.w600),
                          ),
                           const SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              Text(
                                time,
                                style:  TextStyle(fontSize: SmallText),
                              ),
                               const SizedBox(
                                width: 10,
                              ),
                              Text(
                                date,
                                style:  TextStyle(
                                    fontSize: SmallText,
                                    color: kTextColorLight),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:  const EdgeInsets.only(right: 10),
                  child: Text(
                    amount,
                    style:  TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.green,
                        fontSize: SmallText),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
