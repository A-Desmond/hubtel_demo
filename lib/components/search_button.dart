import 'package:demo_app/constant.dart';
import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 60,
        width: MediaQuery.of(context).size.width * 0.9,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: TextField(
                enabled: false,
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    child: Icon(
                      Icons.search,
                      size: 30,
                    ),
                  ),
                  filled: true,
                  fillColor: const Color(0xFFE5E5E5),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            const Align(
              child: Icon(
                Icons.menu_outlined,
                size: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
