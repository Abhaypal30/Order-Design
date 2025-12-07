import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HorizontalCalendar extends StatefulWidget {
  final Function(DateTime)? onDateSelected;
  final Color selectedColor;
  final Color unselectedColor;
  final Color selectedDayColor;
  final Color unselectedDayColor;
  
  const HorizontalCalendar({
    Key? key,
    this.onDateSelected,
    this.selectedColor = const Color(0xFF31CE95),
    this.unselectedColor = const Color(0xFFB8F5DD), 
    this.selectedDayColor = const Color(0xFF31CE95),
    this.unselectedDayColor = const Color(0xFF666666),
  }) : super(key: key);

  @override
  State<HorizontalCalendar> createState() => _HorizontalCalendarState();
}

class _HorizontalCalendarState extends State<HorizontalCalendar> {
  late DateTime selectedDate;
  late ScrollController _scrollController;
  
  @override
  void initState() {
    super.initState();
    selectedDate = DateTime.now();
    _scrollController = ScrollController();
    
   
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollToToday();
    });
  }
  
  void _scrollToToday() {
    final today = DateTime.now();
    final startDate = today.subtract(const Duration(days: 30));
    final daysDiff = today.difference(startDate).inDays;
    final offset = daysDiff * 70.0 - (MediaQuery.of(context).size.width / 2) + 35;
    
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        offset,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  List<DateTime> _generateDates() {
    final now = DateTime.now();
    final startDate = now.subtract(const Duration(days: 30));
    final endDate = now.add(const Duration(days: 30));
    
    List<DateTime> dates = [];
    for (var date = startDate; 
         date.isBefore(endDate) || date.isAtSameMomentAs(endDate); 
         date = date.add(const Duration(days: 1))) {
      dates.add(date);
    }
    return dates;
  }

  bool _isSameDay(DateTime date1, DateTime date2) {
    return date1.year == date2.year && 
           date1.month == date2.month && 
           date1.day == date2.day;
  }

  @override
  Widget build(BuildContext context) {
    final dates = _generateDates();
    
    return Container(
      height: 90,
      color: Colors.transparent,
      child: ListView.builder(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        itemCount: dates.length,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemBuilder: (context, index) {
          final date = dates[index];
          final isSelected = _isSameDay(date, selectedDate);
          final isToday = _isSameDay(date, DateTime.now());
          
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedDate = date;
              });
              widget.onDateSelected?.call(date);
            },
            child: Container(
              width: 60,
              margin: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 
                  Text(
                    DateFormat('EEE').format(date).toUpperCase(),
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: isSelected 
                          ? widget.selectedColor 
                          : widget.unselectedColor, 
                    ),
                  ),
                  const SizedBox(height: 8),
               
                  Text(
                    DateFormat('d').format(date),
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: isSelected 
                          ? widget.selectedDayColor 
                          : widget.unselectedDayColor, // Gray for unselected
                    ),
                  ),
                  const SizedBox(height: 8),
                  // Dot indicator
                  Container(
                    width: 6,
                    height: 6,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isSelected || isToday
                          ? widget.selectedColor
                          : Colors.transparent,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}


