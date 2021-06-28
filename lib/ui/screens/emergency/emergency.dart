import 'package:digital_clinic/ui/screens/emergency/layouts/featured_image.dart';
import 'package:digital_clinic/ui/screens/emergency/layouts/form.dart';
import 'package:flutter/material.dart';

class EmergencyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight,
            ),
            child: IntrinsicHeight(
              child: Scaffold(
                extendBodyBehindAppBar: true,
                appBar: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0.0,
                ),
                body: _Body(),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        FeaturedImage(),

        // It\'s not necessary to answer the questions below.
        // You may call an ambulance below.
        _Instruction(),
        EmergencyForm(),
      ],
    );
  }
}

class _Instruction extends StatelessWidget {
  const _Instruction({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
      ),
      child: Column(
        children: [
          Text(
            'It\'s not necessary to answer the questions below. You may call an ambulance below.',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Divider(thickness: 1),
          ),
        ],
      ),
    );
  }
}
