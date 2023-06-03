import 'package:flutter/material.dart';

import '../constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/images/luke.jpg'),
          ),
          const SizedBox(width: 18),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: const Color(0xFFEEF3F7),
                  borderRadius: BorderRadius.circular(4)),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: const Row(
                children: [
                  Icon(
                    Icons.search,
                    size: 26,
                  ),
                  SizedBox(
                    width: 5,
                    height: 40,
                  ),
                  Text(
                    'Search',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 18),
          Container(
            width: 40,
            height: 40,
            child: const Icon(
              Icons.chat_bubble_rounded,
              size: 28,
              color: AppColors.navbutton,
            ),
          ),
        ],
      ),
    );
  }
}
