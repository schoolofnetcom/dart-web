import 'dart:html';

clickExample(MouseEvent event) {
  event.preventDefault();
  Element ul = querySelector('ul');

  Element liCake = Element.html('<li class="blue">Curso de CakePHP</li>');
  ul.children.add(liCake);
}

void main() {
  querySelector('#output').text = 'Curso Dart Web na School of Net';

  Element ul = querySelector('ul');
  List cursos = [
    'Curso de Dart',
    'Curso de Flutter',
    'Curso de PHP',
    'Curso de Slim Framework',
    'Curso de Laravel',
  ];

  for(var i=0; i<cursos.length; i++) {
    var li = LIElement();
    li.text = cursos[i];
    ul.children.add(li);
  }

  Element liCake = Element.html('<li class="red">Curso de CakePHP</li>');
  ul.children.add(liCake);

  var link = Element.a();
  link.setAttribute('href', 'https://schoolofnet.com');
  link.setAttribute('target', 'blank');
  link.text = 'Ir para o site';
  link.onClick.listen(clickExample);

  querySelector('footer').children.add(link);
}
