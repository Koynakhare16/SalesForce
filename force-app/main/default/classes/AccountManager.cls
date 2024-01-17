@RestResource(urlMapping='/Accounts/*/contacts')
global class AccountManager {
     @HttpGet
    global static Account getAccount(){
      RestRequest request = RestContext.request;
         String accountId = request.requestURI.substringBetween('Accounts/','/contacts');
        Account result =[Select Id,Name,(Select Id,FirstName,LastName from Contacts) From Account where Id = :accountId];
        return result;
    }
}