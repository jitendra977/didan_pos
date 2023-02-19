class ResTable {
  final String tableName;
  final String status;

  const ResTable(this.tableName, this.status);
}

List<ResTable> tables = List.generate(
  21,
  (i) => ResTable(
    'Table ${i + 1}',
    'Table ${i + 1} is Booked',
  ),
);
