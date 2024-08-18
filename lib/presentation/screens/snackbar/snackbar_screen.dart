import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class   SnackbarScreen extends StatelessWidget {

  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar( BuildContext context ) {

    final snackback = SnackBar(
      content: const Text('Hola Mundo'),
      action: SnackBarAction(label: 'Ok!', onPressed: (){}),
      duration: const Duration(seconds: 2),
    );
     ScaffoldMessenger.of(context).showSnackBar(snackback);
  }


  void openDialog( BuildContext context ) {

    showDialog(
      context: context,
      barrierDismissible: false, 
      builder: (context) => AlertDialog(
        title: const Text('Estas seguro?'),
        content: const Text('Excepteur id consectetur culpa ex cillum dolor non officia. Officia nostrud elit quis exercitation. Duis culpa anim tempor magna ea. Amet eiusmod adipisicing nulla laborum. Magna commodo esse id irure Lorem eu excepteur aliquip fugiat occaecat. Et laborum mollit occaecat qui. Non nulla minim nulla occaecat.'),
        actions: [

          TextButton(onPressed: ()=> context.pop(), child: const Text('Cancelar')),
          FilledButton(onPressed: ()=> context.pop(), child: const Text('Aceptar')),
        ],
      ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snackbars y Dialogos'),
      ),


      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            FilledButton.tonal(
              onPressed: (){
                showAboutDialog(
                  context: context,
                  children: [
                    const Text('Voluptate irure et veniam elit commodo Lorem eu amet duis incididunt aute reprehenderit id nisi.Voluptate fugiat magna sit ipsum pariatur deserunt eu. Consequat proident commodo occaecat nisi eiusmod velit duis. Pariatur pariatur nostrud officia laborum dolore nulla officia.')
                  ]
                  );
              }, 
              child: const Text('Licencias usadas')),

              FilledButton.tonal(
              onPressed:()=> openDialog(context), 
              child: const Text('Mostrar dialogo'))
          ],
        ),
      ),


      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}