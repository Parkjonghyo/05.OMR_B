package com.hanul.study;

public class TestDTO {
	private String no 		;
	private String question	;
	private String answer	;
	
	
	public TestDTO () {}


	public TestDTO(String no, String question, String answer) {
		super();
		this.no = no;
		this.question = question;
		this.answer = answer;
	}


	public String getNo() {
		return no;
	}


	public void setNo(String no) {
		this.no = no;
	}


	public String getQuestion() {
		return question;
	}


	public void setQuestion(String question) {
		this.question = question;
	}


	public String getAnswer() {
		return answer;
	}


	public void setAnswer(String answer) {
		this.answer = answer;
	};
	
	
	
	
}
