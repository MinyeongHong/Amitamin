import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:amitamin/common/common.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends ConsumerState<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return DefaultMainLayout(
      child: WillPopScope(
        onWillPop: () async {
          onWillPopClose();
          return false;
        },
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const SizedBox(height: 63,),
                  Row(
                    children: [
                      const Spacer(),
                      SvgPicture.asset(
                        "assets/icons/app_logo.svg",
                        width: 177,
                        height: 140,
                      ),
                      const Spacer(),
                    ],
                  ),
                  const SizedBox(height: 40,),
                  OutlinedInput(
                    onChanged: (String email) {},
                    hintText: '이메일을 입력하세요',
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 12),
                  OutlinedInput(
                    onChanged: (String pwd) {},
                    hintText: '비밀번호를 입력하세요',
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                  ),
                  const SizedBox(height: 22),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: SvgPicture.asset(
                          "assets/icons/radio_unchecked.svg",
                          width: 24,
                          height: 24,
                        ),
                      ),
                      const SizedBox(width: 5,),
                      const Text(
                        "자동로그인",
                        style: CustomText.body6
                      ),
                    ],
                  ),
                  const SizedBox(height: 5,),
                  BlueTextButton(
                      onPressed: () {
                        // TODO : 로그인 로직 추가
                        context.go("/home");
                      },
                      text: "로그인",
                  ),
                  const SizedBox(height: 22),
                  Row(
                    children: [
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          // 비밀번호 찾기 화면 이동
                          context.go('/registerFirstStep');
                        },
                        child: Text(
                          "회원가입",
                          style: TextStyle(
                            fontSize: CustomText.body7.fontSize,
                            fontWeight: CustomText.body7.fontWeight,
                            fontFamily: CustomText.body7.fontFamily,
                            color: CustomColor.extraDarkGray
                          ),
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          // 비밀번호 찾기 화면 이동
                          context.go('/login/findPassword');
                        },
                        child: Text(
                          "비밀번호 찾기",
                          style: TextStyle(
                              fontSize: CustomText.body7.fontSize,
                              fontWeight: CustomText.body7.fontWeight,
                              fontFamily: CustomText.body7.fontFamily,
                              color: CustomColor.extraDarkGray
                          ),
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                  const SizedBox(height: 22),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


