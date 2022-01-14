package com.hanul.study;

import java.io.Serializable;

public class TestDTO implements Serializable{
	private String no 		;
	private String question	;
	private String answer	;
	private int subno		;
	private String view1	;
	private String view2	;
	private String view3	;
	private String view4	;
	
	
	public TestDTO () {}


	public TestDTO(String no, String question, String answer, int subno, String view1, String view2, String view3, String view4) {
		super();
		this.no = no;
		this.question = question;
		this.answer = answer;
		this.subno = subno;
		this.view1 = view1;
		this.view2 = view2;
		this.view3 = view3;
		this.view4 = view4;
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
	}

	public int getSubno() {
		return subno;
	}


	public void setSubno(int subno) {
		this.subno = subno;
	}


	public String getView1() {
		return view1;
	}


	public void setView1(String view1) {
		this.view1 = view1;
	}


	public String getView2() {
		return view2;
	}


	public void setView2(String view2) {
		this.view2 = view2;
	}


	public String getView3() {
		return view3;
	}


	public void setView3(String view3) {
		this.view3 = view3;
	}


	public String getView4() {
		return view4;
	}


	public void setView4(String view4) {
		this.view4 = view4;
	}
}