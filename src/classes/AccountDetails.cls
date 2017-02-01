public class AccountDetails {

    //apexPages.StandardSetController must be instantiated

    // for standard list controllers

    public ApexPages.StandardSetController setCon {

        get {

            if(setCon == null) {

                setCon = new ApexPages.StandardSetController(Database.getQueryLocator(

                    [SELECT ID,Name FROM Account WHERE Name = 'abc']));

            }

            return setCon;

        }

        set;

    }

 

    // Initialize setCon and return a list of records

    public List<Account> getAccounts() {

        return (List<Account>) setCon.getRecords();

    }

}
