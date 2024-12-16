import 'package:flutter/material.dart';

class TopicList extends StatelessWidget {
  final String title;
  final List<Map<String, dynamic>> topics;

  const TopicList({super.key, required this.title, required this.topics});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(title,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
      const SizedBox(height: 20),
      Expanded(
        child: ListView.builder(
            itemCount: topics.length,
            itemBuilder: (context, index) {
              return TopicCard(
                  title: topics[index]['title'] as String,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                topics[index]['page'] as Widget));
                  });
            }),
      ),
    ]);
  }
}

class TopicCard extends StatefulWidget {
  final String title;
  final bool? isFavorite;
  final VoidCallback? onFavoriteToggle;
  final VoidCallback onTap;
  final Widget? trailing;

  const TopicCard({
    super.key,
    required this.title,
    this.isFavorite,
    this.onFavoriteToggle,
    required this.onTap,
    this.trailing,
  });

  @override
  _TopicCardState createState() => _TopicCardState();
}

class _TopicCardState extends State<TopicCard>
    with SingleTickerProviderStateMixin {
  late bool _isFavorite;

  @override
  void initState() {
    super.initState();
    _isFavorite = widget.isFavorite ?? false;
  }

  void _toggleFavorite() {
    if (widget.onFavoriteToggle != null) {
      setState(() {
        _isFavorite = !_isFavorite;
      });
      widget.onFavoriteToggle!();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 3,
                blurRadius: 6,
                offset: const Offset(0, 4))
          ],
        ),
        child: ListTile(
          leading: widget.isFavorite != null
              ? IconButton(
                  icon: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    transitionBuilder: (child, anim) =>
                        ScaleTransition(scale: anim, child: child),
                    child: Icon(
                      _isFavorite ? Icons.star : Icons.star_border,
                      key: ValueKey<bool>(_isFavorite),
                      color: _isFavorite ? Colors.yellow : Colors.grey,
                    ),
                  ),
                  onPressed: _toggleFavorite,
                )
              : null,
          title: Text(
            widget.title,
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.blueGrey),
          ),
          trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
        ),
      ),
    );
  }
}
