package a_Programers;

import java.util.Arrays;
import java.util.HashSet;
import java.util.ArrayList;

public class A01_pickTwoNum {
	
	/**
	 * 정수 배열 numbers.
	 * 서로다른 인덱스에 있는 두개의 수를 뽑아서 더해 만들 수 있는 모든 수
	 * 배열에 오름차순으로 담아 return.
	 * solution함수를 완성하라.
	 * 
	 * ex. numbers는 길이 2이상 100이하
	 * numbers의 모든 수는 0이상 100이하.
	 * 
	 * @param args
	 */
	
	public static void main(String[] args) {
		Solution s = new Solution();
		int ranIdx = (int)(Math.random()*98+2);
		int[] ran = new int[ranIdx];
		for(int i = 0; i < ran.length;i++) {
			int ranNums = (int)(Math.random()*101);
			ran[i] = ranNums;
		}
		
		int[] result = s.solution(ran);
		System.out.println(Arrays.toString(ran));
		System.out.println(Arrays.toString(result));
	}
}
class Solution {
   public int[] solution(int[] numbers) {
        ArrayList<Integer> list = new ArrayList<Integer>();
       
        for(int i = 0; i < numbers.length; i++){
            for(int j = i+1; j < numbers.length; j++){
                int a = numbers[i]+numbers[j];
                if(list.indexOf(a) < 0){ //indexOf의 return 값?
                    list.add(a);
                }
            }
        }
        
        int[] answer = new int[list.size()];
                   
        for(int i = 0; i < list.size(); i++){
            answer[i] = list.get(i);
        }
        
        Arrays.sort(answer); //Arrays.sor기능. Array심화 필요.
        
        return answer;
    }
}


class Solution2 {
	public int[] solution(int[] numbers) {
		HashSet<Integer> set = new HashSet<Integer>(); //HashSet 심화.
		
		for(int i=0; i < numbers.length; i++) {
			for(int j=i+1; j<numbers.length; j++) {
				set.add( numbers[i] + numbers[j]);
			}
		}
		
		return set.stream().sorted().mapToInt(Integer::intValue).toArray();
		//정체가 뭐냐 이거.
		//1 .stram()
		//2 .mapToInt(Integer::intValue)
		
	}
}

