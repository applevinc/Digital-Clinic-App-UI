import 'package:digital_clinic/ui/screens/booking/tabs/details_page.dart';
import 'package:digital_clinic/ui/screens/booking/tabs/finish_page.dart';
import 'package:digital_clinic/ui/screens/booking/tabs/time_page.dart';
import 'package:digital_clinic/ui/widgets/select_option.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SelectOptionColorProvider(),
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            automaticallyImplyLeading: true,
            elevation: 0.0,
            title: Text(
              'Booking',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            bottom: TabBar(
              indicatorWeight: 4.0,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              tabs: [
                Tab(text: '1. TIME'),
                Tab(text: '2. DETAILS'),
                Tab(text: '3. FINISH'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              SelectTimeTab(),
              DetailsTab(),
              FinishTab(),
            ],
          ),
        ),
      ),
    );
  }
}
