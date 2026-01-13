import 'package:flutter/material.dart';

class ActionSection extends StatelessWidget {
  const ActionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.07),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          _ActionRow(
            title: "Presentation on RAG",
            type: "PPT",
          ),

          Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Divider(height: 1, color: Colors.grey.shade100,),
          ),

          _ActionRow(
            title: "What is RAG? Retrieval-Augmented...",
            type: "Video",
          ),
        ],
      ),
    );
  }
}

class _ActionRow extends StatelessWidget {
  final String title;
  final String type;

  const _ActionRow({
    required this.title,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    final bool isVideo = type == "Video";

    return Row(
      children: [
        // Icon
        Image.asset(
            isVideo
                ? "assets/youtube.png"
                : "assets/ppt.png",
            width: 26,
            height: 26,
            fit: BoxFit.contain,
          ),

        const SizedBox(width: 8),

        // Text
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                isVideo
                    ? "YouTube Video"
                    : "PowerPoint Presentation",
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),

        // Button
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF5BA7B4),
            elevation: 0,
            padding:
                const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            isVideo ? "Watch" : "Open",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 13,
            ),
          ),
        ),
      ],
    );
  }
}
