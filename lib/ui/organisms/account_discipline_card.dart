import 'package:flutter/material.dart';
import '../atoms/atoms.dart';

class AccountDisciplineCard extends StatelessWidget {
  final int strikesCount;

  const AccountDisciplineCard({super.key, this.strikesCount = 0});

  @override
  Widget build(BuildContext context) {
    final bool isClean = strikesCount == 0;
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Status disciplinar cont', style: TextStyle(fontWeight: FontWeight.bold)),
              StatusBadge(
                text: isClean ? 'Cont activ (0 abateri)' : '$strikesCount abateri înregistrate',
                color: isClean ? Colors.green.shade700 : Colors.orange.shade800,
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            'Conform regulamentului, abaterile repetate duc la suspendarea progresivă a contului, până la suspendarea definitivă.',
            style: TextStyle(fontSize: 12, color: Colors.grey.shade700),
          ),
        ],
      ),
    );
  }
}