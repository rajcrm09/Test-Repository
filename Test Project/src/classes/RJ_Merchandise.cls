@isTest
private class RJ_Merchandise {
    static testMethod void validateRJ_Merchandise()
    {
        RJMerchandise__c RJ = new RJMerchandise__c(Name = 'MerchandiseTest', Price__c=100);
        System.debug('Price Before Discount on RJMerchandise:' + RJ.Price__c);
        
        // Insert New Merchandise
     
        insert RJ; 
        
        //Retrive New Merchandise
        
        RJ = [select Price__c from RJMerchandise__c where Id = :RJ.Id];
        System.debug('Price after trigger fired:' + RJ.Price__c);
        
        //Test that the trigger correctly updated the price
       
        system.assertEquals(90, RJ.Price__c);
        
               
    }
     
}