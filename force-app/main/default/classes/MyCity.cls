public class MyCity {
    public void cityInformation() {

        String countryTry = 'Avustralya';
        String cityTry = 'Disney';

        System.debug('Gezmek istedigim Ulke ->' + countryTry + 've sehir ->' + cityTry );
   }
   public void stringMethod (){
    String forceIsim = 'I am a salesforce Developer';
    Boolean icerdeOl = forceIsim.contains('force');
    System.debug('Cumlemizde force kelimesi varmi;' + icerdeOl);
    
    Integer uzunLuk = forceIsim.length();
    System.debug('cumlemizde karakter sayisi' + uzunLuk);

    String buyukHarf = forceIsim.toUpperCase();
    System.debug('Cumlelerin yeni hali:' + buyukHarf);


   }
   public void dateMethod (){

    date todayDate = date.newInstance(2023, 1, 14);
    System.debug('Bugunun tarihi:' + todayDate);

    Datetime todaysDateTime = datetime.newInstanceGmt(2023, 1, 14, 17, 30, 00);
    System.debug('Buguun tarihi ve saati:' + todaysDateTime);

    datetime addTimeFifty = todaysDateTime.addHours(50);
    System.debug('50 saat sonrasi:' + addTimeFifty);
   
        
    }

    public void cityInformations(){
        Datetime kurulusTarih = Datetime.newInstance(1776, 7, 4, 00, 00, 00);
        System.debug('Sanirim US nin kurulus tarihi:' + kurulusTarih);

        time gunes = time.newInstance(7, 00, 00, 00);
        System.debug('Gunesin Houston da dogus saati:' + gunes);

        Datetime todaysDateTime = Datetime.newInstance(2023, 1, 14, 17, 45, 00);
        Datetime ayGeriye = todaysDateTime.addMonths(-36);
        System.debug('bugunun tarihi:' + todaysDateTime + 've 36 ay onceku tarih' + ayGeriye);


    }
   }
