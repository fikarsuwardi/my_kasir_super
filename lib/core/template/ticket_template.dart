import 'package:flutter_esc_pos_utils/flutter_esc_pos_utils.dart';

class TicketTemplate {
  TicketTemplate._();

  static Future<List<int>> ticket() async {
    List<int> bytes = [];

    final profile = await CapabilityProfile.load();
    final generator = Generator(PaperSize.mm58, profile);
    bytes += generator.setStyles(const PosStyles(height: PosTextSize.size4));
    bytes += generator.reset();

    bytes += generator.text(
      'Kasir SUPER Group',
      styles: const PosStyles(
        bold: true,
        align: PosAlign.center,
        height: PosTextSize.size2,
      ),
    );
    bytes += generator.text(
      'Instagram : @kasirsuper.id',
      styles: const PosStyles(align: PosAlign.center),
    );

    bytes += generator.hr();

    bytes += generator.row(posColumn('Tipe Pembayaran', 'Tunai'));
    bytes += generator.row(posColumn('Order ID', 'TRX-100-10102030405'));

    bytes += generator.hr();

    bytes += title(generator, 'Pesanan');
    bytes += generator.hr();

    bytes += title(generator, 'Organic Potato');
    bytes += generator.row(posColumn('Rp 18.900', '2x'));
    bytes += title(generator, 'Organic Beans');
    bytes += generator.row(posColumn('Rp 7.000', '1x'));

    bytes += generator.hr();
    bytes += generator.row(posColumn('Subtotal', 'Rp 44.800', isBold: true));

    bytes += generator.hr();

    bytes += title(generator, 'Detail Transaksi');
    bytes += generator.hr();
    bytes += generator.row(posColumn('Jumlah pesanan', '3'));
    bytes += generator.row(
      posColumn('Subtotal', 'Rp 49.000'),
    );
    bytes += generator.row(posColumn('Pajak', 'Rp 0'));
    bytes += generator.row(posColumn('Diskon', '- Rp 4.200'));
    bytes += generator.hr();
    bytes += generator.row(
      posColumn('Total Tagihan', 'Rp 44.800', isBold: true),
    );
    bytes += generator.row(
      posColumn('Total Pembayaran', 'Rp 50.000', isBold: true),
    );
    bytes += generator.hr();
    bytes += generator.row(
      posColumn('Total Kembali', 'Rp 5.200', isBold: true),
    );

    bytes += generator.emptyLines(1);

    bytes += generator.text(
      'Terimakasih sudah berkunjung.',
      styles: const PosStyles(align: PosAlign.center),
    );
    bytes += generator.text(
      'Powered by Kasir SUPER',
      styles: const PosStyles(align: PosAlign.center),
    );

    bytes += generator.feed(2);
    return bytes;
  }

  static List<int> title(Generator generator, String title) {
    return generator.text(
      title,
      styles: const PosStyles(bold: true),
    );
  }

  static List<PosColumn> posColumn(
    String title,
    String value, {
    bool isBold = false,
  }) {
    return [
      PosColumn(text: title, width: 6, styles: PosStyles(bold: isBold)),
      PosColumn(
        text: value,
        styles: const PosStyles(bold: true, align: PosAlign.right),
        width: 6,
      ),
    ];
  }
}
