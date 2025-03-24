import 'package:chat/models/usuario.dart';
import 'package:flutter/material.dart';

class UsuariosPage extends StatefulWidget {
  const UsuariosPage({super.key});

  @override
  State<UsuariosPage> createState() => _UsuariosPageState();
}

class _UsuariosPageState extends State<UsuariosPage> {
  final usuarios = [
    Usuario(online: true, email: 'test1@test.com', nombre: 'Maria', uid: '1'),
    Usuario(online: true, email: 'test2@test.com', nombre: 'Melissa', uid: '2'),
    Usuario(
        online: false, email: 'test3@test.com', nombre: 'Fernando', uid: '3'),
    Usuario(online: true, email: 'test4@test.com', nombre: 'Ignacio', uid: '4'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mi nombre',
          style: TextStyle(color: Colors.black87),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.check_circle,
              color: Colors.blue[400],
            ),
          )
        ],
        elevation: 1,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.exit_to_app,
            color: Colors.black87,
          ),
          onPressed: () {},
        ),
      ),
      body: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => ListTile(
          title: Text(usuarios[index].nombre),
          subtitle: Text(
            usuarios[index].email,
            style: const TextStyle(color: Colors.black54),
          ),
          leading: CircleAvatar(
            child: Text(usuarios[index].nombre.substring(0, 2)),
          ),
          trailing: Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: usuarios[index].online ? Colors.green[300] : Colors.red,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: usuarios.length,
      ),
    );
  }
}
