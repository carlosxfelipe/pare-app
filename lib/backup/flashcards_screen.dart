import 'package:flutter/material.dart';
import 'package:pare/main.dart';

class Deck {
  final String id;
  final String title;
  List<Flashcard> cards;

  Deck({required this.id, required this.title, required this.cards});
}

class Flashcard {
  final String question;
  final String answer;

  Flashcard({required this.question, required this.answer});
}

class FlashcardsScreen extends StatefulWidget {
  const FlashcardsScreen({Key? key}) : super(key: key);

  @override
  FlashcardsScreenState createState() => FlashcardsScreenState();
}

class FlashcardsScreenState extends State<FlashcardsScreen> {
  List<Deck> decks = [];

  void _addDeck(String title) {
    final newDeck =
        Deck(id: DateTime.now().toString(), title: title, cards: []);
    setState(() {
      decks.add(newDeck);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flashcards', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.amber,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      drawer: const MainDrawer(),
      body: ListView.builder(
        itemCount: decks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(decks[index].title),
            onTap: () {
              // Ação quando clicar em um deck
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF9C27B0),
        child: const Icon(Icons.add),
        onPressed: () {
          // Função para adicionar um novo deck
          _showAddDeckDialog();
        },
      ),
    );
  }

  void _showAddDeckDialog() {
    TextEditingController titleController = TextEditingController();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Novo Deck'),
          content: TextField(
            controller: titleController,
            decoration: const InputDecoration(hintText: "Título do Deck"),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancelar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Adicionar'),
              onPressed: () {
                _addDeck(titleController.text);
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
