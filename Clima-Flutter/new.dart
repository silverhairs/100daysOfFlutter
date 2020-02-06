void main() {
  String name = 'abc';
  try {
    double newName = double.parse(name);
    print(newName);
  } catch (err) {
    print(err);
  }
}
