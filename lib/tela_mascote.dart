import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mascote extends StatefulWidget {
  const mascote({super.key});

  @override
  State<mascote> createState() => _mascoteState();
}

class _mascoteState extends State<mascote> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: buildbody());
  }

  buildbody() {
    String a =
        'https://s3.amazonaws.com/media.wikiaves.com.br/images/6255/5526892_beb29b4d03b0fa7762b2e2ab11d3e753.jpg';
    String plano_fundo =
        'https://img.freepik.com/fotos-premium/fundo-da-natureza_35658-136.jpg?semt=ais_hybrid&w=740';
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(plano_fundo),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor:Colors.blueAccent ,
            title: Row(
              children: [  Icon(Icons.currency_exchange),
                Text("00000"),],
            ),
            actions: [
              ElevatedButton(onPressed: (){}, child:   Text("menu",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),),

            ],
          ),
          body: Container(

            child: Column(
              children: [
                Column(
                  children: [
                    Column(
                      children: [
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  buildbody2() {
    return Stack(
      children: [
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          bottom: 0,
          child: Image.network(
            'https://img.freepik.com/fotos-premium/fundo-da-natureza_35658-136.jpg?semt=ais_hybrid&w=740',
            fit: BoxFit.cover,
          ),
        ),

        Scaffold(backgroundColor: Colors.transparent, body: Text('TESTE')),
      ],
    );
  }
}
