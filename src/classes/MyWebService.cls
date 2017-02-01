global class MyWebService {

    webService static Id makeContact(String lastName, Account a) {

        Contact c = new Contact(lastName = lastName, AccountId = a.Id);

        insert c;

        return c.id;

    }

}