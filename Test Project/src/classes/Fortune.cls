public class Fortune
{
    public static void applyDiscount(Car__c[] cars)
    {
        for (Car__c c: cars)
          c.Car_Price__c = c.Car_Price__c * 0.9;
        
    }
        
           
}