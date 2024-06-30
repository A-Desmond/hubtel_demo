import 'package:demo_app/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Transaction {
  final String name;
  final String phoneNumber;
  final String imageUrl;
  final String status;
  final String amount;
  final String type;
  final String description;

  Transaction(
      {required this.name,
      required this.phoneNumber,
      required this.imageUrl,
      required this.status,
      required this.amount,
      required this.type,
      required this.description});
}

class TransactionCard extends StatelessWidget {
  final Transaction transaction;
  const TransactionCard({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: darkGrey,
            )),
        width: MediaQuery.of(context).size.width * 0.9,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '14:45PM',
              style: TextStyle(color: darkGrey),
            ),
            ListTile(
              contentPadding: const EdgeInsets.only(left: 0.0),
              leading: CircleAvatar(
                  radius: 30,
                  backgroundImage:
                      NetworkImage(scale: 3.0, transaction.imageUrl),
                  child: const SizedBox()),
              title: Text(transaction.name),
              subtitle: Text(transaction.phoneNumber),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 23,
                    padding: const EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                      color: transaction.status.toLowerCase() == 'failed'
                          ? Colors.red.withOpacity(0.5)
                          : Colors.green.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Expanded(
                          child: Center(
                              child: Row(children: [
                        transaction.status.toLowerCase() == 'failed'
                            ? const Icon(
                                Icons.close,
                                color: Colors.red,
                                size: 18,
                              )
                            : Icon(
                                Icons.check_circle,
                                color: Colors.green.withOpacity(0.5),
                                size: 18,
                              ),
                        Text(transaction.status)
                      ]))),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    transaction.amount,
                    style: const TextStyle(
                        fontWeight: FontWeight.w800, fontSize: 16),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Divider(
              height: 5,
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.indigo.withOpacity(0.5),
                  child: const Icon(
                    Icons.person,
                    color: Colors.indigo,
                  ),
                ),
                const SizedBox(width: 10),
                const Text('Personal'),
                const SizedBox(width: 10),
                Container(
                  width: 10,
                  height: 10,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 10),
                const Text('Cool with heart'),
                const Spacer(),
                const Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 30,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
