import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:table_calendar/table_calendar.dart';

class docCalender extends StatefulWidget {
  const docCalender({super.key});

  @override
  State<docCalender> createState() => _docCalenderState();
}

class _docCalenderState extends State<docCalender> {
  DateTime today = DateTime.now();
  void _ondayselected(DateTime day, DateTime focuseDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.arrow_back)),
              ),
              Container(
                  child: TableCalendar(
                      calendarStyle: CalendarStyle(
                          selectedDecoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(186, 107, 176, 234),
                      )),
                      headerStyle: HeaderStyle(
                          formatButtonVisible: false,
                          titleCentered: true,
                          titleTextStyle:
                              TextStyle(fontFamily: 'Galdeano', fontSize: 20)),
                      availableGestures: AvailableGestures.all,
                      selectedDayPredicate: (day) => isSameDay(day, today),
                      onDaySelected: _ondayselected,
                      focusedDay: today,
                      firstDay: DateTime.utc(2020, 5, 5),
                      lastDay: DateTime.utc(2040, 10, 10))),
              Container(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(
                          "Today's Schedule",
                          style:
                              TextStyle(fontFamily: 'Galdeano', fontSize: 25),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        child: Text(
                          "12:00 - 1:00 pm                                  Nour Ali",
                          style:
                              TextStyle(fontFamily: 'Galdeano', fontSize: 18),
                        ),
                      ),
                    ),
                    Divider(),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "2:40 - 3:30 pm                                  Ahmed Tarek",
                          style:
                              TextStyle(fontFamily: 'Galdeano', fontSize: 18),
                        ),
                      ),
                    ),
                    Divider(),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "4:20 - 5:30 pm                                  Ahmed Adel",
                          style:
                              TextStyle(fontFamily: 'Galdeano', fontSize: 18),
                        ),
                      ),
                    ),
                    Divider(),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "5:00 - 5:30 pm                                  Amr Saleh",
                          style:
                              TextStyle(fontFamily: 'Galdeano', fontSize: 18),
                        ),
                      ),
                    ),
                    Divider(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
