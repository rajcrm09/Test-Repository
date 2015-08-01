trigger Fortunecar on Car__c (before insert) {
    
 Car__c [] cars = Trigger.new;
    Fortune.applyDiscount(cars);
       

}