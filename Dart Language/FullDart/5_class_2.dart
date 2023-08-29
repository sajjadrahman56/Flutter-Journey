class Example {
  int public;
  int _private;

  Example(this.public, this._private);
  Example.namedConstructor(
      {required this.public, required int privateParameter})
      : _private = privateParameter;

  int get getPrivate => _private; // Getter for _private

  set setPrivate(int newValue) {
    _private = newValue; // Setter for _private
  }
}
