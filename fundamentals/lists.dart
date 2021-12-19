void main() {
  List<String> menGuests = ['Lucas', 'João', 'Pedro'];
  List<String> womenGuests = ['Joana', 'Maria', 'Ana'];
  List<String> finalListGuest = [];

  checkIfPersonIsAGuest({required String person}) {
    bool isOnMenGuests = menGuests.contains(person);
    bool isOnWomenGuests = womenGuests.contains(person);
    bool isGuest = isOnMenGuests || isOnWomenGuests;

    if (isGuest) {
      finalListGuest.add(person);
    }
  }

  String entryPerson = 'Joana';

  checkIfPersonIsAGuest(person: entryPerson);

  print(finalListGuest);

  // It adds Joana at the finalListGuest because she matches with womenGuests lists
}
