import 'package:flutter/material.dart';
import 'package:profile_app/components/profile_buttons.dart';
import 'package:profile_app/components/profile_count_info.dart';
import 'package:profile_app/components/profile_drawer.dart';
import 'package:profile_app/components/profile_header.dart';
import 'package:profile_app/components/profile_tab.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar가 있으면 safeArea를 쓸 필요가 없다. 알아서 만들어줌
      endDrawer: ProfileDrawer(),
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Profile"),
        centerTitle: true, // IOS는 중앙정렬이 필요없음
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  ProfileHeader(),
                  ProfileCounterInfo(),
                  ProfileButtons(),
                ],
              ),
            )
          ];
        },
        body: Expanded(child: ProfileTab()),
      ),
    );
  }
}
