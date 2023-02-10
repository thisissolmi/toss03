import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: <Widget>[
          // List> ()
          Padding(
            padding: const EdgeInsets.all(25),
            child: Container(
              width: 343,
              height: 72, //72,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: const ListTile(
                title: Padding(
                  padding: EdgeInsets.fromLTRB(5, 20, 0, 3),
                  child: Text(
                    "토스뱅크",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                trailing: Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      '자산',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  for (int i = 0; i < 5; i++) ...{
                    money(textbank[i], textmoney[i], imagemoney[i], songeum[0]),
                  },
                  for (int i = 5; i < 7; i++) ...{
                    nosongeum(textbank[i], textmoney[i], imagemoney[i]),
                    if (i == 5)
                      const Divider(
                        thickness: 2,
                        indent: 20,
                        endIndent: 20,
                      ),
                  }
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(25, 20, 25, 0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        '소비',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    for (int i = 7; i < 9; i++) ...{
                      if (i == 7)
                        money(textbank[i], textmoney[i], imagemoney[i],
                            neyeok[0]),
                      if (i == 8)
                        const Divider(
                          thickness: 2,
                          indent: 20,
                          endIndent: 20,
                        ),
                      if (i == 8)
                        noneyoek(textbank[i], textmoney[i], imagemoney[i]),
                    }
                  ]),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(25, 20, 25, 0),
            child: SizedBox(
              height: 156,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 127,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        const ListTile(
                          title: Text('안전하게' '\n'),
                          subtitle: Text('신용 점수' '\n' '보기'),
                          // tileColor: Colors.grey,
                        ),
                        Image.asset(
                          "assets/images/check.png",
                          width: 30,
                          height: 30,
                        ),
                      ],
                    ),
                    // width: 100,
                  ),
                  Container(
                    width: 127,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        const ListTile(
                          title: Text("최대 15만원" '\n'),
                          subtitle: Text('카드혜택' '\n' '받기'),
                          // tileColor: Colors.grey,
                        ),
                        Image.asset(
                          "assets/images/purple.png",
                          width: 30,
                          height: 30,
                        ),
                      ],
                    ),
                    // width: 100,
                  ),
                  Container(
                    width: 127,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        const ListTile(
                          title: Text("최근" '\n'),
                          subtitle: Text('만보기'),
                          // tileColor: Colors.grey,
                        ),
                        Image.asset(
                          "assets/images/shose.png",
                          width: 30,
                          height: 30,
                        ),
                      ],
                    ),
                    // width: 100,
                  ),
                  Container(
                    width: 127,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: const [
                        ListTile(
                          title: Text("인기" '\n'),
                          subtitle: Text('더보기'),
                          // tileColor: Colors.grey,
                        ),
                      ],
                    ),
                    // width: 100,
                  ),
                ],
              ),
            ),
          ),
          const Center(
              child: Padding(
            padding: EdgeInsets.all(20),
            child: Text('금액숨기기 ㅣ 자산추가'),
          )),
        ],
      ),
    );
  }
}

Widget money(String a, String b, String c, String d) {
  return ListTile(
    leading: Image(image: AssetImage(c)),
    title: Text(a),
    subtitle: Text(b),
    trailing: Image(
      image: AssetImage(d),
    ),
  );
}

Widget nosongeum(String a, String b, String c) {
  return ListTile(
    leading: Image(image: AssetImage(c)),
    title: Text(a),
    subtitle: Text(b),
  );
}

Widget noneyoek(String a, String b, String c) {
  return ListTile(
    leading: Image(image: AssetImage(c)),
    title: Text(a),
    subtitle: Text(b),
  );
}

List<String> imagemoney = [
  'assets/images/toss.png',
  'assets/images/uri.png',
  'assets/images/ibk.png',
  'assets/images/kakao.png',
  'assets/images/hana.png',
  'assets/images/uri.png',
  'assets/images/naver.png',
  'assets/images/rion.png',
  'assets/images/d-9.png',
];
List<String> textbank = [
  '토스뱅크 통장',
  '우리뱅크월렛카카오통장' '\n' '(저축예금)',
  '보통예금(IBK평생한가족통장',
  '입출금통장',
  '영하나플러스 통장',
  '저축 우리청년희망 적금',
  '적금 포인트머니 2개',
  '이번달 쓴 금액',
  '7월 13일 낼 카드 값',
];
List<String> textmoney = [
  '16,735원',
  '74,000원',
  '0원',
  '0원',
  '12,210원',
  '2,500,000원',
  '2,500,000원',
  '467,200원',
  '1,200원',
];

List<String> songeum = [
  'assets/images/songeum.png',
];

List<String> neyeok = [
  'assets/images/neyeok.png',
];
