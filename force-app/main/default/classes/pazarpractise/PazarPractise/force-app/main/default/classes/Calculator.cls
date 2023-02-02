public class Calculator {
    public static Decimal dynamicCalculationMethod(decimal x, decimal y, string z){
        decimal result;
        switch on z {
            when 'ADDITION' {
                result = x+y;
                
            } when 'SUBTRACTION'{
                result = x-y;
            } when 'DIVISION'{
                result = x/y;
            } when 'MULTIPLICATION'{
                result = x*y;
            }

            when else {
                System.debug('Not a valid input/operation');
                result = null;
                
            }
        } return result;
    }

}