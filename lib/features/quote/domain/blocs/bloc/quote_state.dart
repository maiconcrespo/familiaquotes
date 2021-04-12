part of 'quote_bloc.dart';

@immutable
abstract class QuoteState extends Equatable {}

class QuotesLoading extends QuoteState {
  @override
  final CircularProgressIndicator isLoading = CircularProgressIndicator();

  @override
  List<Object?> get props => [isLoading];
}

class QuotesLoaded extends QuoteState {
  QuotesLoaded(this.text, this.author);
  final RandomVerse text;
  final Book author;

  @override
  List<Object?> get props => [text, author];
}

class QuotesNotLoaded extends QuoteState {
  @override
  List<Object?> get props => ['QuotesNotLoaded'];
}
