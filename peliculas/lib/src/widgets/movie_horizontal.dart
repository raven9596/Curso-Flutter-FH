import 'package:flutter/material.dart';
import 'package:peliculas/src/models/pelicula_model.dart';

class MovieHorizontal extends StatelessWidget {
  final List<Pelicula> peliculas;
  final Function siguientePagina;

  MovieHorizontal({required this.peliculas, required this.siguientePagina});

  final _pageController = PageController(
    initialPage: 1,
    viewportFraction: 0.3,
  );

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    _pageController.addListener(() {
      if (_pageController.position.pixels >=
          _pageController.position.maxScrollExtent - 200) {
        siguientePagina();
      }
    });

    return Container(
      height: _screenSize.height * 0.2,
      child: PageView(
        pageSnapping: false,
        controller: _pageController,
        children: _tarjetas(context),
      ),
    );
  }

  List<Widget> _tarjetas(BuildContext context) {
    return peliculas.map((pelicula) {
      return Container(
        margin: const EdgeInsets.only(right: 15.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: FadeInImage(
                  placeholder: const AssetImage('assets/img/no-image.jpg'),
                  image: NetworkImage(pelicula.getPosterImg()),
                  fit: BoxFit.cover,
                  height: 160.0,
                ),
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Text(pelicula.title.toString(),
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.caption)
          ],
        ),
      );
    }).toList();
  }
} // End Class
