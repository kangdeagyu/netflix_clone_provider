import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen(
      {super.key,
      required this.imageAssets,
      required this.title,
      required this.subtitle,
      required this.isLastPage});

  final String imageAssets; // 이미지
  final String title; // 타이틀
  final String subtitle; // 서브 타이틀
  final bool isLastPage;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        isLastPage
            ? Expanded(
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      imageAssets,
                      fit: BoxFit.cover,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 25,
                        ),
                        Text(
                          title,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 45,
                            shadows: [
                              Shadow(
                                color: Colors.black,
                                blurRadius: 5.0,
                                offset: Offset(1.0, 1.0),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          subtitle,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            shadows: [
                              Shadow(
                                color: Colors.black,
                                blurRadius: 5.0,
                                offset: Offset(1.0, 1.0),
                              ),
                            ],
                          ),
                        ),
                        const Text(
                          "\nnetflix.com/more에서\n넷플릭스 계정을 만들고\n관리하세요 ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            shadows: [
                              Shadow(
                                color: Colors.black,
                                blurRadius: 1.0,
                                offset: Offset(1.0, 1.0),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            : Image.asset(imageAssets),
        if (!isLastPage) ...[
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 45,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          const Text(
            "\nnetflix.com/more에서 넷플릭스\n계정을 만들고 관리하세요 ",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ],
      ],
    );
  }
}
