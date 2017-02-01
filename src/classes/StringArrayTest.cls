public class StringArrayTest {

    public static list<String> generateStringArray (Integer n)
    {
        list<String> teststring = new list<String>();
        for(Integer i=0;i<n;i++)
        {
            teststring.add('Test '+i);
        }
        System.debug('the strings are as follows'+teststring);
      return teststring;  
    }
}