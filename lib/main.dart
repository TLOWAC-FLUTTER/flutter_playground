import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Container(
              child: Row(
                children: [Text("금호동3가"),Icon(Icons.arrow_downward)],
              ),
            ),
            actions: [Icon(Icons.search),Icon(Icons.menu),Icon(Icons.alarm_outlined)],
          ),
          body: Container(
            padding: EdgeInsets.all(8),
            height: 150,
            child: Row(
              children: [
                Image.network('https://dummyimage.com/sqrpop', width: 150),
                Container(
                    width: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("캐논 DSLR 100D (단렌즈, 충전기 16기가 SD 포함)"),
                          Text("성동구 행당동 끌올 10분전",style: TextStyle(color: Colors.blueGrey)),
                          Text("210,000", style: TextStyle(fontWeight: FontWeight.w700)),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.heart_broken),
                                Text("4")
                          ]),

                  ]
                ))
              ],
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            child: SizedBox(
              height:50,
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.call),
                  Icon(Icons.message),
                  Icon(Icons.document_scanner)
                ],
              ),
            )),

    ));
  }
}

// shift + shift : 파일 탐색
// F4 / Control + Enter : 해당 소스코드로 이동
// alt + Enter : 편의 기능 제공 ( 힌트, widget, container, sizeBox 감싸기 )
// Control + F4 : 현재 화면 닫기 ( 단축키 변경하여 사용 > ctrl + w )

// Open type hierarchy(Control + H) : 선택된 class 등의 계층구조를 펼쳐서 보여주는 단축키.
// Open method hierarchy(Control + Shift + H) : 선택된 method의 계층구조를 펼쳐서 보여주는 단축키. 소스 분석이나 흐름등을 파악할 때 유용하다.
// Open call hierarchy(Control + Alt + H) : 선택된 method의 호출구조를 파악할때 유용하다. 어디서 호출되는지 펼쳐서 보여주는 단축키.

// 1. 기본 환경설정 학습
// 2. text 입력 방법 학습
// Text("Hello World")
// 3. 이미지 입력 방법 학습
// 3.1 pubspec.yml > flutter > assets > assets/ 이미지 파일 경로 작성
// 3.2 Image.assets("image_name.png")
// 4. 컨테이너 작성 방법 학습
// 4.1 home : Container( with : 시작 위치, height : 시작 위치, color : Colors.blue)
// 5. 상중하 ( 계층형 ) 으로 나눠주는 방법 학습
// 5.1 Scaffold()
// 5.2 Scaffold > appBar : AppBar()
// 5.2 Scaffold > body : Container()
// 5.2 Scaffold > bottomNavigationBar : BottomAppBar()



//Row/Column 에는 width, height 설정이 따로 없으므로 Row/Column 에 width, height 를 설정하고자 하는 경우 Container 로 한번 감싸줘야한다.