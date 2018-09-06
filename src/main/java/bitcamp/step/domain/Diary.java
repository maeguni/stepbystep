package bitcamp.step.domain;

import java.sql.Date;

public class Diary {
    protected int no;
    protected int memberNo;
    protected Date day;
    protected String title;
    protected String contant;
    public int getNo() {
        return no;
    }
    public void setNo(int no) {
        this.no = no;
    }
    public int getMemberNo() {
        return memberNo;
    }
    public void setMemberNo(int memberNo) {
        this.memberNo = memberNo;
    }
    public Date getDay() {
        return day;
    }
    public void setDay(Date day) {
        this.day = day;
    }
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public String getContant() {
        return contant;
    }
    public void setContant(String contant) {
        this.contant = contant;
    }
    @Override
    public String toString() {
        return "Diary [no=" + no + ", memberNo=" + memberNo + ", day=" + day + ", title=" + title + ", contant="
                + contant + "]";
    }
    

    
    
    
    
    
    
    
    
    
    
}
