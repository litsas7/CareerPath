package careerpath;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class JobDAO {
    public List<Job> getJobs() throws Exception {
		String sql = "SELECT * FROM jobs;";
		Connection con = null;
		DB db = new DB();
		List<Job> jobs = new ArrayList<Job>();
		try {
			con = db.getConnection();
			PreparedStatement stmt = con.prepareStatement( sql );
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
	 			jobs.add( new Job(rs.getString("name"), rs.getString("domain"),
                                           rs.getString("desc"),rs.getInt("id"),
                                           rs.getInt("interested"), rs.getString("cuname")));
			}
			rs.close();
			stmt.close();
			db.close();
			return jobs;
		} catch(Exception e) {
			throw new Exception("Could not establish connection with the Database Server: "
				+ e.getMessage());
		} finally {

			try {
			     db.close();
			} catch (Exception e) {

			}
		}
	} //End of getJobs

	/**
	 * Search Job by id
	 *
	 * @param id, int
	 * @return Job, the Job object or null
	 * @throws Exception
	 */
	public Job findJob(int id) throws Exception {
		String sql = "SELECT * FROM jobs WHERE id=?;";
		Connection con = null;
		DB db = new DB();
		try {
			con = db.getConnection();
			PreparedStatement stmt = con.prepareStatement( sql );
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();
			if (!rs.next()) {

                rs.close();
                stmt.close();
                db.close();
                throw new Exception("No Job found with id: " + id);

            }
            Job job = new Job(rs.getString("name"), rs.getString("domain"),
                                            rs.getString("desc"),rs.getInt("id"),
                                            rs.getInt("interested"), rs.getString("cuname"));
            rs.close();
            stmt.close();
            db.close();
            return job;

		} catch(Exception e){
			throw new Exception("Could not establish connection with the Database Server: "
				+ e.getMessage());
		} finally {
			try {
			     db.close();
			} catch (Exception e) {

			}
		}
	} //End of findJob



	/**
	 * Register/create new Job.
	 *
	 * @param Job, Job
	 * @throws Exception, if encounter any error.
	 */
	public void register(Job job) throws Exception {
		DB db = new DB();
		String sql = "INSERT INTO jobs " + " (name, domain, desc, id, interested, cuname) VALUES (?, ?, ?, ?, ?, ?);";
		Connection con = null;
		try{
			con = db.getConnection();
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, job.getName());
            stmt.setString(2, job.getDomain());
            stmt.setString(3, job.getDesc());
            stmt.setInt(4, job.getId());
			stmt.setInt(5, job.getInterested());
            stmt.setString(6, job.getCuname());
			stmt.executeUpdate();
            stmt.close();
            db.close();
		} catch (Exception e) {
			throw new Exception("Could not establish connection with the Database Server: "
				+ e.getMessage());
		} finally {
			try {
			     db.close();
			} catch (Exception e) {

			}
		}
		// thema 1 D


	}//end of register

    public List<Job> searchJobs(String domain) throws Exception {
		String sql = "SELECT * FROM jobs WHERE domain=?;";
		Connection con = null;
		DB db = new DB();
		List<Job> jobs = new ArrayList<Job>();
		try {
			con = db.getConnection();
			PreparedStatement stmt = con.prepareStatement( sql );
			stmt.setString(1, domain);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                jobs.add( new Job(rs.getString("name"), rs.getString("domain"),
                    rs.getString("desc"),rs.getInt("id"),
                    rs.getInt("interested"), rs.getString("cuname")));
            }
            rs.close();
            stmt.close();
            db.close();
            return jobs;

		} catch(Exception e) {
			throw new Exception("Could not establish connection with the Database Server: "
				+ e.getMessage());
		} finally {

			try {
			     db.close();
			} catch (Exception e) {

			}
		}
	} //End of searchJobs

    public List<Job> myJobs(String cuname) throws Exception {
		String sql = "SELECT * FROM jobs WHERE cuname=?;";
		Connection con = null;
		DB db = new DB();
		List<Job> jobs = new ArrayList<Job>();
		try {
			con = db.getConnection();
			PreparedStatement stmt = con.prepareStatement( sql );
			stmt.setString(1, cuname);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                jobs.add( new Job(rs.getString("name"), rs.getString("domain"),
                    rs.getString("desc"),rs.getInt("id"),
                    rs.getInt("interested"), rs.getString("cuname")));
            }

			rs.close();
			stmt.close();
			db.close();
			return jobs;
		} catch(Exception e) {
			throw new Exception("Could not establish connection with the Database Server: "
				+ e.getMessage());
		} finally {

			try {
			     db.close();
			} catch (Exception e) {

			}
		}
	} //End of myJobs
}