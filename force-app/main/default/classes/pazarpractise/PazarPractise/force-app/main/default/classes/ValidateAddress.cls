public  class ValidateAddress {
    public void validateHomeAddres() {
        string houseName = 'south gessner';


        String streetName = 'woodscape street';
        System.debug('length of string is ' + streetName.length());

        String cityName = 'Houston';
        Boolean houseName1 = cityName.contains(houseName);
        System.debug('Description contain' + houseName1);
        System.debug('City name is '+ cityName.toLowerCase());

        string stateName = ' Texas';
        System.debug('State name is '+ stateName.toLowerCase());


        String stateIsoCode = '3166/TX';
        Boolean stateIsoCode1 = streetName.contains(stateIsoCode);
        System.debug('Description contain '+ stateIsoCode1);
        System.debug('Capital string is ' + stateIsoCode.toUpperCase());

        String countryName = 'USA';
       
        String countryIsoCode = '001';
        System.debug(' Capital string is '+countryIsoCode.toUpperCase());

        String allAdress = ' Benim yasadigim yer '+ houseName + ' '+ streetName +' '+ cityName +' '+stateName+' '+' '+ countryName +' dir.';
        System.debug(allAdress);

    }
}