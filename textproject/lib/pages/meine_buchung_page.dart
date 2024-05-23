import 'package:flutter/material.dart';
import 'package:textproject/widgets/adrees_form.dart';
import 'package:textproject/widgets/altern_rech.dart';
import 'package:textproject/widgets/kontakt_daten.dart';
import 'package:textproject/widgets/meine_buchung.dart';

class MeineBuchungPage extends StatefulWidget {
  final Map<String, dynamic> bookingDetails;

  const MeineBuchungPage({required this.bookingDetails, super.key});

  @override
  State<MeineBuchungPage> createState() => _MeineBuchungPageState();
}

class _MeineBuchungPageState extends State<MeineBuchungPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mein Buchung'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BucHung(bookingDetails: widget.bookingDetails),
            const Row(
              children: [
                KontaktDaten(),
                Column(
                  children: [
                    AdressForm(),
                    AlternRech(),
                    AlternRech(),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
