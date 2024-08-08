import 'package:flutter/material.dart';
import 'bottom_time_and_video.dart';
import 'button_friends_and_button.dart';

class BussinessDesignBottomWidget extends StatelessWidget {
  const BussinessDesignBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 149,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Color(0xffFAFCFE),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            SizedBox(height: 16),
            BottomTimeAndVideo(),
            Spacer(),
            ButtonFriendsAndButton(),
            SizedBox(height: 16)
          ],
        ),
      ),
    );
  }
}
