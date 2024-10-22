# authentication

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

import java.io.*;
import java.math.*;
import java.security.*;
import java.text.*;
import java.util.*;
import java.util.concurrent.*;
import java.util.function.*;
import java.util.regex.*;
import java.util.stream.*;
import static java.util.stream.Collectors.joining;
import static java.util.stream.Collectors.toList;



class Result {

    /*
     * Complete the 'getDistance' function below.
     *
     * The function is expected to return an INTEGER.
     * The function accepts STRING word as parameter.
     */

    public static int getDistance(String word) {
    // Write your code here
    int len=word.length();
    // char cp='Q';
    int cr=0, cc=0;
    int result=0;
    
    String []strarr = new String[3];
    strarr[0]="QWERTYUIOP";
    strarr[1]="ASDFGHJKL0";
    strarr[2]="0ZXCVBNM00";
    
    for(int i=0; i<len; i++){
        // int vd=0, hd=0;
        int row=0, col=0;
        for(int j=0; j<3; j++){
            int temp = strarr[j].indexOf(word.charAt(i));
            if(temp!=-1){
                col=temp;
                row=j;
                break;
            }
        }
        
        result = result + modulusSub(row, cr) + modulusSub(col, cc);
        // System.out.println(word.charAt(i)+", "+result);
        cr=row;
        cc=col;
        
    }
    
    return result;
    }
    
    static int modulusSub(int a, int b){
        if((a-b)>=0){
            return (a-b);
        }
        else{
            return (b-a);
        }
    }

}

public class Solution {
public static void main(String[] args) throws IOException {
BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(System.in));
BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(System.getenv("OUTPUT_PATH")));

        String word = bufferedReader.readLine();

        int result = Result.getDistance(word);

        bufferedWriter.write(String.valueOf(result));
        bufferedWriter.newLine();

        bufferedReader.close();
        bufferedWriter.close();
    }
}
