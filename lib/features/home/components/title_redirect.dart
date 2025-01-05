import 'package:flutter/material.dart';
import 'package:flutter_practice/features/_global/components/condition_wrapper.dart';
import 'package:go_router/go_router.dart';

class ActionButton {
  final String title;
  final Icon icon;
  final String? to;
  const ActionButton({required this.title, required this.icon, this.to});
}

class TitleRedirect extends StatelessWidget {
  final String? title;
  final ActionButton action;

  const TitleRedirect({super.key, this.title, required this.action});

  @override
  Widget build(BuildContext context) {
    void handleRedirect() {
      if (action.to != null) {
        context.go(action.to!);
      }
    }

    return Container(
      padding: const EdgeInsets.only(right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ConditionWrapper(
              condition: title != null,
              child: Text(
                title ?? '',
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )),
          GestureDetector(
            onTap: handleRedirect,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  action.title,
                  style: const TextStyle(color: Colors.grey, fontSize: 14),
                ),
                const Icon(
                  Icons.arrow_right_sharp,
                  color: Colors.grey,
                  size: 24,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
