trigger AccountAddressTrigger on Account (before insert, before update,after insert) {
 if(Trigger.IsInsert && Trigger.IsUpdate && Trigger.IsBefore){
           TraningClass.copyshippingAddress(Trigger.New,Trigger.oldmap,Trigger.IsInsert,Trigger.IsUpdate,Trigger.IsBefore,Trigger.IsAfter); 
        }else if(Trigger.IsInsert && Trigger.IsAfter){
         TraningClass.copyshippingAddress(Trigger.New,Trigger.oldmap,Trigger.IsInsert,Trigger.IsUpdate,Trigger.IsBefore,Trigger.IsAfter);
    }
    
}