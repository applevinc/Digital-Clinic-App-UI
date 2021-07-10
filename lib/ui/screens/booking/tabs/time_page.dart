import 'package:digital_clinic/ui/theme/colors.dart';
import 'package:digital_clinic/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class SelectTimeTab extends StatefulWidget {
  const SelectTimeTab({Key key}) : super(key: key);

  @override
  _SelectTimeTabState createState() => _SelectTimeTabState();
}

class _SelectTimeTabState extends State<SelectTimeTab> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            CalendarWidget(),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Available Time',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(height: 20),
            AvailableTimeWidget(),
            SizedBox(height: 20),
            CustomButton(
              label: 'Next',
              onPressed: () {
                DefaultTabController.of(context).animateTo(1);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class AvailableTimeWidget extends StatelessWidget {
  const AvailableTimeWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = List<Widget>.generate(
      8,
      (i) => _Item(i),
    );
    return Wrap(
      spacing: 5.0, // gap between adjacent chips
      runSpacing: 5.0,
      // gap between lines
      children: items,
    );
  }
}

class _Item extends StatefulWidget {
  const _Item(this.index, {Key key}) : super(key: key);

  final int index;

  @override
  __ItemState createState() => __ItemState();
}

class __ItemState extends State<_Item> {
  Color backgroundColor = AppColors.backgroundColor;
  Color labelColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          backgroundColor = AppColors.moodyBlue;
          labelColor = Colors.white;
        });
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(
          '1${widget.index}:00 AM',
          style: TextStyle(
            color: labelColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({
    Key key,
  }) : super(key: key);

  @override
  _CalendarWidgetState createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  DateTime _selectedDay;
  DateTime _focusedDay;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.grey, width: 1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: TableCalendar(
        firstDay: DateTime.utc(2010, 10, 16),
        lastDay: DateTime.utc(2030, 3, 14),
        focusedDay: DateTime.now(),
        selectedDayPredicate: (day) {
          return isSameDay(_selectedDay, day);
        },
        onDaySelected: (selectedDay, focusedDay) {
          setState(() {
            _selectedDay = selectedDay;
            _focusedDay = focusedDay;
          });
        },
        onPageChanged: (focusedDay) {
          _focusedDay = focusedDay;
        },
      ),
    );
  }
}
