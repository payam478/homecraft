import 'package:flutter/material.dart';

class ProfessionalCard extends StatelessWidget {
  final String imageAsset;
  final String name;
  final String role;
  final VoidCallback onCall;
  final VoidCallback onChat;

  const ProfessionalCard({
    super.key,
    required this.imageAsset,
    required this.name,
    required this.role,
    required this.onCall,
    required this.onChat,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 3)),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(radius: 26, backgroundImage: AssetImage(imageAsset)),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  role,
                  style: const TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: onCall,
            icon: const Icon(Icons.call, color: Colors.black87),
            tooltip: 'Call',
          ),
          IconButton(
            onPressed: onChat,
            icon: const Icon(Icons.message_rounded, color: Colors.black87),
            tooltip: 'Chat',
          ),
        ],
      ),
    );
  }
}
