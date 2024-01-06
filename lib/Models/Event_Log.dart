

class EventLog{
  String id;
  String actiontype;
  String event;
  String? details;
  String uid;
  DateTime event_time;

  EventLog({
    required this.id,
    required this.actiontype,
    required this.event,
    this.details,
    required this.uid,
    required this.event_time
  });


}