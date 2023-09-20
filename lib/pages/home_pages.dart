// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:app_qr/pages/direcciones_page.dart';
import 'package:app_qr/pages/mapas_pages.dart';

import 'package:app_qr/widgets/scan_button.dart';
import 'package:app_qr/widgets/custom_navigatorbar.dart';

import 'package:app_qr/providers/db_provider.dart';
import 'package:app_qr/providers/ui_provider.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        elevation: 2,
        leading: Container(),
        title: const Center(
          child: Text('Historial'),
        ),
        actions: [
          IconButton(
            onPressed: () { }, 
            icon: const Icon( Icons.delete_forever_outlined),
          )
        ],
      ),

      body: _HomePageBody(),
      bottomNavigationBar: CustomNavigationBar(),
      floatingActionButton: ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    //obtener el selected menu opt
    final uiProvider = Provider.of<UiProvider>(context);

   //cambiar para mostrar la paguina respectiva
   final  opcionSeleccionada = uiProvider.selectedMenuOpt;

   //TODO: temporal leer la basee de datos 
   
   DBProvider.db.database;
   
   switch( opcionSeleccionada ) {

      case 0:
        return MapasPage();

      case 1:
        return DireccionesPage();

      default:
        return MapasPage();
   }
  }
}