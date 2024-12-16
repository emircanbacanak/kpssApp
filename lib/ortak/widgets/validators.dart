bool isValidCardNumber(String cardNumber) {
  if (cardNumber.length != 16) {
    return false;
  }

  int sum = 0;
  bool alternate = false;
  for (int i = cardNumber.length - 1; i >= 0; i--) {
    int digit = int.parse(cardNumber[i]);
    if (alternate) {
      digit *= 2;
      if (digit > 9) {
        digit -= 9;
      }
    }
    sum += digit;
    alternate = !alternate;
  }
  return sum % 10 == 0;
}

bool isValidExpiryDate(String expiryDate) {
  final parts = expiryDate.split('/');
  if (parts.length != 2) return false;
  final month = int.tryParse(parts[0]) ?? 0;
  return month >= 1 && month <= 12;
}
