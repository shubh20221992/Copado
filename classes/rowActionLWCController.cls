public class rowActionLWCController {

	@AuraEnabled
    public static list<contact> getRelatedContact(Id accids){
        
        list<contact> conList = [Select id, phone, accountId from contact where accountId=: accids ];
        
        if(conlist.size()>0){
            return conList;
        }
        else{
            return null;
        }
        
    }
}