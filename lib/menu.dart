import 'package:flutter/material.dart';
import 'principal.dart';
import 'atletismo.dart';
import 'tenis_mesa.dart';
import 'basquete.dart';
import 'futsal.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.person, color: Colors.black),
          onPressed: () {
            Navigator.pushNamed(context, '/cadastro');
          },
        ),
        title: Center(
          child: Text('SportZone', textAlign: TextAlign.center),
        ),
        backgroundColor: Colors.brown,
        actions: [
          DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              icon: Icon(Icons.menu, color: Colors.black),
              items: [
                DropdownMenuItem<String>(
                  value: 'Inicio',
                  child: Text('Início'),
                ),
                DropdownMenuItem<String>(
                  value: 'Torneios',
                  child: Text('Torneios'),
                ),
                DropdownMenuItem<String>(
                  value: 'Inscricoes',
                  child: Text('Inscrições'),
                ),
                DropdownMenuItem<String>(
                  value: 'Perfil',
                  child: Text('Perfil'),
                ),
              ],
              onChanged: (value) {
                switch (value) {
                  case 'Inicio':
                  // Ação para Início
                    break;
                  case 'Torneios':
                  // Ação para Torneios
                    break;
                  case 'Inscricoes':
                  // Ação para Inscrições
                    break;
                  case 'Perfil':
                    Navigator.pushNamed(context, '/cadastro'); // Navegação para Cadastro
                    break;
                }
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centraliza verticalmente
            children: [
              Text(
                'Destaques', // Texto acima das boxes
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20), // Maior espaçamento acima das boxes
              Wrap(
                spacing: 8.0, // Espaço horizontal entre as boxes
                runSpacing: 8.0, // Espaço vertical entre as boxes
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        '/atletismo',
                      );
                    },
                    child: TournamentBox(
                      imageUrl: 'assets/torneio1.jpg',
                      sportName: 'Atletismo',
                      location: 'SESI Itapetininga',
                      date: '12/09/2024',
                      time: '15:00',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        '/tenis_mesa',
                      );
                    },
                    child: TournamentBox(
                      imageUrl: 'assets/torneio2.jpg',
                      sportName: 'Tênis de mesa',
                      location: 'Quadra',
                      date: '14/09/2024',
                      time: '18:00',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        '/basquete',
                      );
                    },
                    child: TournamentBox(
                      imageUrl: 'assets/torneio3.jpg',
                      sportName: 'Basquete',
                      location: 'Ginásio Central',
                      date: '20/09/2024',
                      time: '20:00',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        '/futsal',
                      );
                    },
                    child: TournamentBox(
                      imageUrl: 'assets/torneio4.jpg',
                      sportName: 'Futsal',
                      location: 'Venâncio Aires',
                      date: '22/09/2024',
                      time: '10:00',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TournamentBox extends StatelessWidget {
  final String imageUrl;
  final String sportName;
  final String location;
  final String date;
  final String time;

  const TournamentBox({
    required this.imageUrl,
    required this.sportName,
    required this.location,
    required this.date,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            imageUrl,
            fit: BoxFit.cover,
            width: double.infinity,
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  sportName,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text('Local: $location'),
                Text('Data: $date'),
                Text('Horário: $time'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
