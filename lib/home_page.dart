import 'package:demo_app/components/floating_button.dart';
import 'package:demo_app/components/segmented_button.dart';
import 'package:demo_app/components/transaction_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/search_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        backgroundColor: Colors.white,
        bottomNavigationBar: NavigationBar(
          selectedIndex: 2,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.money),
              label: 'Send',
            ),
            NavigationDestination(
              icon: Icon(Icons.history_edu),
              label: 'History',
            ),
            NavigationDestination(
              icon: Icon(Icons.calendar_month_sharp),
              label: 'Schedule',
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomSegmentedButton(),
            const Divider(),
            const SearchButton(),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: transaction.length,
                itemBuilder: (context, index) {
                  return TransactionCard(
                    transaction: transaction[index],
                  );
                },
              ),
            ))
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: const CustomFloatingButton());
  }
}

List<Transaction> transaction = [
  Transaction(
    name: 'Emmanuel Rockson',
    phoneNumber: '1234567890',
    imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSh1DZpMsH7WfqiU7sB6Pky_rHEQAumb9Tg-A&s",
    status: 'successful',
    amount: 'GHS 50',
    type: 'type',
    description: 'Cool with your heart wai',
  ),
  Transaction(
    name: 'Emmanuel Rockson',
    phoneNumber: '1234567890',
    imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSh1DZpMsH7WfqiU7sB6Pky_rHEQAumb9Tg-A&s",
    status: 'successful',
    amount: 'GHS 50',
    type: 'type',
    description: 'Cool with your heart wai',
  ),
  Transaction(
    name: 'Emmanuel Rockson',
    phoneNumber: '1234567890',
    imageUrl:
        "https://citinewsroom.com/wp-content/uploads/2019/10/Absa-Logo1-1.png",
    status: 'Failed',
    amount: 'GHS 50',
    type: 'type',
    description: 'Cool with your heart wai',
  )
];
