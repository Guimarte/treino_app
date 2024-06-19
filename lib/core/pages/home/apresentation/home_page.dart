import 'package:flutter/material.dart';
import 'package:treino_app/core/shared/widgets/drawer_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Home')),
        endDrawer: const DrawerWidget(),
        body: Container(),
      ),
    );
  }
}
