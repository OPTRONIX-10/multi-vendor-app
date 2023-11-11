import 'package:flutter/material.dart';

class CategoryText extends StatelessWidget {
  CategoryText({super.key});

  List<String> _categoryLabel = [
    'food',
    'vegetable',
    'egg',
    'tea',
    'coffee',
    'juice'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text(
            'Categories',
            style: TextStyle(fontSize: 19),
          ),
          Container(
            height: 40,
            child: Row(
              children: [
                Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: _categoryLabel.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: ActionChip(
                              label: Text(
                                _categoryLabel[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              backgroundColor: Colors.yellow[900],
                              onPressed: () {},
                            ),
                          );
                        })),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios_rounded))
              ],
            ),
          )
        ],
      ),
    );
  }
}
