import 'package:flutter/material.dart';
import 'package:uisecondproject/component/choice_button.dart';

class ChoiceWidget extends StatelessWidget {
  const ChoiceWidget({
    super.key,
    required this.choicesList,
  });

  final List<String> choicesList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          return ChoiceButton(choices: choicesList[index]);
        }),
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 4,
          );
        },
        itemCount: choicesList.length,
      ),
    );
  }
}
