public  class OperationsHelper {
    public decimal largestOutOfTwoNumber(decimal x, decimal y){
    decimal larger1;
    if(x >= y){
      larger1=x; 
    }else{
       larger1=y;
    }
    return larger1;
    }
     public decimal smallestOutOfThreeNumber(decimal x, decimal y, decimal z  ){
       decimal smallest1;
       if(x <= y && x <= z ){
       smallest1 = x;
     }else if(y<= x && y <= z ){
           smallest1 = y;
       }else{
           smallest1=z;
       }
       return smallest1;
      } 
      public integer sumOfPositiveInteger(integer n){
        integer sum;
       if(n < 0){
          sum = null;
        system.debug('we are not calculating');
      }else{
      sum = 0;
      for(integer i = 1; i <= n ; i++){
      sum = sum + i;
       }
       }
      return sum;
        }
      }