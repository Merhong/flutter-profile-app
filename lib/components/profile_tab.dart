import 'package:flutter/material.dart';

// Stateful 위젯은 build 메서드가 여러번 실행될 수 있다.
// ProfileTab을 재호출하면 _ProfileTabState()가 재실행된다.
class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

// 1. Mixin - 컴포지션(has)을 with로 표현함
// 2. stateful 위젯 여러번 그려지게 TabController 설정
// 3. 위젯끼리 연동
class _ProfileTabState extends State<ProfileTab>
    with SingleTickerProviderStateMixin {
  // 생성자 초기화시 null 허용하게 변수 설정
  TabController? _tabController; // 탭바와 탭바뷰를 연동시키기 위한 변수

  // Object 초기화 메서드... new가 여러번 되더라도 한번만 실행되게끔
  @override
  void initState() {
    // 원래 기본 동작은 하고
    super.initState();
    // length는 탭바의 메뉴 갯수
    // vsync는 동기화 어떤 그림이(어떤 위젯) 다시 그려져야 하는지 설정
    // this(내가 띄워진 Heap 공간) -> 여기서는 _ProfileTabState()
    _tabController = TabController(length: 2, vsync: this);
    print("initState() 초기화 됨");
  }

  @override
  Widget build(BuildContext context) {
    print("빌드 다시 됨");
    return Column(
      children: [
        // TabBar를 눌렀을때 TabBarView가 반응해야 함.
        TabBar(
          controller: _tabController,
          tabs: [
            Tab(icon: Icon(Icons.directions_car)),
            Tab(icon: Icon(Icons.directions_transit)),
          ],
        ),
        // Expanded로 탭바뷰의 높이를 지정하지 않으면 오류가 난다.
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              // 항목의 갯수를 알 수 없을때(동적일때 builder패턴 사용)
              GridView.builder(
                  // 그리드로 나오는 아이템의 갯수를 설정
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemCount: 50,
                  itemBuilder: (context, index) => Image.network(
                      "https://picsum.photos/id/${index}/200/200")),
              Container(color: Colors.green),
            ],
          ),
        ),
      ],
    );
  }
}
