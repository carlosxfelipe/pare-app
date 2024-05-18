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
            'Home',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.amber),
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
            title: const Text('Home'),
            onTap: () {
              context.go('/home');
            },
          ),
          ListTile(
            title: const Text('Dashboard'),
            onTap: () {
              context.go('/dashboard');
            },
          ),
          ListTile(
            title: const Text('Flashcards'),
            onTap: () {
              context.go('/flashcards');
            },
          ),
          ListTile(
            title: const Text('Estudar'),
            onTap: () {
              context.go('/study');
            },
          ),
          ListTile(
            title: const Text('Instituições'),
            onTap: () {
              context.go('/institutions');
            },
          ),
          ListTile(
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
