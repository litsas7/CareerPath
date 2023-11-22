package careerpath;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {
    public List<User> getUsers() throws Exception {
		String sql = "SELECT * FROM users;";
		Connection con = null;
		DB db = new DB();
		List<User> users = new ArrayList<User>();
		try {
			con = db.getConnection();
			PreparedStatement stmt = con.prepareStatement( sql );
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
	 			users.add( new User(rs.getString("name"), rs.getString("surname"),
                                           rs.getString("email"),rs.getString("username"),
                                           rs.getString("password"), rs.getString("bachelor"),
                                           rs.getString("years"), rs.getString("age")));
			}
			rs.close();
			stmt.close();
			db.close();
			return users;
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
	 * Search user by username
	 *
	 * @param username, String
	 * @return User, the User object or null
	 * @throws Exception
	 */
	public User findUser(String username) throws Exception {
		String sql = "SELECT * FROM users WHERE username=?;";
		Connection con = null;
		DB db = new DB();
		try {
			con = db.getConnection();
			PreparedStatement stmt = con.prepareStatement( sql );
			stmt.setString(1, username);
			ResultSet rs = stmt.executeQuery();
			if (!rs.next()) {

                rs.close();
                stmt.close();
                db.close();
                throw new Exception("No user found with username: " + username);

            }
			User user = new User(rs.getString("name"), rs.getString("surname"),
                                           rs.getString("email"),rs.getString("username"),
                                           rs.getString("password"), rs.getString("bachelor"),
                                           rs.getString("years"), rs.getString("age"));
			rs.close();
            stmt.close();
            db.close();
			return user;
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
	 * @param username, String
	 * @param password, String
	 * @return User, the User object
	 * @throws Exception, if the credentials are not valid
	 */
	public User authenticate(String username, String password) throws Exception {
		DB db = new DB();
		Connection con = null;

		String sql = "SELECT * FROM users WHERE username=? AND password=?;";

		try{
			con = db.getConnection();
			PreparedStatement stmt = con.prepareStatement( sql );
			stmt.setString(1, username);
			stmt.setString(2, password);
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				return new User(rs.getString("name"), rs.getString("surname"),
                                           rs.getString("email"),rs.getString("username"),
                                           rs.getString("password"), rs.getString("bachelor"),
                                           rs.getString("years"), rs.getString("age"));
			} else {
				throw new Exception("Wrong username or password");
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
	public void register(User user) throws Exception {
		DB db = new DB();
		String sql = "INSERT INTO users " + " (name, surname, email, username, password, bachelor, years, age) VALUES (?, ?, ?, ?, ?, ?, ?, ?);";
		Connection con = null;
		try{
			con = db.getConnection();
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, user.getName());
            stmt.setString(2, user.getSurname());
            stmt.setString(3, user.getEmail());
            stmt.setString(4, user.getUsername());
			stmt.setString(5, user.getPassword());
            stmt.setString(6, user.getBachelor());
            stmt.setString(7, user.getYears());
            stmt.setString(8, user.getAge());
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

    public List<User> searchCands(String surname) throws Exception {
		String sql = "SELECT * FROM users WHERE surname=?;";
		Connection con = null;
		DB db = new DB();
		List<User> users = new ArrayList<User>();
		try {
			con = db.getConnection();
			PreparedStatement stmt = con.prepareStatement( sql );
			stmt.setString(1, surname);
            ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
	 			users.add( new User(rs.getString("name"), rs.getString("surname"),
                                           rs.getString("email"),rs.getString("username"),
                                           rs.getString("password"), rs.getString("bachelor"),
                                           rs.getString("years"), rs.getString("age")));
			}
			rs.close();
			stmt.close();
			db.close();
			return users;
		} catch(Exception e) {
			throw new Exception("Could not establish connection with the Database Server: "
				+ e.getMessage());
		} finally {

			try {
			     db.close();
			} catch (Exception e) {

			}
		}
	} //End of searchCands
}