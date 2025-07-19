import 'package:flutter/material.dart';
import '../../presentation/screens/auth/login_screen.dart';
import '../../presentation/screens/dashboard/dashboard_screen.dart';
import '../../presentation/screens/analysis/analysis_screen.dart';
import '../../presentation/screens/alerts/alerts_screen.dart';
import '../../presentation/screens/portfolio/portfolio_screen.dart';
import '../../presentation/screens/history/history_screen.dart';
import '../../presentation/screens/market/market_home_page.dart';

class AppRoutes {
  static const String login = '/login';
  static const String dashboard = '/dashboard';
  static const String analysis = '/analysis';
  static const String alerts = '/alerts';
  static const String portfolio = '/portfolio';
  static const String history = '/history';
  static const String market = '/market';

  static Map<String, WidgetBuilder> get routes {
    return {
      login: (context) => const LoginScreen(),
      dashboard: (context) => const DashboardScreen(),
      analysis: (context) => const AnalysisScreen(),
      alerts: (context) => const AlertsScreen(),
      portfolio: (context) => const PortfolioScreen(),
      history: (context) => const HistoryScreen(),
      market: (context) => const MarketHomePage(),
    };
  }
}
