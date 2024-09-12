import 'package:flutter/material.dart';

class FutsalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Futsal'),
        backgroundColor: Colors.brown,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  'assets/torneio4.jpg',
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 200,
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                width: MediaQuery.of(context).size.width * 0.9, // Aumenta a box até 90% da tela
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center, // Centraliza as informações
                  children: [
                    Text(
                      'Futsal - Sub 18',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10), // Espaço entre o título e as informações
                    Text(
                      'Organizador: Jailson Mendes',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'Data: 01/01/2000',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'Horário: 12:00',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'Idade: 18 - 20 anos',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20), // Espaço entre o box de informações e o botão
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                ),
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Taxa de entrada: 10,00 R\$',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    GestureDetector(
                      onTap: () {
                        // Lógica para alterar método de pagamento
                      },
                      child: Text(
                        'Alterar método de pagamento',
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20), // Espaço entre o box de pagamento e o botão
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9, // Aumenta o botão
                child: ElevatedButton(
                  onPressed: () {
                    // Lógica para inscrição
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(16.0),
                    primary: Colors.grey[800], // Cor do botão
                  ),
                  child: Text(
                    'Inscrever-se',
                    style: TextStyle(fontSize: 18, color: Colors.white), // Ajustando o estilo do texto
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
