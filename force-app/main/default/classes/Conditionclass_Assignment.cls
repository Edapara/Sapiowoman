public  class Conditionclass_Assignment {
    public String Ifclassmethod(Integer month){
        string output_Month = 'Not a valid Month';
        if (month ==1 ){
            output_Month = 'january';
        }
        else if (month ==2){
            output_Month = 'february';
        }
        else {
           output_Month = 'Not a valid Month';
        }
        return output_Month;
    }
}