public class Nto1{
    public static void main(String[] args){
        int n = 5;
        printNto1(n);
        System.out.println(" Reverse Print ");
        ReverseprintNto1(n);
    }
    public static void printNto1(int n){
        if(n==0){
            return;
        }
        System.out.print(n+" ");
        printNto1(n-1);
    }
    public static void ReverseprintNto1(int n){
        if(n==0){
            return;
        }
        
        ReverseprintNto1(n-1);
        System.out.print(n+" ");
    }
}