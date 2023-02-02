list<string> coloursList = new list<string>();
coloursList.add('Black');
coloursList.add('White');
coloursList.add('Blue');
coloursList.add('Red');
coloursList.add('Orange');
system.debug('This are my colours ==> ' + coloursList);
integer getSize = coloursList.size();
system.debug('This is the size of my list ==> ' + getSize);
// Retrieve the last element of the List and print it in the upper case
string lastElement = coloursList.get(getSize -1);
system.debug('This is the last element in upper case==> ' + lastElement.toUpperCase());
// Make the fourth element in the List as Upper case
string fourthElement = coloursList[3];
system.debug('This is the fourth element in upper case==> ' + fourthElement.toUpperCase());
// Create a different List named colourCodesList in which we need to store some color
// codes. For example: ‘#FF0000’ is code for red color
list<string> colourCodesList = new list<string>();
colourCodesList.add('#000000');
colourCodesList.add('#FFFFFF');
colourCodesList.add('#0000FF');
colourCodesList.add('#FF0000');
colourCodesList.add('#FFA500');
// Compare if the two lists colourCodesList and coloursList are equal or not
boolean equalOrNot = coloursList.equals(colourCodesList);
system.debug('These lists are equal??? ' + equalOrNot);
// Merge the two Lists (colourCodesList, coloursList) and print the newly created list
list<string> mergedLists = new list<string>();
mergedLists.addAll(coloursList);
mergedLists.addAll(colourCodesList);
system.debug(mergedLists);
// This is the second version of merging two lists into a map.
// map<string,string> mergedMapLists = new Map<string,string>();
// mergedMapLists.putAll(coloursList);
// mergedMapLists.putAll(colourCodesList);
// system.debug(mergedMapLists);