import 'package:flutter/material.dart';

class FilterSection extends StatelessWidget {
  const FilterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 8,
            children: [
              const Icon(
                Icons.search,
                size: 32,
                color: Colors.white,
              ),
              Container(
                width: 1,
                color: const Color.fromRGBO(255, 255, 255, 0.3),
                height: 24,
              ),
              const SizedBox(
                width: 200,
                child: TextField(
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                      hintText: 'Search...',
                      focusColor: Colors.white,
                      hintStyle:
                          TextStyle(color: Color.fromRGBO(255, 255, 255, 0.3)),
                      border: InputBorder.none),
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
            decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 0.1),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Row(
              spacing: 6,
              children: [
                Container(
                  padding: const EdgeInsets.all(3),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(162, 158, 240, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: const Icon(
                    Icons.filter_list,
                    size: 22,
                    color: Color.fromRGBO(73, 67, 236, 1),
                  ),
                ),
                const Text(
                  'Filters',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
