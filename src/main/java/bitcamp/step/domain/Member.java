package bitcamp.step.domain;

import java.io.Serializable;

public class Member implements Serializable {
     
    private static final long serialVersionUID = 1L;
    
    
    protected int no;
    protected String id;
    protected String email;
    protected String password;
    protected String mphoto;
    
    public int getNo() {
        return no;
    }
    public void setNo(int no) {
        this.no = no;
    }
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getMphoto() {
        return mphoto;
    }
    public void setMphoto(String mphoto) {
        this.mphoto = mphoto;
    }
    public static long getSerialversionuid() {
        return serialVersionUID;
    }
    @Override
    public String toString() {
        return "Member [no=" + no + ", id=" + id + ", email=" + email + ", password=" + password + ", mphoto=" + mphoto
                + "]";
    }
    
    
    

}
