package Board;

import java.time.LocalDate;
import java.util.ArrayList;

public class BoardDAO {
	
	ArrayList<BoardVO> list = new ArrayList<BoardVO>();

	public BoardDAO() {
		init();
	}
	
	private void init(){
		for(int i=1; i<=3;i+=1) {
			BoardVO b = new BoardVO(i, "작성자"+i, "2022-02-0"+i, "제목"+i, "내용"+i);
			list.add(b);
		}
	}
	
	public void addBoard(int i) {
		LocalDate now = LocalDate.now();
		String date = now+"";
		
		BoardVO b = new BoardVO(i, "작성자"+i, date, "제목"+i, "내용"+i);
		list.add(b);
	}
	
	public void addBoard(int i, String writer, String subject, String contents) {
		LocalDate now = LocalDate.now();
		String date = now+"";
		
		BoardVO b = new BoardVO(i, writer, date, subject, contents);
		list.add(b);
	}
	public ArrayList<BoardVO> getList() {
		return list;
	}
	
}
