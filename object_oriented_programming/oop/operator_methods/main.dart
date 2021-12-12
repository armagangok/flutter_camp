void main() {
  Speacial var1 = Speacial(x: 10, y: 20);
  Speacial var2 = Speacial(x: 20, y: 30);

  Speacial var3 = var1 + var2;

  print(var3.x);
  print(var3.y);
}

class Speacial {
  final num x, y;

  Speacial({required this.x, required this.y});

  Speacial operator +(other) => Speacial(
        x: x + other.x,
        y: y + other.y,
      );
}
