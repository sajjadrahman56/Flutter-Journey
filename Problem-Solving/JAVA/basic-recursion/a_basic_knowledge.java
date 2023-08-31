public class BasicRecursion{
    public static void main(String[] args){
       Print1(1);
    }
     public static void Print1(int n)
     {
         System.out.println(n);
         Print2(2);
     }
     public static void Print2(int n)
     {
         System.out.println(n);
         Print3(3);
     }
     public static void Print3(int n)
     {
         System.out.println(n);
         Print4(4);
     }
     public static void Print4(int n)
     {
         System.out.println(n);
         Print5(5);
     }
     public static void Print5(int n)
     {
         System.out.println(n);
         
     }
}