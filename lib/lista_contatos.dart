import 'package:flutter/material.dart';
import 'package:list/contato.dart';


class ListaContatos extends StatefulWidget {
  const ListaContatos({Key? key}) : super(key: key);

  @override
  State<ListaContatos> createState() => _ListaContatosState();
}

class _ListaContatosState extends State<ListaContatos> {
  List<Contato> contatos = [
    Contato(nome: "Naomi", email: "naomi@fiap.com.br"),
    Contato(nome: "João", email: "naomi@fiap.com.br"),
    Contato(nome: "Lucas", email: "naomi@fiap.com.br"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contatos"),
      ),
      body: ListView.builder(
        itemCount: contatos.length,
        itemBuilder: (BuildContext contex, int index ){
          return ListTile(
            leading: CircleAvatar(child: Text(contatos[index].nome.substring(0,1))),
            title: Text(contatos[index].nome),
            subtitle: Text(contatos[index].email),
          );
        },
       
      )
    );
  }
}