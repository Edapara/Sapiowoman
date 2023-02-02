/*n a new anonymous apex file, create a Set named as fruitsSet, store at least 4 fruits name in it.
a. Print fruits name from fruitsSet one by one.
b. Print the size of the fruitsSet.
c. Add a fruit name  to the fruitsSet and print the fruitsSet.
d. Check if the fruitsSet contains the fruit ‘Apricot’
e. Check if the fruitsSet is empty*/

Set<String> fruitsSet = new Set<String>();
fruitsSet.add('Apple');
fruitsSet.add('Banana');
fruitsSet.add('Mango');
fruitsSet.add('Orange');
for ( String eachFruit: fruitsSet){
    System.debug(eachFruit);
}
System.debug('the size of fruitsset' + fruitsSet.size());

fruitsSet.add('Apricot');
System.debug(fruitsSet);

boolean containsApricot = fruitsSet.contains('Apricot');
System.debug('the fruitsset contains apricot' + containsApricot);

Boolean isemptyFruitsset = fruitsSet.isEmpty();
System.debug(isemptyFruitsset);