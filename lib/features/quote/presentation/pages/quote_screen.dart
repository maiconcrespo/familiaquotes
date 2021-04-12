import 'package:familiaquotes/features/quote/domain/blocs/bloc/quote_bloc.dart';
import 'package:familiaquotes/features/quote/domain/entities/random_verse_model.dart';
import 'package:flutter/material.dart';

class QuoteScreen extends StatefulWidget {
  @override
  _QuoteScreenState createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {
  @override
  void initState() {
    super.initState();
    bloc.getQuote();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<RandomVerse>(
        stream: bloc.subject.stream,
        builder: (BuildContext context, AsyncSnapshot<RandomVerse> snapshot) {
          if (snapshot.hasError) {
            return _buildErrorWidget('${snapshot.error}');
          } else {
            return _buildLoadingWidget();
          }
        });
  }
}

Widget _buildLoadingWidget() {
  return Center(
      child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text('Loading data from API...'),
      const CircularProgressIndicator(),
    ],
  ));
}

Widget _buildErrorWidget(String error) {
  return Center(
      child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text('Error occured: $error'),
    ],
  ));
}

Widget _buildUserWidget(QuoteResponse data) {
  return Center(
      child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text('User widget'),
    ],
  ));
}
