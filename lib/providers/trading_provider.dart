import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/stock_data.dart';
import '../models/portfolio.dart';

class TradingProvider extends ChangeNotifier {
  List<StockData> _stocks = [];
  Portfolio? _portfolio;
  bool _isLoading = false;
  String? _error;

  List<StockData> get stocks => _stocks;
  Portfolio? get portfolio => _portfolio;
  bool get isLoading => _isLoading;
  String? get error => _error;

  TradingProvider() {
    loadInitialData();
  }

  Future<void> loadInitialData() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      await Future.wait([
        _loadStocks(),
        _loadPortfolio(),
      ]);
    } catch (e) {
      _error = 'Erro ao carregar dados: $e';
    }

    _isLoading = false;
    notifyListeners();
  }

  Future<void> _loadStocks() async {
    // Dados simulados para demo
    await Future.delayed(const Duration(seconds: 1));
    
    _stocks = [
      StockData(
        symbol: 'PETR4',
        name: 'Petrobras PN',
        price: 28.45,
        change: 0.85,
        changePercent: 3.08,
      ),
      StockData(
        symbol: 'VALE3',
        name: 'Vale ON',
        price: 65.20,
        change: -1.25,
        changePercent: -1.88,
      ),
      StockData(
        symbol: 'ITUB4',
        name: 'Itaú Unibanco PN',
        price: 32.15,
        change: 0.45,
        changePercent: 1.42,
      ),
      StockData(
        symbol: 'BBDC4',
        name: 'Bradesco PN',
        price: 18.90,
        change: -0.30,
        changePercent: -1.56,
      ),
      StockData(
        symbol: 'ABEV3',
        name: 'Ambev ON',
        price: 14.25,
        change: 0.15,
        changePercent: 1.06,
      ),
    ];
  }

  Future<void> _loadPortfolio() async {
    // Dados simulados para demo
    await Future.delayed(const Duration(milliseconds: 800));
    
    _portfolio = Portfolio(
      totalValue: 125430.50,
      dailyChange: 2847.30,
      dailyChangePercent: 2.32,
      positions: [
        Position(symbol: 'PETR4', quantity: 500, avgPrice: 26.80),
        Position(symbol: 'VALE3', quantity: 200, avgPrice: 68.45),
        Position(symbol: 'ITUB4', quantity: 300, avgPrice: 31.20),
      ],
    );
  }

  Future<void> refreshData() async {
    await loadInitialData();
  }
}
