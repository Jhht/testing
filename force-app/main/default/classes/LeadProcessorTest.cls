@isTest
public class LeadProcessorTest {

    @testsetup
    static void setup(){
        List<Lead> leads = new List<Lead>();
        
        for(Integer i = 0; i <200; i++){
            leads.add(new Lead(LastName='aaa', Company='c'));
        }
        
        insert leads;
    }
    
    static testmethod void test(){
          Test.startTest();

        LeadProcessor uca = new LeadProcessor();

        Id batchId = Database.executeBatch(uca);

        Test.stopTest();

    }
}