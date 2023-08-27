public class Nto1{
    public static void main(String[] args){
       fact(5);
    }
     public static int fact(int n)
     {
        if(n==0)
        {
            return 1;
        }
        int tempFact = fact(n-1);
        System.out.println(tempFact+" = current tempact = "+n);
        int myFact = n*tempFact;
        return myFact;
     }
}