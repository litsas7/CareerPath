package careerpath;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CuserDAO {
    public List<Cuser> getCusers() throws Exception {
		String sql = "SELECT * FROM cusers;";
		Connection con = null;
		DB db = new DB();
		List<Cuser> cusers = new ArrayList<Cuser>();
		try {
			con = db.getConnection();
			PreparedStatement stmt = con.prepareStatement( sql );
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
	 			cusers.add( new Cuser(rs.getString("name"), rs.getString("surname"),
                                           rs.getString("email"),rs.getString("cusername"),
                                           rs.getString("password")) );
			}
			rs.close();
			stmt.close();
			db.close();
			return cusers;
		} catch(Exception e) {
			throw new Exception("Could not establish connection with the Database Server: "
				+ e.getMessage());
		} finally {

			try {
			     db.close();
			} catch (Exception e) {

			}
		}
	} //End of getUsers

	/**
	 * Search user by cusername
	 *
	 * @param cusername, String
	 * @return User, the User object or null
	 * @throws Exception
	 */
	public Cuser findCuser(String cusername) throws Exception {
		String sql = "SELECT * FROM cusers WHERE cusername=?;";
		Connection con = null;
		DB db = new DB();
		try {
			con = db.getConnection();
			PreparedStatement stmt = con.prepareStatement( sql );
			stmt.setString(1, cusername);
			ResultSet rs = stmt.executeQuery();
			if (!rs.next()) {

                rs.close();
                stmt.close();
                db.close();
                throw new Exception("No user found with id: " + cusername);

            }
			Cuser cuser = new Cuser(rs.getString("name"), rs.getString("surname"),
                                           rs.getString("email"),rs.getString("cusername"),
                                           rs.getString("password"));
			rs.close();
            stmt.close();
            db.close();
			return cuser;
		} catch(Exception e){
			throw new Exception("Could not establish connection with the Database Server: "
				+ e.getMessage());
		} finally {
			try {
			     db.close();
			} catch (Exception e) {

			}
		}
	} //End of findUser

	/**
	 * This method is used to authenticate a user.
	 *
	 * @param cusername, String
	 * @param password, String
	 * @return User, the User object
	 * @throws Exception, if the credentials are not valid
	 */
	public Cuser authenticate(String cusername, String password) throws Exception {
		DB db = new DB();
		Connection con = null;

		String sql = "SELECT * FROM cusers WHERE cusername=? AND password=?;";

		try{
			con = db.getConnection();
			PreparedStatement stmt = con.prepareStatement( sql );
			stmt.setString(1, cusername);
			stmt.setString(2, password);
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				return new Cuser(rs.getString("name"), rs.getString("surname"),
                                           rs.getString("email"),rs.getString("cusername"),
                                           rs.getString("password"));
			} else {
				throw new Exception("Wrong cusername or password");
			}

		} catch(Exception e){
			throw new Exception("Could not establish connection with the Database Server: "
				+ e.getMessage());
		} finally {
			try {
			     db.close();
			} catch (Exception e) {

			}
		}
	} //End of authenticate

	/**
	 * Register/create new User.
	 *
	 * @param user, User
	 * @throws Exception, if encounter any error.
	 */
	public void register(Cuser cuser) throws Exception {
		DB db = new DB();
		String sql = "INSERT INTO cusers " + " (name, surname, email, cusername, password) VALUES (?, ?, ?, ?, ?);";
		Connection con = null;
		try{
			con = db.getConnection();
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, cuser.getName());
            stmt.setString(2, cuser.getSurname());
            stmt.setString(3, cuser.getEmail());
            stmt.setString(4, cuser.getCusername());
			stmt.setString(5, cuser.getPassword());
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
}