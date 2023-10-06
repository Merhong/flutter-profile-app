import 'package:flutter/material.dart';

class ProfileButtons extends StatelessWidget {
  const ProfileButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // 버튼을 클릭했을때 행위(익명함수), 디자인
        _buildFollowButton(),
        _buildMessageButton()
      ],
    );
  }

  OutlinedButton _buildMessageButton() {
    return OutlinedButton(
      onPressed: () {},
      child: Text("Message", style: TextStyle(color: Colors.black)),
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.white,
        minimumSize: Size(150, 45),
      ),
    );
  }

  Widget _buildFollowButton() {
    return ElevatedButton(
      onPressed: () {},
      child: Text("Follow", style: TextStyle(color: Colors.white)),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        minimumSize: Size(150, 45),
      ),
    );
  }
}
