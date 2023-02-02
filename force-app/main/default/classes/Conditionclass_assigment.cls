public class Conditionclass_assigment {
    public String ifClassMethod(integer month) {
        String output_Month = ' Not a valid Month';
     if (month == 1) {
         output_Month = 'January';
     }
     else if (month == 2 ){
         output_Month = 'February'; 
     }
     else {
        output_Month = 'Not a valid Month';
     }
     return output_Month;
    }

    public String caseMethod (String input){
         String output_Quarter = 'Enter a proper Month name';
         switch on input {
            when 'January','febuary', 'march' {
                output_Quarter = 'Quarter 1';
            }
                
            when else {
                output_Quarter = 'Not a valid Quarter'; 
                
            }
        }
            return output_Quarter = 'Not a valid Quarte';
         
    }

}