import "dart:math" show pow;

void main() {
  print(binary_to_decimal("-111")); // -7
  print(binary_to_decimal(" 101011 ")); // 43
  print(binary_to_decimal("1a1")); //error
}

int binary_to_decimal(String bin_string){
  bin_string = bin_string.trim();
  if(bin_string == null || bin_string == ""){
   throw Exception("An empty value was passed to the function");
  }
  bool isNegative = bin_string[0]=="-";
  if(isNegative) bin_string = bin_string.substring(1);
  int decimal_val = 0;
  for (int i = 0; i<bin_string.length;i++){
    if ("01".contains(bin_string[i]) == false){
     throw Exception("Non-binary value wass passed to the function");
    }else{
      decimal_val += pow(2,bin_string.length - i -1)*int.parse((bin_string[i]));
    }
  }
  return isNegative?-1* decimal_val: decimal_val;
}
