import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/stock_data.dart';

class StockListWidget extends StatelessWidget {
  final List<StockData> stocks;

  const StockListWidget({super.key, required this.stocks});

  @override
  Widget build(BuildContext context) {
    if (stocks.isEmpty) {
      return const Center(
        child: Text('Nenhuma ação disponível'),
      );
    }

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: stocks.length,
      itemBuilder: (context, index) {
        final stock = stocks[index];
        return StockTile(stock: stock);
      },
    );
  }
}

class StockTile extends StatelessWidget {
  final StockData stock;

  const StockTile({super.key, required this.stock});

  @override
  Widget build(BuildContext context) {
    final priceFormat = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');
    final percentFormat = NumberFormat('#,##0.00', 'pt_BR');

    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: CircleAvatar(
          backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.1),
          child: Text(
            stock.symbol.substring(0, 2),
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        title: Text(
          stock.symbol,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        subtitle: Text(
          stock.name,
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 12,
          ),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              priceFormat.format(stock.price),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 4),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              decoration: BoxDecoration(
                color: stock.isPositive
                    ? Colors.green.withOpacity(0.1)
                    : Colors.red.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    stock.isPositive
                        ? Icons.arrow_upward
                        : Icons.arrow_downward,
                    size: 12,
                    color: stock.isPositive ? Colors.green : Colors.red,
                  ),
                  const SizedBox(width: 2),
                  Text(
                    '${percentFormat.format(stock.changePercent.abs())}%',
                    style: TextStyle(
                      color: stock.isPositive ? Colors.green : Colors.red,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        onTap: () {
          // TODO: Navegar para tela de detalhes da ação
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Detalhes de ${stock.symbol}'),
              duration: const Duration(seconds: 1),
            ),
          );
        },
      ),
    );
  }
}
