import 'package:demo_app/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({super.key});

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
              leading: const CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      scale: 3.0,
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSh1DZpMsH7WfqiU7sB6Pky_rHEQAumb9Tg-A&s"),
                  child: SizedBox()),
              title: const Text('John Doe'),
              subtitle: const Text('Yaw'),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text('Success'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'GHS 50',
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
                  )
                ],
              ),
            ),
            const Divider(
              height: 5,
            ),
            Row(
              children: [
                // Icon(
                //   Icons.check_circle,
                //   color: Colors.green,
                // ),
                // Text('Success')

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
