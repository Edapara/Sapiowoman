public with sharing class RestCallouts {
    // Endpoint: https://th-apex-http-callout.herokuapp.com/animals
    // Http Method: GET
    public static HttpResponse getAnimals(){
        // 1. Prepare HttpRequest and wrap all the necessary data in it
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('GET'); //in setMethod whatever you put in quotes, it has to be capital letter!!! like this --> .request.setMethod('GET') --> 'GET'
        // 2. Prepare internet
        Http http = new Http();
        // 3. Send the request over the internet to recieve HttpResponse
        HttpResponse response = http.send(request);
        // 4. Process the response
        system.debug(response.getStatus());
        system.debug(response.getStatusCode());
        system.debug(response.getBody());
        return response;
    }
    // Http Method: GET
    public static HttpResponse getAirlineDetails(){
        // 1. Prepare HttpRequest and wrap all the necessary data in it
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://api.instantwebtools.net/v1/airlines/1');
        request.setMethod('GET'); //don't forget inside the setMethod() will always be in capital as we see here---> 'GET'
        // 2. Prepare internet
        Http http = new Http();
        // 3. Send the request over the internet in order to recieve HttpResponse
        HttpResponse response = http.send(request);
        // 4. Process the response
        // We will do some more details here other than the first getAnimals method.
        if(response.getStatusCode() == 200){
            string jsonString = response.getBody();
            // convert json string into wrapper
            AirlinesWrapper wrapper = (AirlinesWrapper)JSON.deserialize(jsonString, AirlinesWrapper.class);
            // convert wrapper into sObject record
            Airlines__c airline = new Airlines__c();
            airline.Name = string.valueOf(wrapper.id);
            airline.Name__c = wrapper.name;
            airline.Country__c = wrapper.country;
            airline.Logo_URL__c = wrapper.logo;
            airline.Slogan__c = wrapper.slogan;
            airline.Head_Quaters__c = wrapper.head_quaters;
            airline.Website__c = wrapper.website;
            airline.Established__c = wrapper.established;
            // create airlines record
            // Endpoint: https://api.instantwebtools.net/v1/airlines/1
            try{
                insert airline;
            }catch(Exception ex) {
                system.debug(ex.getMessage());
            }
        }else {
            system.debug(response.getStatus());
            system.debug(response.getStatusCode());
            system.debug(response.getBody());
        }
        return response;
    }
    // steps
    // 1.you need Employee__c custom object(we just created)
    // 2.you need EmployeeWrapper(we just created)
    // Remote site setting
    // callout method
    //
    // Endpoint: https://api.onlinewebtutorblog.com/employees
    // Http Method: GET
    public static HttpResponse getEmployees(){
        // 1. Prepare HttpRequest and wrap all the necessary data in it
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://api.onlinewebtutorblog.com/employees');
        request.setMethod('GET'); //don't forget inside the setMethod() will always be in capital as we see here---> 'GET'
        // 2. Prepare internet
        Http http = new Http();
        // 3. Send the request over the internet in order to recieve HttpResponse
        HttpResponse response = http.send(request);
        // 4. Process the response
        if(response.getStatusCode()==200){
            string jsonString = response.getBody();
            // convert json string into wrapper
            EmployeeWrapper empWrapper = (EmployeeWrapper)JSON.deserialize(jsonString, EmployeeWrapper.class);
            List<EmployeeWrapper.Employee> employees = empWrapper.data;
            // convert wrapper into sObject
            List<Employee__c> emps = new List<Employee__c>();
            for(EmployeeWrapper.Employee empWrap : employees){
                Employee__c emp = new Employee__c();
                emp.Name = string.valueOf(empWrap.id);
                emp.Name__c = empWrap.name;
                emp.Username__c = empWrap.username;
                emp.Email__c = empWrap.email;
                emp.Designation__c = empWrap.designation;
                emp.Gender__c = empWrap.gender;
                emp.Complete_Address__c = empWrap.complete_address;
                emp.Phone_Number__c = empWrap.phone_number;
                emps.add(emp);
            }
            // insert employee record
            try{
                insert emps;
            }catch(Exception ex) {
                system.debug(ex.getMessage());
            }
        }else{
            system.debug(response.getStatus());
            system.debug(response.getStatusCode());
            system.debug(response.getBody());
        }
        return response;
    }
    // End point --- https://empathetic-shark-fjxkcy-dev-ed.trailblaze.my.salesforce.com/services/apexrest/Case/500Dn000004kAQyIAM
    // Http Method: GET
    public static HttpResponse getCaseInfo(){
        // 1. Prepare HttpRequest and wrap all the necessary data in it
        HttpRequest request = new HttpRequest();
        request.setEndpoint('callout:NC_SFDEV12/services/apexrest/Case/500Dn000004kAQyIAM');
        request.setMethod('GET'); //don't forget inside the setMethod() will always be in capital as we see here---> 'GET'
        // 2. Prepare internet
        Http http = new Http();
        // 3. Send the request over the internet in order to recieve HttpResponse
        HttpResponse response = http.send(request);
        // 4. Process the response
        system.debug(response.getStatus());
        system.debug(response.getStatusCode());
        system.debug(response.getBody());
        return response;
    }
    // Endpoint: https://th-apex-http-callout.herokuapp.com/animals
    // Http Method: POST
    public static HttpResponse postAnimal(){
        // 1. Prepare HttpRequest and wrap all the necessary data in it
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('POST'); //don't forget inside the setMethod() will always be in capital as we see here---> 'POST'
         // Set JSON body
         request.setBody('{"name":"mighty moose"}');
         request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        // 2. Prepare internet
        Http http = new Http();
        // 3. Send the request over the internet in order to recieve HttpResponse
        HttpResponse response = http.send(request);
        // 4. Process the response
        system.debug(response.getStatus()); // We will get Created instead of OK
        system.debug(response.getStatusCode()); // we are supposed to receive 201 or 200 as status code which all mean success
        system.debug(response.getBody());
        return response;
    }
    // Endpoint: https://api.instantwebtools.net/v1/airlines
    // Http Method: POST
    @future(callout=true)
    public static void postAirlines(Id airlineId){
        // 1. Prepare HttpRequest and wrap all the necessary data in it
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://api.instantwebtools.net/v1/airlines');
        request.setMethod('POST');
        // set json body
        Airlines__c airline = [SELECT Name, Name__c, Country__c, Logo_URL__c, Slogan__c, Head_Quaters__c, Website__c, Established__c
                               FROM Airlines__c WHERE Id = :airlineId ];
        AirlinesWrapper wrapper = new AirlinesWrapper();
        wrapper.country = airline.Country__c;
        wrapper.logo = airline.Logo_URL__c;
        wrapper.established = airline.Established__c;
        wrapper.head_quaters = airline.Head_Quaters__c;
        wrapper.slogan = airline.Slogan__c;
        wrapper.website = airline.Website__c;
        wrapper.name = airline.Name__c;
        String body = JSON.serialize(wrapper);
        request.setBody(body);
        request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        // 2. Prepare internet
        Http http = new Http();
        // 3. Send the request over the internet in order to recieve HttpResponse
        HttpResponse response = http.send(request);
        // 4. Process the response
        if(response.getStatusCode() ==200 || response.getStatusCode() == 201){
            system.debug('Data has been sent successfully!!');
        }else {
            system.debug(response.getBody());
        }
    }
    // Endpoint: https://api.onlinewebtutorblog.com/employees
    // Http Method: POST
    @future(callout=true)
    public static void postEmployees(Id employeeId){
        // 1. Prepare HttpRequest and wrap all the necessary data in it
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://api.onlinewebtutorblog.com/employees');
        request.setMethod('POST');
        // set json body
        Employee__c employee = [SELECT Name, Name__c, Username__c, Gender__c, Email__c, Designation__c, Phone_Number__c, Complete_Address__c
                               FROM Employee__c WHERE Id = :employeeId ];
        EmployeeWrapper.Employee emp = new EmployeeWrapper.Employee();
        emp.name = employee.Name__c;
        emp.username = employee.Username__c;
        emp.gender = employee.Gender__c;
        emp.email = employee.Email__c;
        emp.designation = employee.Designation__c;
        emp.phone_number = employee.Phone_Number__c;
        emp.complete_address = employee.Complete_Address__c;
        String body = JSON.serialize(emp);
        request.setBody(body);
        request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        // 2. Prepare internet
        Http http = new Http();
        // 3. Send the request over the internet in order to recieve HttpResponse
        HttpResponse response = http.send(request);
        // 4. Process the response
        if(response.getStatusCode() ==200 || response.getStatusCode() == 201){
            system.debug('Data has been sent successfully!!');
        }else {
            system.debug(response.getBody());
        }
    }

    
}












