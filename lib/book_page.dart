import 'package:books/book_page2.dart';
import 'package:flutter/material.dart';

class Book {
  final String name;
  final String author;
  final String genre;
  final int copy;
  final String translator;
  final String image;
  Book({
    required this.name,
    required this.author,
    required this.genre,
    required this.copy,
    required this.translator,
    required this.image,
  });
}

final gals = Book(
    name: 'Записки о Галльской войне',
    author: 'Гай Юлий Цезарь',
    genre: 'Галльские войны,Римская империя',
    copy: 2000,
    translator: 'Покровский Михаил Михайлович',
    image: 'assets/images/book1.webp');
final usa = Book(
    name: 'Краткая история США',
    author: 'Robert Riminy',
    genre: 'Приключенческий роман',
    copy: 4000,
    translator: 'Алексанян Олег',
    image: 'assets/images/book2.webp');
final england = Book(
    name: 'История Англии',
    author: 'Андре Моруа',
    genre: 'Художественная литература',
    copy: 2000,
    translator: 'Марк Иванов',
    image: 'assets/images/book3.webp');

final greece = Book(
    name: 'Афины. История великого города-государства',
    author: ' Брюс Кларк',
    genre: 'Художественная литература',
    copy: 2000,
    translator: 'Иван Василенько',
    image: 'assets/images/book45.webp');
final salvador = Book(
    name: 'Мировая история в лицах. Художники',
    author: 'Сальвадор Дали',
    genre: 'Художественная литература',
    copy: 20000,
    translator: 'Валентин Серов',
    image: 'assets/images/book50.webp');
final civilization = Book(
    name: 'Цивилизация. Чем Запад отличается от остального мира',
    author: 'Ниал Фергюсон',
    genre: 'Документальная литература',
    copy: 2000,
    translator: 'Марк Евгений',
    image: 'assets/images/book42.webp');
final scan = Book(
    name: 'Скандинавские мифы и легенды',
    author: 'Биркетт Том',
    genre: 'Мифология древних скандинавов',
    copy: 3000,
    translator: 'Ким Елеонора',
    image: 'assets/images/book10.webp');
final alex = Book(
    name: 'Александрия: Тайны затерянного города',
    author: 'Ричардсон Эдмунд',
    genre: 'Историческая и военная литература',
    copy: 3000,
    translator: 'Антуан Арчев',
    image: 'assets/images/book10.webp');
final rome = Book(
    name: 'Неизведанный Рим. ',
    author: 'Елохина Елена',
    genre: 'Литература о путешествиях',
    copy: 1500,
    translator: 'Покровский Михаил Михайлович',
    image: 'assets/images/book18.webp');
final venice = Book(
    name: 'Венеция. История от основания города до падения республики',
    author: 'Норвич Джон',
    genre: ' История от основания города до падения республики',
    copy: 2000,
    translator: 'Маркус Аврелий',
    image: 'assets/images/book32.webp');

final books = <Book>[
  gals,
  usa,
  england,
  greece,
  salvador,
  civilization,
  scan,
  alex,
  rome,
  venice,
];

const snackBar = SnackBar(content: Text('wrong'));

class BookPage extends StatefulWidget {
  const BookPage({super.key});

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  String? _name;
  bool isactive = false;
  void _active() {
    if (_name!.length < 1) {
      isactive = false;
    } else {
      isactive = true;
    }
    setState(() {});
  }

  void isName(String name) {
    for (final book in books) {
      if (name == book.name) {
        Navigator.push(
            context, MaterialPageRoute(builder: ((context) => Images(book))));
        break;
      } else {
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: 20, vertical: 5),
              child: TextFormField(onChanged: (String name) {
                _name = name;
                _active();
              }),
            ),
            ElevatedButton(
              onPressed: isactive
                  ? () {
                      if (_name != null) {
                        isName(_name!);
                      }
                    }
                  : null,
              child: Text('Войти'),
            ),
          ],
        ),
      ),
    );
  }
}
