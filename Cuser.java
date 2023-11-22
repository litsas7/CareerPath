package careerpath;

public class Cuser {
    private String name;
	private String surname;
	private String email;
	private String cusername;
	private String password;

    /**
     * Full constuctor
     *
     * @param name
     * @param surname
     * @param email
     * @param cusername
     * @param password
     */
    public Cuser(String name, String surname, String email, String cusername, String password) {
        this.name = name;
        this.surname = surname;
        this.email = email;
        this.cusername = cusername;
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCusername() {
        return cusername;
    }

    public void setCusername(String cusername) {
        this.cusername = cusername;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPassword() {
        return password;
    }
}