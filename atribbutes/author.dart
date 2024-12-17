

class Book {
  final String name; 
  final String author;
  final String genre;
  final int copy;
  final String translator;


  Book({
    required this.name,
    required this.author,
    required this.genre,
    required this.copy,
    required this.translator,
});

}


final gals = Book(name: 'Записки о Галльской войне', author: 'Гай Юлий Цезарь', genre: 'Галльские войны,Римская империя', copy: 2000, translator: 'Покровский Михаил Михайлович');