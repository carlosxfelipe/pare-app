import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            path: 'home',
            builder: (context, state) => const HomeScreen(),
          ),
          GoRoute(
            path: 'dashboard',
            builder: (context, state) => const DashboardScreen(),
          ),
          GoRoute(
            path: 'flashcards',
            builder: (context, state) => const FlashcardsScreen(),
          ),
          GoRoute(
            path: 'study',
            builder: (context, state) => const StudyScreen(),
          ),
          GoRoute(
            path: 'institutions',
            builder: (context, state) => const InstitutionsScreen(),
          ),
          GoRoute(
            path: 'tests',
            builder: (context, state) => const TestsScreen(),
          ),
        ],
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'PARE',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.amber,
          iconTheme: const IconThemeData(
              color: Colors.black) // Ícone do menu hambúrguer em preto
          ),
      drawer: const MainDrawer(),
      body: const Center(child: Text('Bem-vindo à Home Screen!')),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Dashboard',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.amber),
      drawer: const MainDrawer(),
      body: const Center(child: Text('Dashboard')),
    );
  }
}

class FlashcardsScreen extends StatelessWidget {
  const FlashcardsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Flashcards',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.amber),
      drawer: const MainDrawer(),
      body: const Center(child: Text('Flashcards')),
    );
  }
}

class StudyScreen extends StatelessWidget {
  const StudyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Estudar',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.amber),
      drawer: const MainDrawer(),
      body: const Center(child: Text('Estudar')),
    );
  }
}

class InstitutionsScreen extends StatelessWidget {
  const InstitutionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Instituições',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.amber),
      drawer: const MainDrawer(),
      body: const Center(child: Text('Instituições')),
    );
  }
}

class TestsScreen extends StatelessWidget {
  const TestsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Testes',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.amber),
      drawer: const MainDrawer(),
      body: const Center(child: Text('Testes')),
    );
  }
}

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  static const Color iconColor = Color(0xFF9C27B0);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.amber,
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home, color: iconColor),
            title: const Text('Home'),
            onTap: () {
              context.go('/home');
            },
          ),
          ListTile(
            leading: const Icon(Icons.dashboard, color: iconColor),
            title: const Text('Dashboard'),
            onTap: () {
              context.go('/dashboard');
            },
          ),
          ListTile(
            leading: const Icon(Icons.flash_on, color: iconColor),
            title: const Text('Flashcards'),
            onTap: () {
              context.go('/flashcards');
            },
          ),
          ListTile(
            leading: const Icon(Icons.school, color: iconColor),
            title: const Text('Estudar'),
            onTap: () {
              context.go('/study');
            },
          ),
          ListTile(
            leading: const Icon(Icons.business, color: iconColor),
            title: const Text('Instituições'),
            onTap: () {
              context.go('/institutions');
            },
          ),
          ListTile(
            leading: const Icon(Icons.quiz, color: iconColor),
            title: const Text('Testes'),
            onTap: () {
              context.go('/tests');
            },
          ),
        ],
      ),
    );
  }
}
