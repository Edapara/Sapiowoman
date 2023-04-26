@RestResource(urlMapping='/Contact/*')
global with sharing class ContactManager {

    @HttpGet
    global static Contact getContactById(){
        RestRequest requ = RestContext.request;
       String contactId = requ.requestURI.substring(requ.requestURI.lastIndexOf('/')+1);
       Contact conts = [SELECT FirstName, LastName,
       Title, Email, Department FROM Contact WHERE Id = :contactId];
       return conts;

    }
    @HttpPost
    global static String doPost(String FirstName, String LastName, String Email, String Title, String Department) {
        Contact cnt = new Contact();
            cnt.FirstName = FirstName;
            cnt.LastName = LastName;
            cnt.Email = Email;
            cnt.Title = Title;
            cnt.Department = Department;
        insert cnt;
        return cnt.Id;
    }

    @HttpDelete
    global static void doDelete() {
        RestRequest request = RestContext.request;
        String contactId = request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
        Contact contactToDelete = [SELECT Id FROM Contact WHERE Id = :contactId];
        delete contactToDelete;
    }
    @HttpPut
    global static Contact putContact(){
       RestRequest request = RestContext.request;
       String body = request.requestBody.toString();
       Contact cnt = (Contact)JSON.deserialize(body,Contact.class);
       upsert cnt;
       return cnt;
    }
    

    @HttpPatch
    global static Contact patchContact() {
        RestRequest request = RestContext.request;
        String body = request.requestBody.toString();
       Contact conn = (Contact)JSON.deserialize(body, Contact.class);
        update conn;
        Contact updatedConn = [SELECT FirstName, LastName, Title, Email, Department FROM Contact WHERE Id = :conn.Id];
        return updatedConn;
    }
}
    



