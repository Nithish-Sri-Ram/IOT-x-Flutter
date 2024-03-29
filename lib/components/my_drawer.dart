import 'package:flutter/material.dart';
import 'package:voltmaster/pages/settings_page.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  @override
  Widget build(BuildContext context) {

    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //logo
          Column(
            children: [
              DrawerHeader(
                  child: Center(
                child: Icon(
                  Icons.bolt_sharp,
                  color: Theme.of(context).colorScheme.primary,
                  size: 75,
                ),
              )),
              //home list tile
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: const Text("H O M E"),
                  leading: const Icon(Icons.home),
                  onTap: () {
                    //Pop the drawer
                    Navigator.pop(context);
                  },
                ),
              ),
              //settings list tile
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: const Text("S E T T I N G S"),
                  leading: const Icon(Icons.settings),
                  onTap: () {
                    //Pop the drawer
                    Navigator.pop(context);

                    //Push the settings page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SettingsPage()),
                    );
                  },
                ),
              )
            ],
          ),

          //Logout List Tile
          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: ListTile(
              title: Text("B O L T   I N C"),
              leading: Icon(Icons.copyright),
            ),
          )
        ],
      ),
    );
  }
}
