import 'package:firebase_auth_app_template/db_interface.dart';
import 'package:flutter/material.dart';

/// This is for the header of the app, you can add icons to it.
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;

  const CustomAppBar({
    Key? key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            Navigator.pop(context);
          }),
      title: Text(
        title ?? 'No title',
        style: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      backgroundColor: Color(Colors.blue.value),
      actions: [
        IconButton(
          color: Colors.white,
          icon: const Icon(Icons.logout),
          onPressed: () {
            DBInterface().signOut();
          },
        ),
      ],
    );
  }

  /// Returns the preferred size of the app bar. Without this, it is an error.
  @override
  Size get preferredSize => const Size.fromHeight(60);
}
