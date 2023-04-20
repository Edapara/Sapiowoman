//JSON format 
{
    "Name" : "ABC Pvt Ltd",
    "Type" : "Consulting" ,
    "Indestry" : "Education",
    "AnnuelRevenue" : 2000000,
    "Established" : 2000
}

// get an account record, convert that into json format

Account acc = [ SELECT Name,  Type, Indestry, AnnuelRevenue, FROM Account WHERE Type != null AND Indestry != null AND AnnuelRevenue != null LIMIT 1];
String jsonString = JSON.serialize(acc);
System.debug(jsonString);
