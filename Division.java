// 整数 m と n が与えられます。

// m を n で割り算した商と余りを出力して下さい。

// 入力例1
// 10 3
// 出力例1
// 3 1

// 入力例2
// 12 14
// 出力例2
// 0 12
import java.util.*;

public class Division {
    public static void main(String[] args) {
        // 自分の得意な言語で
        // Let's チャレンジ！！
        Scanner sc = new Scanner(System.in);
        int originNum = sc.nextInt();
        int divisorNum = sc.nextInt();
        System.out.println(originNum / divisorNum + " " + originNum % divisorNum);
    }
}