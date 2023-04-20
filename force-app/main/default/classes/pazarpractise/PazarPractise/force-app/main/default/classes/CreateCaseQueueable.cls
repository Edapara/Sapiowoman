public  class CreateCaseQueueable  implements Queueable{
    public void execute (QueueableContext cscase){
        case newCase = new Case();
        newCase.Type='Mechanical';
     
        insert newCase;

    }
    
}