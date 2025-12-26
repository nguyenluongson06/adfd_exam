class Destination {
  final int id;
  final String name;
  final double rating;
  final String thumbnailUrl;
  final bool isLiked;

  Destination({
    required this.id,
    required this.name,
    required this.rating,
    required this.thumbnailUrl,
    required this.isLiked,
  });

  factory Destination.fromJson(Map<String, dynamic> json) {
    return Destination(
      id: json['id'],
      name: json['name'],
      rating: (json['rating'] as num).toDouble(),
      thumbnailUrl: json['thumbnailUrl'],
      isLiked: json['isLiked'],
    );
  }
}
