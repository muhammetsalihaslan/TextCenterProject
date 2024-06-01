// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:textproject/pages/standorte_page.dart';
import 'package:textproject/widgets/adress_form.dart';
import 'package:textproject/widgets/course_short_details.dart';
import 'package:textproject/widgets/custom_appbar.dart';
import 'package:textproject/widgets/custom_drawer.dart';
import 'package:textproject/widgets/custom_footer.dart';
import 'package:textproject/widgets/kontakt_daten.dart';

class MeineBuchung extends StatefulWidget {
  final Map<String, dynamic> course;
  final VoidCallback onBack;

  const MeineBuchung({
    super.key,
    required this.course,
    required this.onBack,
  });

  @override
  MeineBuchungState createState() => MeineBuchungState();
}

class MeineBuchungState extends State<MeineBuchung> {
  final Map<String, String> kontaktDaten = {};
  final Map<String, String> adresseDaten = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      endDrawer: MediaQuery.of(context).size.width <= 670
          ? const CustomDrawer()
          : null,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CourseShortDetailCard(course: widget.course),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: KontaktDaten(formData: kontaktDaten),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    flex: 1,
                    child: AdresseForm(formData: adresseDaten),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  final kontaktDatenState =
                      context.findAncestorStateOfType<KontaktDatenState>();
                  final adresseFormState =
                      context.findAncestorStateOfType<AdresseFormState>();
                  if (kontaktDatenState != null && adresseFormState != null) {
                    kontaktDatenState.saveForm();
                    adresseFormState.saveForm();
                    final allFormData = {...kontaktDaten, ...adresseDaten};
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            StandortePage(formData: allFormData),
                      ),
                    );
                  }
                },
                child: const Text('Submit'),
              ),
              const CustomFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
