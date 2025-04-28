import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_card/data/user_details.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

  void _sendMoney() {
    print('You have successfully transfered money!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        leading: Icon(Icons.people),
        title: Text('Users',
        style: GoogleFonts.lato(
          fontSize: 20,
          fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: userDetails.length,
        itemBuilder: (ctx, index) {
          final user = userDetails[index];
          return Card(
            margin: const EdgeInsets.all(16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.person),
                      const SizedBox(width: 6),
                      Text(user.name, 
                      style: GoogleFonts.lato(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      )
                      ),
                    ],
                  ),
                  const SizedBox(height: 12,),
                  Row(
                    children: [
                      const Icon(Icons.account_balance_wallet),
                      const SizedBox(width: 6),
                      Text('\$${user.balance.toStringAsFixed(2)}',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12,),
                  ElevatedButton.icon(
                    icon: Icon(Icons.send),
                    onPressed: _sendMoney, 
                    label: Text('Send Money'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primaryContainer
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}