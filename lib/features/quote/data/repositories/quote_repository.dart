import 'package:familiaquotes/features/quote/data/services/quote_service_provider.dart';
import 'package:familiaquotes/features/quote/domain/entities/random_verse_model.dart';

class QuoteRepository {
  final QuoteServiceProvider _serviceProvider = QuoteServiceProvider();

  Future<RandomVerse> getQuote() {
    return _serviceProvider.getRequest();
  }
}
