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
        body: const Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CustomSegmentedButton(),
            Divider(),
            SearchButton(),
            TransactionCard()
            // Expanded(
            //     child: ListView.builder(
            //   itemCount: 10,
            //   itemBuilder: (context, index) {
            //     return const Text('Hello');
            //   },
            // ))
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: const CustomFloatingButton());
  }
}
