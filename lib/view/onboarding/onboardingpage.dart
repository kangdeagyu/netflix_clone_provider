import 'package:flutter/material.dart';
import 'package:netflix_provider/widget/onboarding/onboarding_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 80,
          child: Image.asset("assets/images/Netflix-Brand-Logo.png"),
        ),
        centerTitle: false, // title을 왼쪽에 정렬
        titleSpacing: 0.0,
        backgroundColor: Colors.black,
        actions: [
          GestureDetector(
            child: const Text(
              "개인정보",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              //
            },
          ),
          const SizedBox(
            width: 10,
          ),
          GestureDetector(
            child: const Text(
              "고객 센터",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              //
            },
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            children: const [
              OnboardingScreen(
                title: "다양한 디바이스로\n시청",
                imageAssets: 'assets/images/netflix_onboarding1.jpg',
                subtitle: '스마트폰, 태플릿, 노트북, TV에서\n마음껏 스트리밍하세요.',
                isLastPage: false,
              ),
              OnboardingScreen(
                title: "모두를 위한\n다양한 맵버십",
                imageAssets: 'assets/images/netflix_onboarding2.jpg',
                subtitle: '착한 가격으로 누리는 큰 즐거움.',
                isLastPage: false,
              ),
              OnboardingScreen(
                title: "온라인으로\n언제든지 해지\n가능",
                imageAssets: 'assets/images/netflix_onboarding3.jpg',
                subtitle: '오늘 가입하세요. 기다릴 이유가\n없습니다.',
                isLastPage: false,
              ),
              OnboardingScreen(
                title: "시청하려면 어떻게\n하나요?",
                imageAssets: 'assets/images/netflix_onboarding4.jpeg',
                subtitle: '넷플릭스에 가입하면 앱으로\n시청 가능합니다.',
                isLastPage: true,
              ),
            ],
          ),
          Positioned(
            bottom: 105,
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SmoothPageIndicator(
                  controller: pageController,
                  count: 4,
                  effect: const SwapEffect(
                    activeDotColor: Colors.red,
                    dotHeight: 8,
                    dotWidth: 8,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // 버튼이 클릭되었을 때 동작
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 250, 17, 0),
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  child: const Text(
                    '로그인',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
