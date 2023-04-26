//JSON format 
/*
{
    "Name" : "ABC Pvt Ltd",
    "Type" : "Consulting" ,
    "Indestry" : "Education",
    "AnnuelRevenue" : 2000000,
    "Established" : 2000
}
*/

// get an account record, convert that into json format

Account acc = [SELECT Name,  Type, Industry, AnnualRevenue FROM Account WHERE Type != null AND Industry != null AND AnnualRevenue != null LIMIT 1];
String jsonString = JSON.serialize(acc);
System.debug(jsonString);


List<Account> accounts = [SELECT Name,  Type, Industry, AnnualRevenue FROM Account WHERE Type != null AND Industry != null AND AnnualRevenue != null LIMIT 5

];
String jsonString = JSON.serialize(accounts);
System.debug(jsonString);



Opportunity opp = [SELECT Id, Name, Type, StageName, Amount
                   FROM Opportunity
                   WHERE Type !=null
                   AND StageName !=null
                   AND Amount !=null
                   LIMIT 1 ];
String jsonString = JSON.serialize(opp);
System.debug(jsonString);



List<Opportunity> opps =[SELECT Id, Name, Type, StageName, Amount
                   FROM Opportunity
                   WHERE Type !=null
                   AND StageName !=null
                   AND Amount !=null
                   ORDER BY Amount DESC
                   LIMIT 10];

String jsonString = JSON.serialize(opps);
System.debug(jsonString);

//Test rest callouts
RestCallouts.getAnimals();
RestCallouts.getAirlines();


