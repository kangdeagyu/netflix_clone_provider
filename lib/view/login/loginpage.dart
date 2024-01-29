import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon:
              const Icon(Icons.arrow_back_ios, size: 25.0, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: SizedBox(
          height: 85,
          child: Image.asset("assets/images/Netflix-Brand-Logo.png"),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: [
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
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 330,
              child: TextField(
                controller: emailController,
                cursorColor: Colors.white,
                style: const TextStyle(fontSize: 13),
                decoration: InputDecoration(
                  labelText: '이메일 주소 또는 전화번호',
                  labelStyle:
                      const TextStyle(color: Colors.white, fontSize: 15),
                  filled: true,
                  fillColor: Colors.grey[700],
                  contentPadding: const EdgeInsets.fromLTRB(10, 5, 10, 15),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 330,
              child: TextField(
                controller: passwordController,
                obscureText: isPassword,
                cursorColor: Colors.white,
                style: const TextStyle(fontSize: 13),
                decoration: InputDecoration(
                  labelText: '비밀번호',
                  labelStyle:
                      const TextStyle(color: Colors.white, fontSize: 15),
                  filled: true,
                  fillColor: Colors.grey[700],
                  contentPadding: const EdgeInsets.fromLTRB(10, 5, 10, 15),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  suffix: InkWell(
                    child: Text(
                      isPassword ? '표시' : '숨기기',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    onTap: () {
                      setState(
                        () {
                          isPassword = !isPassword;
                        },
                      );
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 330,
              child: ElevatedButton(
                onPressed: () {
                  //
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
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                //
              },
              child: const Text(
                '비밀번호 재설정',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              child: const Text(
                '로그인 시 Google reCAPTCHA를 이용해 사용자가\n로봇이 아님을 확인합니다. 자세히 알아보기.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {
                //
              },
            )
          ],
        ),
      ),
    );
  }
}
