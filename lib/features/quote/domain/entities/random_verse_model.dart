import 'dart:convert';

import 'package:equatable/equatable.dart';

class RandomVerse extends Equatable {
  final Book book;
  final int chapter;
  final int number;
  final String text;
  RandomVerse({
    required this.book,
    required this.chapter,
    required this.number,
    required this.text,
  });

  RandomVerse copyWith({
    Book? book,
    int? chapter,
    int? number,
    String? text,
  }) {
    return RandomVerse(
      book: book ?? this.book,
      chapter: chapter ?? this.chapter,
      number: number ?? this.number,
      text: text ?? this.text,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'book': book.toMap(),
      'chapter': chapter,
      'number': number,
      'text': text,
    };
  }

  factory RandomVerse.fromMap(Map<String, dynamic> map) {
    return RandomVerse(
      book: Book.fromMap(map['book']),
      chapter: map['chapter']?.toInt(),
      number: map['number']?.toInt(),
      text: map['text'],
    );
  }

  String toJson() => json.encode(toMap());

  factory RandomVerse.fromJson(String source) =>
      RandomVerse.fromMap(json.decode(source));

  @override
  String toString() {
    return 'RandomVerse(book: $book, chapter: $chapter, number: $number, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is RandomVerse &&
        other.book == book &&
        other.chapter == chapter &&
        other.number == number &&
        other.text == text;
  }

  @override
  int get hashCode {
    return book.hashCode ^ chapter.hashCode ^ number.hashCode ^ text.hashCode;
  }

  @override
  List<Object?> get props => [book, chapter, number, text];
}

class Book extends Equatable {
  final Abbrev abbrev;
  final String name;
  final String author;
  final String group;
  final String version;
  Book({
    required this.abbrev,
    required this.name,
    required this.author,
    required this.group,
    required this.version,
  });

  Book copyWith({
    Abbrev? abbrev,
    String? name,
    String? author,
    String? group,
    String? version,
  }) {
    return Book(
      abbrev: abbrev ?? this.abbrev,
      name: name ?? this.name,
      author: author ?? this.author,
      group: group ?? this.group,
      version: version ?? this.version,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'abbrev': abbrev.toMap(),
      'name': name,
      'author': author,
      'group': group,
      'version': version,
    };
  }

  factory Book.fromMap(Map<String, dynamic> map) {
    return Book(
      abbrev: Abbrev.fromMap(map['abbrev']),
      name: map['name'],
      author: map['author'],
      group: map['group'],
      version: map['version'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Book.fromJson(String source) => Book.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Book(abbrev: $abbrev, name: $name, author: $author, group: $group, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Book &&
        other.abbrev == abbrev &&
        other.name == name &&
        other.author == author &&
        other.group == group &&
        other.version == version;
  }

  @override
  int get hashCode {
    return abbrev.hashCode ^
        name.hashCode ^
        author.hashCode ^
        group.hashCode ^
        version.hashCode;
  }

  @override
  List<Object?> get props => [name, author, group, version];
}

class Abbrev {
  final String pt;
  final String en;
  Abbrev({
    required this.pt,
    required this.en,
  });

  Abbrev copyWith({
    String? pt,
    String? en,
  }) {
    return Abbrev(
      pt: pt ?? this.pt,
      en: en ?? this.en,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'pt': pt,
      'en': en,
    };
  }

  factory Abbrev.fromMap(Map<String, dynamic> map) {
    return Abbrev(
      pt: map['pt'],
      en: map['en'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Abbrev.fromJson(String source) => Abbrev.fromMap(json.decode(source));

  @override
  String toString() => 'Abbrev(pt: $pt, en: $en)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Abbrev && other.pt == pt && other.en == en;
  }

  @override
  int get hashCode => pt.hashCode ^ en.hashCode;
}

// class QuoteResponse {
//   QuoteResponse(this.results, this.error);

//   QuoteResponse.fromJson(Map<String, dynamic> json)
//       : results = (json['book'] as List)
//             .map((i) => QuoteResponse.fromJson(i))
//             .toList(),
//         error = '';

//   QuoteResponse.withError(String errorValue)
//       : results = [],
//         error = errorValue;

//   final List<QuoteResponse> results;
//   final String error;
// }
