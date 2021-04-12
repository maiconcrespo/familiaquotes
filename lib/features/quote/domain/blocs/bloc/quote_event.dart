part of 'quote_bloc.dart';

abstract class QuoteEvent {}

class LoadApiQuote extends QuoteEvent {
  @override
  String toString() => 'LoadQuotes';
}

class ReloadApiQuote extends QuoteEvent {}

class LoadPersonalizedQuote extends QuoteEvent {}

class OnNextQuote extends QuoteEvent {}

class OnPreviousQuote extends QuoteEvent {}
