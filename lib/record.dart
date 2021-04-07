import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/date_symbol_data_local.dart';

class Record extends StatelessWidget {
  CalendarController _controller = CalendarController();

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('ko_KR', null);
    return Scaffold(
      appBar: AppBar(
        title: Text('Record PAGE'),
      ),
      body: TableCalendar(
        locale: 'ko_KR',
        calendarController: _controller,
      ),
    );
  }
}
