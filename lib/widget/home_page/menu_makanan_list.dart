import 'package:flutter/material.dart';
import 'package:labireen/pages/detail_menu_page.dart';

import 'menu.dart';
import 'menuu_item.dart';

class MenuMakananList extends StatelessWidget {
  const MenuMakananList({
    Key? key,
    required this.selected,
    required this.callback,
    required this.pageController,
    required this.menu,
  }) : super(key: key);

  final int selected;
  final Function callback;
  final PageController pageController;
  final Menu menu;

  @override
  Widget build(BuildContext context) {
    final category = menu.kategori.keys.toList();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: PageView(
        controller: pageController,
        onPageChanged: (index) => callback(index),
        children: category
            .map((e) => GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: 0.708,
                  ),
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) =>
                              DetailMenu(makanan: menu.kategori[e]![index]))));
                    },
                    child: MenuuItem(
                      makanan: menu.kategori[e]![index],
                    ),
                  ),
                  itemCount: menu.kategori[e]!.length,
                ))
            .toList(),
      ),
    );
  }
}
