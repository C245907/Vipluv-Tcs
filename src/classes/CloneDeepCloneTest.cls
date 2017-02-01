public class CloneDeepCloneTest{

    public List<Account> newAccList{get;set;}

    public List<Account> newAccListCloned;

    public List<Account> oldAccList;

  public CloneDeepCloneTest(){

    newAccList=[SELECT id,Name,Industry FROM Account LIMIT 3];

    oldAccList=newAccList.deepClone(true,true,true);

    newAccListCloned=newAccList.clone();

   }

   public PageReference doSave() {

      update newAccList;

    System.debug('*******deepClone value********'+oldAccList);

    System.debug('******updated********'+newAccList);

    System.debug('*******clone*******'+newAccListCloned);

     

        return null;

    }

}