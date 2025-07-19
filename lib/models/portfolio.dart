class Portfolio {
  final double totalValue;
  final double dailyChange;
  final double dailyChangePercent;
  final List<Position> positions;

  Portfolio({
    required this.totalValue,
    required this.dailyChange,
    required this.dailyChangePercent,
    required this.positions,
  });

  bool get isPositive => dailyChange >= 0;

  factory Portfolio.fromJson(Map<String, dynamic> json) {
    return Portfolio(
      totalValue: (json['totalValue'] ?? 0).toDouble(),
      dailyChange: (json['dailyChange'] ?? 0).toDouble(),
      dailyChangePercent: (json['dailyChangePercent'] ?? 0).toDouble(),
      positions: (json['positions'] as List<dynamic>?)
          ?.map((p) => Position.fromJson(p))
          .toList() ?? [],
    );
  }
}

class Position {
  final String symbol;
  final int quantity;
  final double avgPrice;

  Position({
    required this.symbol,
    required this.quantity,
    required this.avgPrice,
  });

  double get totalValue => quantity * avgPrice;

  factory Position.fromJson(Map<String, dynamic> json) {
    return Position(
      symbol: json['symbol'] ?? '',
      quantity: json['quantity'] ?? 0,
      avgPrice: (json['avgPrice'] ?? 0).toDouble(),
    );
  }
}
