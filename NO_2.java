
class SelfNnumber{ 
	

    static int getSum(int n) 
    { 
        int sum = 0; 
        while (n != 0) 
        { 
            sum = sum + n % 10; 
            n = n / 10; 
        } 
        return sum; 
    } 


    static boolean isSelfNum(int n) 
    { 
        for(int m = 1; m <= n; m++) 
        { 
            if (m + getSum(m) == n) 
                return false; 
            }
        }
        return true; 
    } 


    public static void main(String[] args) 
    { 
        

        int max = 10000 
        for(int i = 0; i <= max; i++){
            if (isSelfNum(i)) 
            { 
                System.out.println(i); 
            } 

        }

        
        
    } 
} 


