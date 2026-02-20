class AvalonOptions {
  final bool useMerlin;
  final bool usePercival;
  final bool useMorgana;
  final bool useOberon;
  final bool useAssassin;

  const AvalonOptions({
    this.useMerlin = true,
    this.usePercival = true,
    this.useMorgana = false,
    this.useOberon = false,
    this.useAssassin = true,
  });
}