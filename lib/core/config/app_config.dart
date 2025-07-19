// **************************************************************************
// CONFIGURAÇÃO COMPLETA DE TODAS AS APIs - CONFIGURE SUAS CHAVES AQUI
// **************************************************************************

class AppConfig {
  // 📱 APP INFO
  static const String APP_NAME = 'Cognito Terminal';
  static const String APP_VERSION = '1.0.0';
  
  // 🟢 DADOS FINANCEIROS FUNDAMENTAIS
  static const String FMP_API_KEY = 'vY4Gr9g7DGLupK0hddoCauU9pTSxoFqX'; 
  static const String POLYGON_API_KEY = 'SUA_CHAVE_POLYGON_AQUI';
  static const String FINNHUB_API_KEY = 'SUA_CHAVE_FINNHUB_AQUI';
  static const String ALPHA_VANTAGE_API_KEY = 'SUA_CHAVE_ALPHA_VANTAGE_AQUI';
  static const String IEX_CLOUD_API_KEY = 'SUA_CHAVE_IEX_CLOUD_AQUI';

  // 🟡 INTELIGÊNCIA ARTIFICIAL
  static const String OPENAI_API_KEY = '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';
  static const String GEMINI_API_KEY = 'AIzaSyC6zlH2Qp0FvAya12X6NiPt6KZ7d3dcpaM';
  static const String CLAUDE_API_KEY = 'SUA_CHAVE_CLAUDE_AQUI';

  // 🔴 NOTÍCIAS E SENTIMENTO
  static const String NEWS_CATCHER_API_KEY = 'SUA_CHAVE_NEWS_CATCHER_AQUI';
  static const String BENZINGA_API_KEY = 'SUA_CHAVE_BENZINGA_AQUI';
  static const String CONTEXTUAL_WEB_API_KEY = 'SUA_CHAVE_CONTEXTUAL_WEB_AQUI';

  // 🟠 INSIDER TRADING E EVENTOS
  static const String OPEN_INSIDER_API_KEY = 'SUA_CHAVE_OPEN_INSIDER_AQUI';
  static const String SEC_EDGAR_ACCESS_TOKEN = 'SUA_CHAVE_SEC_EDGAR_AQUI';

  // 🔵 DADOS ALTERNATIVOS E ESG
  static const String SUSTAINALYTICS_API_KEY = 'SUA_CHAVE_SUSTAINALYTICS_AQUI';
  static const String ZACKS_API_KEY = 'SUA_CHAVE_ZACKS_AQUI';
  static const String QUANDL_API_KEY = 'SUA_CHAVE_QUANDL_AQUI';

  // 🟣 PAGAMENTOS E INFRAESTRUTURA
  static const String WIZE_API_KEY = 'SUA_CHAVE_WIZE_AQUI';
  static const String STRIPE_API_KEY = 'SUA_CHAVE_STRIPE_AQUI';
  
  // 🎯 TIER LIMITS
  static const Map<String, int> TIER_LIMITS = {
    'FREE': 3,
    'BASIC': 25,
    'PRO': 100,
    'INSTITUTIONAL': -1, // Unlimited
  };
}
