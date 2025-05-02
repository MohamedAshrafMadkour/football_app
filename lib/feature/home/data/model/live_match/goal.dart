class Goal {
  final int home;
  final int away;

  const Goal({required this.home, required this.away});

  factory Goal.fromJson(Map<String, dynamic> json) {
    return Goal(home: json['home'] ?? 0, away: json['away'] ?? 0);
  }

  factory Goal.empty() {
    return const Goal(home: 0, away: 0);
  }
}
