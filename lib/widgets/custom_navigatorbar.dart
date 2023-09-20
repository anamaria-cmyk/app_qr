// ignore_for_file: use_key_in_widget_constructors, unused_local_variable
import 'package:app_qr/providers/ui_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomNavigationBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final uiProvider = Provider.of<UiProvider>(context);

    final currentIndex = uiProvider.selectedMenuOpt;

    return BottomNavigationBar(
      onTap: ( int i ) => uiProvider.selectedMenuOpt = i,
      elevation: 0,
      items: const <BottomNavigationBarItem> [
        BottomNavigationBarItem(
          icon: Icon( Icons.map_rounded),
          label: 'Mapa'
        ),
         BottomNavigationBarItem(
          icon: Icon( Icons.compass_calibration_outlined),
          label: 'Direcciones'
        ),
      ],
    );
  }
}