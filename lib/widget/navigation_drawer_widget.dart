import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:i_am_rich/model/navigation_item.dart';
import 'package:i_am_rich/provider/navigation_provider.dart';

class NavigationDrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Drawer(
        child: Container(
          color: Colors.black87,
          child: ListView(
            children: [
              Container(
                child: Column(
                  children: [
                    const SizedBox(height: 2),
                    buildMenuItem(
                      context,
                      item: NavigationItem.learning_flutter,
                      text: 'My ID Card',
                      icon: Icons.add_card,
                    ),
                    const SizedBox(height: 26),
                    buildMenuItem(context,
                        item: NavigationItem.dicee,
                        text: 'Dicee',
                        icon: Icons.videogame_asset_sharp),
                    const SizedBox(height: 26),
                    buildMenuItem(context,
                        item: NavigationItem.Xylophone,
                        text: 'Xylophone',
                        icon: Icons.music_note)
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  Widget buildMenuItem(
    BuildContext context, {
    required NavigationItem item,
    required String text,
    required IconData icon,
  }) {
    final provider = Provider.of<NavigationProvider>(context);
    final currentItem = provider.navigationItem;
    final isSelected = item == currentItem;

    final iconColor;
    final TextStyle style;
    if (isSelected) {
      style = TextStyle(color: Colors.green, fontSize: 24);
      iconColor = Colors.grey;
    } else {
      style = TextStyle(color: Colors.white, fontSize: 24);
      iconColor = Colors.white;
    }

    return Material(
        color: Colors.transparent,
        child: ListTile(
          selected: isSelected,
          selectedTileColor: Colors.white,
          leading: Icon(icon, color: iconColor),
          title: Text(text, style: style),
          onTap: () => {
            selectItem(context, item),
          },
        ));
  }

  void selectItem(BuildContext context, NavigationItem item) {
    final provider = Provider.of<NavigationProvider>(context, listen: false);
    provider.setNavigationItem(item);
  }
}
