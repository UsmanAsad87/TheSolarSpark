import 'package:timeago/timeago.dart' as timeago;


// Random Functions to add here
getTimeAgo(DateTime dt){
  return timeago.format(dt, allowFromNow: true, locale: 'en_short');
}