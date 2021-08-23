public class TraningClass{

public static void copyshippingAddress(List<Account> newListAccount, Map<Id,Account> oldAccountRecords,Boolean IsInsert,Boolean IsUpdate,Boolean IsBefore,Boolean IsAfter){

List<Contact> listContact = new List<Contact>();
for(Account obj : newListAccount){
         if(IsInsert && IsUpdate && IsBefore){
            if(obj.Match_Billing_Address__c == true && obj.Match_Billing_Address__c  != oldAccountRecords.get(obj.Id).Match_Billing_Address__c){
               obj.BillingPostalCode = obj.ShippingPostalCode;
                
            }
            system.debug('---OwnerId--'+obj.OwnerId);
        }else if(IsInsert && IsAfter){
         Contact objcon = new Contact();
         objcon.AccountId = obj.id;
         objcon.LastName = 'TestContact';
         listContact.add(objcon);
        
        }
    }
    if(!listContact.IsEmpty()){
       insert listContact; 
    }

}

}