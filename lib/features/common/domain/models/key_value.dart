class KeyValue<T> {
  final String label;
  final T value;
  final String search;

  const KeyValue({
    required this.label,
    required this.value,
    this.search = '',
  });
}
