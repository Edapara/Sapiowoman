public class EdaPara {
   public string language ='';
    public string selamlama = '';
    public string SelamlamaMetodu(){
        if (language == 'English') {
           selamlama = 'Hello';
          
        }
         else if(language == 'Turkish'){
            selamlama ='Merhaba';
         
        }
        else {
           selamlama = ' Whatsup?';
        }
        return selamlama;
    }

    public Integer num = 0 ;
    public String city = '';
    public String cevaplama (){
      if (num == 1) {
         city = 'adana';
      }
      else if (num == 34){
         city = 'istanbul';
      }
      else {
         city = 'hicbirsey yazma';
      }
      return city;
    }
     

}