/**
   extends는 하나만 가능
   implements는 여러 개 가능 (==java)
 */
abstract class Hello {
  hello();
}

abstract class World {
  world();
}

class Apple extends Hello {
  hello() {
    print("hello");
  }
}

class Banana implements Hello, World {
  hello() {
    print("hi");
  }

  world() {
    print("world");
  }
}

void main() {
  var a = Apple();
  a.hello();

  var b = Banana();
  b.hello();
  b.world();
}
