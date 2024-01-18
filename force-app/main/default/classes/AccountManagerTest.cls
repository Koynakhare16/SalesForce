@isTest
public class AccountManagerTest {
@isTest
    public static void testGetAccount(){
        Account a=new Account (Name='TestAccount');
        insert a;
        Contact c=new Contact(AccountId=a.Id,FirstName='Test',LastName='Test');
        insert c;
        RestRequest request =new RestRequest();
        request.requestUri='https://hbweb2-dev-ed.develop.my.salesforce.com/services/apexrest/Accounts/'+a.Id+'/contacts';
            request.httpMethod='Get';
        RestContext.request=request;
        Account myAcc=AccountManager.getAccount();
    }
}