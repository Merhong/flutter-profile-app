import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 20),
        _buildHeaderAvatar(),
        SizedBox(width: 20),
        _buildHeaderProfile(),
      ],
    );
  }

  Widget _buildHeaderAvatar() {
    // 위젯의 사이즈를 바꿀려면 일단 컨트롤 스페이스로 변경하는 메서드 체크
    // 없다면 SizedBox로 감싸서 크기를 지정한다.
    return SizedBox(
      width: 100,
      height: 100,
      child: CircleAvatar(
        backgroundImage: AssetImage("assets/avatar.png"),
      ),
    );
  }

  Widget _buildHeaderProfile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "GetinThere",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
        ),
        Text(
          "프로그래머",
          style: TextStyle(fontSize: 20),
        ),
        Text(
          "메타코딩 ",
          style: TextStyle(fontSize: 15),
        ),
      ],
    );
  }
}
