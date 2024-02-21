@isTest
public class DailyLeadProcessorTest {
    public static String CRON_EXP = '0 0 0 15 3 ? 2022';
    @isTest
    Public static void testScheduledJob() {
        // Create some out of date Opportunity records
        List<Lead> insertList = new List<Lead>();
        Date closeDate = Date.today().addDays(-7);
        for (Integer i=0; i<200; i++) {
            Lead Le = new Lead(
                LastName = 'Leads' + i,
                Company = i+'Comp'
                
            );
            insertList.add(Le);
        }
        insert insertList;
        Test.startTest();
        // Schedule the test job
        DailyLeadProcessor scheUpdateAccount = new DailyLeadProcessor(); 
        String sch ='0 48 * * * ?'; 
        System.schedule('Schedule to update Account Name', sch,scheUpdateAccount);
        
        Test.stopTest();
    }
    	
}