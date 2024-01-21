import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter/material.dart';
import 'package:lumi_newmiss1/widget/clippersEx.dart';
import 'package:lumi_newmiss1/widget/expantiontileEx.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: OnboardingEX(),
  ));
}

class OnboardingEX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
            title: "Page1",
            image: Align(
              alignment: Alignment.center,
              child: Image(image: AssetImage("asset/image/bike.jpg")),
            ))
      ],
      onDone: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => ExpansionTile1())),
      onSkip: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => ClippersEx())),
      showSkipButton: true,
      skip: const Text("skip"),
      next: const Text("Next"),
      done: const Text("Continue"),
      dotsDecorator: const DotsDecorator(
        size: Size(20, 20),
        activeSize: Size(40, 20),
      ),
    );
  }
}
