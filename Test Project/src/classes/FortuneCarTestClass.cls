@isTest
private class FortuneCarTestClass {
    static testMethod void validateCar()
    {
        Car__c c = new Car__c(Name = 'CarTest', Car_Price__c=100);
        System.debug('Price Before Discount on Car:' + c.Car_Price__c);
        
        // Insert New Car
     
        insert c; 
        
        //Retrive New Car
        
        c = [select Car_Price__c from Car__c where Id = :c.Id];
        System.debug('Price after trigger fired:' + c.Car_Price__c);
        
        //Test that the trigger correctly updated the price
       
        system.assertEquals(90, c.Car_Price__c);
        
               
    }
     
}