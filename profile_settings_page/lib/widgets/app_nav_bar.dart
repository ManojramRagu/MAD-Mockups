import 'package:flutter/material.dart';

class AppNavBar extends StatelessWidget {
  const AppNavBar({
    super.key,
    required this.currentIndex,
    required this.onChanged,
  });

  final int currentIndex;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    return NavigationBarTheme(
      data: const NavigationBarThemeData(
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      ),
      child: NavigationBar(
        selectedIndex: currentIndex,
        onDestinationSelected: onChanged,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home_outlined), label: ''),
          NavigationDestination(icon: Icon(Icons.swap_vert), label: ''),
          NavigationDestination(
            icon: Icon(Icons.chat_bubble_outline),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.account_balance_wallet_outlined),
            label: '',
          ),
          NavigationDestination(icon: Icon(Icons.person_outline), label: ''),
        ],
      ),
    );
  }
}
