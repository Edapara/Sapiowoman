List<integer> listInteger = new List<integer>();
listInteger.add(10);
listInteger.add(15);
listInteger.add(21);
listInteger.add(15);
listInteger.add(15);
//CalculatorSt.add(listInteger);

integer sum = 0;

for (integer eachInt : listInteger) {
    system.debug(eachInt);
    sum += eachInt;
    //sum = sum + eachInt;
}
system.debug(sum);









