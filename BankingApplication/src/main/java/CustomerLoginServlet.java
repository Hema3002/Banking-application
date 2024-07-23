    import java.io.IOException;
	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import javax.servlet.ServletException;
	import javax.servlet.annotation.WebServlet;
	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;
	import javax.servlet.http.HttpSession;

	@WebServlet("/CustomerLoginServlet")
	public class CustomerLoginServlet extends HttpServlet {
		private static final long serialVersionUID = 1L;
	
	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        String accountNo = request.getParameter("account_no");
	        String password = request.getParameter("password");
	        boolean isValidCustomer = validateCustomer(accountNo, password);

	        if (isValidCustomer) {
	            HttpSession session = request.getSession();
	            session.setAttribute("account_no", accountNo);
	            response.sendRedirect("viewCustomers.jsp");
	        } else {
	            response.sendRedirect("customerLogin.jsp");
	        }
	    }

	    private boolean validateCustomer(String accountNo, String password) {
	        boolean status = false;
	        try {
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BankingSystem", "root", "Hema");
	            PreparedStatement ps = con.prepareStatement("SELECT * FROM Customer WHERE account_no=? AND password=?");
	            ps.setString(1, accountNo);
	            ps.setString(2, password);
	            ResultSet rs = ps.executeQuery();
	            status = rs.next();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return status;
	    }
	}
