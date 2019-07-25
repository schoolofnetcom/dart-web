import 'dart:html';

void main() {
  querySelector('#output').text = 'Curso Dart Web na School of Net';
  ElementList divs = querySelectorAll('ul li');
  List cursos = [
    'Curso de Dart',
    'Curso de Flutter',
    'Curso de PHP',
    'Curso de Slim Framework',
  ];

  for (var i=0; i < divs.length; i++) {
    divs[i].text = cursos[i];
  }
}
