enum PaymentStatus { paid, canceled, pending }

void main() {
  PaymentStatus status = PaymentStatus.pending;
  final indexStatus = status.index;
  print(indexStatus);

  for (dynamic paymentStatus in PaymentStatus.values) {
    print(paymentStatus);
  }
  ;
}
