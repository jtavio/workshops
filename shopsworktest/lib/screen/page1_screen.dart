import 'package:flutter/material.dart';

class Page1Screen extends StatelessWidget {
  const Page1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 250,
              child: PageView(
                children: [
                  Image.asset(
                    'assets/img/paisaje.jpg',
                    fit: BoxFit.fill,
                  ),
                  Image.asset(
                    'assets/img/paisaje2.jpg',
                    fit: BoxFit.fill,
                  ),
                  Image.asset(
                    'assets/img/paisaje3.jpg',
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: _centro(),
            ),
            const SizedBox(height: 25),
            _icons(),
            _contenido_inferior(),
            _contenido_inferior(),
            _contenido_inferior(),
          ],
        ),
      ),
    );
  }

  Widget _icons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _iconsText(
          const Icon(
            Icons.call,
            color: Colors.blue,
          ),
          'CALL',
        ),
        _iconsText(
          const Icon(
            Icons.gps_fixed_rounded,
            color: Colors.blue,
          ),
          'ROUTE',
        ),
        _iconsText(
          const Icon(
            Icons.share,
            color: Colors.blue,
          ),
          'SHARE',
        ),
      ],
    );
  }

  Column _iconsText(Icon icon, String text) {
    return Column(
      children: [
        icon,
        const SizedBox(height: 5),
        Text(
          text,
          style: const TextStyle(color: Colors.blue),
        ),
      ],
    );
  }

  Row _centro() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: const [
            SizedBox(height: 10),
            Text(
              'Oeschinen Lake Campground',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              ' Kandersteg, Switzerland',
              style: TextStyle(color: Colors.black45),
            ),
          ],
        ),
        Row(
          children: const [
            Icon(
              Icons.star,
              color: Colors.orange,
              size: 34,
            ),
            Text('41')
          ],
        ),
      ],
    );
  }

  Widget _contenido_inferior() {
    const String textlargo =
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";

    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Text(
        textlargo,
        textAlign: TextAlign.justify,
      ),
    );
  }
}
