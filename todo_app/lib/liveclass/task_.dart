class Task {
  String detailes;
  DateTime createdAt, updatedAt;
  String status;

  Task({
    required this.detailes,
    required this.createdAt,
    required this.updatedAt,
    this.status = 'pending',
  });
}
