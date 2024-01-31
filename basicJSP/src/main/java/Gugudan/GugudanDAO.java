package Gugudan;

import java.util.ArrayList;
import java.util.Random;

public class GugudanDAO {
	
	int count;
	int score;
	
	ArrayList<GugudanVO> quiz;
	
	GugudanDAO(){
		
	}
	
	private void makeQuiz() {
		Random rd = new Random();
		for(int i =0; i<5 ; i+=1) {
			GugudanVO vo = new GugudanVO(rd.nextInt(8)+2,rd.nextInt(9)+1);
			
		}
	}
}
