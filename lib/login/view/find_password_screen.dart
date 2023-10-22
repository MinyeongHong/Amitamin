import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:amitamin/common/common.dart';

class FindPasswordScreen extends ConsumerStatefulWidget {
  const FindPasswordScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<FindPasswordScreen> createState() => FindPasswordScreenState();
}

class FindPasswordScreenState extends ConsumerState<FindPasswordScreen> {

  @override
  Widget build(BuildContext context) {
    return DefaultMainLayout(
      appBar: DefaultAppBar(
        title: '비밀번호 찾기',
        leadingDisable: true,
        actionDisable: false,
        actionOnPressed: () => context.pop(),
      ),
      child: WillPopScope(
        onWillPop: () async {
          context.pop();
          return false;
        },
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 12,),
                  const Text(
                    "이메일을 입력하세요",
                    style: CustomText.body3,
                  ),
                  const SizedBox(height: 12,),
                  OutlinedInput(
                    onChanged: (String email) {},
                    hintText: 'qwerasdf@gmail.com',
                    keyboardType: TextInputType.emailAddress,
                    obscureText: true,
                  ),
                  const SizedBox(height: 12,),
                  BlueTextButton(
                    onPressed: () {
                      // TODO : 비밀번호 찾기 로직 추가
                      
                    },
                    text: "임시 비밀번호 발급",
                  ),
                  const SizedBox(height: 12,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


