import 'dart:async';

void main() async {
    printListener(String event) {
    print('The event listener is: $event');
  }

  final controller = new StreamController();

  final String name = 'Lucas';
  controller.sink.add(name);

  final subscription =
      controller.stream.listen((event) => printListener(event));

  List<String> artists1 = ['Ruben Wan', 'Alicia Keys', 'John Mayer', 'Melanie Faye'];
  List<String> artists2 = ['Justin Timberlake', 'Ne-Yo', 'Drake'];

  final reversedList = artists1.reversed;
  final followedBy = reversedList.followedBy(artists2);
  print(followedBy);

  late Future<void> cancelListener;

  await Future.delayed(
      Duration(seconds: 2), () => cancelListener = subscription.cancel());

  cancelListener.whenComplete(() => print('O subscription foi cancelado'));
}