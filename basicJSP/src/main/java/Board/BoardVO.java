package Board;

public class BoardVO {
    private int no; // 게시글 번호
    private String writer; //작성자
    private String regDate;//작성일
    private String subject;//제목
    private String contents;//내용
    
	public BoardVO(int no, String writer, String regDate, String subject, String contents) {
		super();
		this.no = no;
		this.writer = writer;
		this.regDate = regDate;
		this.subject = subject;
		this.contents = contents;
	}

	public int getNo() {
		return no;
	}

	public String getWriter() {
		return writer;
	}

	public String getRegDate() {
		return regDate;
	}

	public String getSubject() {
		return subject;
	}

	public String getContents() {
		return contents;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}
    
    
    
}
