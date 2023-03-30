import 'package:flutter/material.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  //Variables que guardarán lo que el usuario escriba en los TextFields
  String userName = '';
  String password = '';
  String email = '';
  String date = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entradas de datos'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0, 
          vertical: 20.0),
          children: [
            _entradaUserName(),
            const Divider(),
            _entradaPassword(),          ],
      ),
    );
  }

  Widget _entradaUserName(){
    return TextField(
      autofocus: true, //un TextField por ventana puede tenerla
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        labelText: 'User name:',
        hintText: 'Escribe aquí tu nombre de usuario',
        //helperText: 'Escribe tu nombre de usuario con minúsculas',
        //icon:const Icon(Icons.person),
        prefixIcon: const Icon(Icons.person),
        suffixIcon: const Icon(Icons.edit),
        suffixIconColor: Colors.red,
      ),
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Color.fromARGB(255, 67, 223, 155),
        fontWeight: FontWeight.bold
      ),
      cursorColor: Colors.pink,
      cursorRadius: const Radius.circular(16.0),
      cursorWidth: 16.0,
      //maxLines: 3,
      onChanged: (value) {
        userName = value;
        print(userName);
      },
      //opciones para introducir valores (Otros eventos del TextField):
      //onSubmitted: ,
      //onEditingComplete: ,
    );
  }

Widget _entradaPassword(){
    return TextField(
       decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        labelText: 'Password:',
        hintText: 'Escribe aquí tu contraseña',
        //helperText: 'Escribe tu nombre de usuario con minúsculas',
        //icon:const Icon(Icons.person),
        prefixIcon: const Icon(Icons.key),
        suffixIcon: const Icon(Icons.edit_attributes),
        suffixIconColor: Colors.red,
        
      ),
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Color.fromARGB(255, 67, 223, 155),
        fontWeight: FontWeight.bold
      ),
      cursorColor: Colors.pink,
      cursorRadius: const Radius.circular(16.0),
      cursorWidth: 16.0,
      obscureText: true,
      maxLength: 8,
      keyboardType: TextInputType.number,
      //maxLines: 3,
      onChanged: (value) {
        password = value;
        print(password);
      },
      //opciones para introducir valores (Otros eventos del TextField):
      //onSubmitted: ,
      //onEditingComplete: ,
    );
  }

}