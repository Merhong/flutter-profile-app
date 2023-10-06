import 'package:flutter/material.dart';

class ProfileCounterInfo extends StatelessWidget {
  const ProfileCounterInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildInfo("50", "Posts"),
        _buildLine(),
        _buildInfo("10", "Likes"),
        _buildLine(),
        _buildInfo("3", "Share"),
      ],
    );
  }

  // Flutter 언더바 = Java Private
  // 웬만하면 리턴타입은 Widget
  // 매개변수가 있으면 const를 붙이면 안된다. why?
  // 매개변수마다 다른 개체니까
  Widget _buildInfo(String count, String title) {
    return Column(
      children: [
        Text("${count}", style: TextStyle(fontSize: 15)),
        SizedBox(height: 2),
        Text("${title}", style: TextStyle(fontSize: 15)),
      ],
    );
  }

  // 웬만하면 리턴타입은 Widget
  Widget _buildLine() {
    return Container(
      width: 2,
      height: 60,
      color: Colors.blue,
    );
  }
}
