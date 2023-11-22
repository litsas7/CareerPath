package careerpath;

public class Job {
    private String name;
	private String domain;
	private String desc;
	private int id;
	private int interested;
    private String cuname;

    /**
     * Full constuctor
     *
     * @param name
     * @param domain
     * @param desc
     * @param id
     * @param interested
     * @param cuname
     */
    public Job(String name, String domain, String desc, int id, int interested, String cuname) {
        this.name = name;
        this.domain = domain;
        this.desc = desc;
        this.id = id;
        this.interested = interested;
        this.cuname = cuname;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDomain() {
        return domain;
    }

    public void setDomain(String domain) {
        this.domain = domain;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setInterested(int interested) {
        this.interested = interested;
    }

    public int getInterested() {
        return interested;
    }

    public String getCuname() {
        return cuname;
    }

    public void setCuname(String cuname) {
        this.cuname = cuname;
    }
}