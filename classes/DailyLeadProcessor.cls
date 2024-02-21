public class DailyLeadProcessor implements Schedulable{
    public void execute(SchedulableContext ctx) {
        List<Lead> leadList = [SELECT Id from lead where LeadSource = null limit 200];
        // Create a task for each opportunity in the list
        for(Lead le: leadList){
            le.LeadSource='Dreamforce';
        }
    }
}