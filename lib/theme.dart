import 'package:flutter/material.dart';

const MaterialColor primaryWhite = MaterialColor(
  // 디폴트 컬러
  0xFFFFFFFF,
  <int, Color>{
    50: Color(0xFFFFFFFF),
    100: Color(0xFFFFFFFF),
    200: Color(0xFFFFFFFF),
    300: Color(0xFFFFFFFF),
    400: Color(0xFFFFFFFF),
    500: Color(0xFFFFFFFF),
    600: Color(0xFFFFFFFF),
    700: Color(0xFFFFFFFF),
    800: Color(0xFFFFFFFF),
    900: Color(0xFFFFFFFF),
  },
);

// 테마 넣을때의 데이터가 ThemeData임
// Theme 색을 정하고 개발을 시작한다.
ThemeData theme() {
  return ThemeData(
    // primaryColor는 더 이상 쓰지 않는다.
    // primarySwatch를 사용한다.
    primarySwatch: primaryWhite,
    // AppBar는 값이 바뀌지 않으니까 const를 붙여서 사용
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.blue)
    )
  );
}