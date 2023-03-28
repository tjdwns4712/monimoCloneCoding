import 'package:flutter/material.dart';
import 'package:monimo/pages/alarmPage.dart';
import 'package:monimo/pages/dailyCheckPage.dart';
import 'package:monimo/pages/favoritesPage.dart';
import 'package:monimo/pages/jellyPage.dart';
import 'package:monimo/pages/moneySend.dart';
import 'package:monimo/pages/todayLuckyPage.dart';
import 'package:monimo/pages/todayNewsPgae.dart';
import 'package:monimo/pages/todayWeatherPage.dart';
import 'package:monimo/pages/walkPage.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

const double homepageBoxWidth = 170;
const double homepageBoxHeight = 150;
const double homepageBox2Width = 360;
const double homepageBox2Height = 40;

const String mainNewsSector1 = '뉴스레터';
const String mainNewsSector2 = '산책지수';
const String mainNewsSector3 = '운세톡톡';

const String mainNews1 = '파월의장의 발언';
const String mainNews2 = '오늘의 미세먼지';
const String mainNews3 = '오늘 나의 운세는?';

final pageviewItem = [
  '코스피',
  '코스닥',
  's&p500',
];

var homeBlurSet = Colors.black.withOpacity(0.1);
var myJelly = 0;

class _homePageState extends State<homePage> {
  int currentPage = 0;
  final PageController _mainPageController = PageController(initialPage: 0);

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(23, 23, 23, 0),
          child: Container(
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'monimo',
                          style: TextStyle(
                              fontSize: 34, fontWeight: FontWeight.w800),
                        ),
                        const SizedBox(
                          width: 120,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const moneySend(),
                              ),
                            );
                          },
                          child: const Text(
                            '송금',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const alarmPage(),
                              ),
                            );
                          },
                          icon: const Icon(
                            Icons.alarm_add,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.all(10),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const walkPgae(),
                                ),
                              );
                            },
                            child: Container(
                              width: homepageBoxWidth,
                              height: homepageBoxHeight,
                              decoration: BoxDecoration(
                                color: Colors.blueAccent.shade100,
                                boxShadow: [
                                  BoxShadow(
                                    offset: const Offset(5, 5),
                                    blurRadius: 10,
                                    spreadRadius: 5,
                                    color: Colors.black.withOpacity(0.1),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: const [
                                        Text(
                                          '목표 걸음을',
                                          style: TextStyle(
                                            fontSize: 19,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: const [
                                        Text(
                                          '달성했을까요?',
                                          style: TextStyle(
                                            fontSize: 19,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const Icon(
                                      Icons.run_circle,
                                      size: 50,
                                      color: Colors.blueGrey,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const jellyPage(),
                                  ));
                            },
                            child: Container(
                              width: homepageBoxWidth,
                              height: homepageBoxHeight,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    offset: const Offset(5, 5),
                                    blurRadius: 10,
                                    spreadRadius: 5,
                                    color: Colors.black.withOpacity(0.1),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: const [
                                        Text(
                                          '나의 젤리',
                                          style: TextStyle(
                                              fontSize: 19,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(
                                          width: 50,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      width: 160,
                                      height: 37,
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.1),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Icon(
                                            Icons.favorite_border_rounded,
                                            size: 18,
                                          ),
                                          Text(
                                            '$myJelly',
                                            style: const TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 7,
                                    ),
                                    Container(
                                      width: 160,
                                      height: 37,
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.1),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Icon(
                                            Icons.favorite_rounded,
                                            size: 18,
                                          ),
                                          Text(
                                            '$myJelly',
                                            style: const TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const dailyCheckPage(),
                                ),
                              );
                            },
                            child: Container(
                              width: homepageBoxWidth,
                              height: homepageBoxHeight,
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    offset: const Offset(5, 5),
                                    blurRadius: 10,
                                    spreadRadius: 5,
                                    color: Colors.black.withOpacity(0.1),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 15, 15, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Row(
                                      children: const [
                                        Text(
                                          '출석 체크하고',
                                          style: TextStyle(
                                            fontSize: 19,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: const [
                                        Text(
                                          '젤리를 모아요',
                                          style: TextStyle(
                                            fontSize: 19,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 40,
                                    ),
                                    Transform.scale(
                                      scale: 6,
                                      child: const Icon(
                                        Icons.circle_outlined,
                                        color: Colors.black87,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: homepageBox2Width,
                    height: homepageBox2Height,
                    child: Expanded(
                      child: PageView.builder(
                        scrollDirection: Axis.vertical,
                        pageSnapping: true,
                        controller: _mainPageController,
                        itemCount: pageviewItem.length,
                        onPageChanged: (value) {},
                        itemBuilder: (context, index) {
                          return Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Text(
                              '오늘의 $pageviewItem',
                              style: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(25),
                    width: homepageBox2Width,
                    height: 333,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(5, 5),
                          blurRadius: 10,
                          spreadRadius: 5,
                          color: Colors.black.withOpacity(0.1),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '오늘의 소식',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const todayNewsPage(),
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              const Icon(
                                Icons.today,
                                size: 45,
                                color: Colors.black54,
                              ),
                              const SizedBox(
                                width: 13,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    mainNewsSector1,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black38,
                                    ),
                                  ),
                                  Text(
                                    mainNews1,
                                    style: TextStyle(fontSize: 19),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        Container(
                          color: Colors.black12,
                          width: 300,
                          height: 1,
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const todayWeatherPage(),
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              const Icon(
                                Icons.sunny,
                                size: 45,
                                color: Colors.amber,
                              ),
                              const SizedBox(
                                width: 13,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    mainNewsSector2,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black38,
                                    ),
                                  ),
                                  Text(
                                    mainNews2,
                                    style: TextStyle(fontSize: 19),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        Container(
                          color: Colors.black12,
                          width: 300,
                          height: 1,
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const todayLuckyPage(),
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              const Icon(
                                Icons.favorite,
                                size: 45,
                                color: Colors.redAccent,
                              ),
                              const SizedBox(
                                width: 13,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    mainNewsSector3,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black38,
                                    ),
                                  ),
                                  Text(
                                    mainNews3,
                                    style: TextStyle(fontSize: 19),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: homepageBox2Width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        Row(
                          children: [
                            const Text(
                              '관심소식',
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const favoritesPage(),
                                  ),
                                );
                              },
                              child: Row(
                                children: const [
                                  SizedBox(
                                    width: 150,
                                  ),
                                  Text('관심사1'),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text('관심사2'),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Icon(Icons.settings),
                                ],
                              ),
                            ),
                            const SizedBox(height: 300)
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


/*

bottomNavigationBar: SizedBox(
        height: 95,
        child: BottomNavigationBar(
          onTap: (index) {},
          currentIndex: _selectedIndex,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.my_library_books),
              label: '투데이',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '마이',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.badge),
              label: '상품',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.gpp_good),
              label: '혜택',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: '더보기',
            ),
          ],
          iconSize: 30,
        ),
      ),
      
        void initState() {
    super.initState();

    Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (currentPage < 2) {
        currentPage++;
      } else {
        currentPage = 0;
      }
      _mainPageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });
  }

  앱 하단바와 함께 사용시 오류를 범함. 임시로 제외함 
      */