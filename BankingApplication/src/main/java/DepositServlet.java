    import java.io.IOException;
	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.PreparedStatement;
	import javax.servlet.ServletException;
	import javax.servlet.annotation.WebServlet;
	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;
	import javax.servlet.http.HttpSession;

	@WebServlet("/DepositServlet")
	public class DepositServlet extends HttpServlet {
		private static final long serialVersionUID = 1L;
	
	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        HttpSession session = request.getSession();
	        String accountNo = (String) session.getAttribute("account_no");
	        double amount = Double.parseDouble(request.getParameter("amount"));
	        
	        request.setAttribute("depositAmount", amount);
	        try {
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BankingSystem", "root", "Hema");
	            PreparedStatement ps = con.prepareStatement("UPDATE Customer SET initial_balance = initial_balance + ? WHERE account_no = ?");
	            ps.setDouble(1, amount);
	            ps.setString(2, accountNo);
	            ps.executeUpdate();

	            ps = con.prepareStatement("INSERT INTO Transactions (customer_id, amount, type) VALUES ((SELECT customer_id FROM Customer WHERE account_no=?), ?, 'Deposit')");
	            ps.setString(1, accountNo);
	            ps.setDouble(2, amount);
	            ps.executeUpdate();
	            request.getRequestDispatcher("deposit.jsp").forward(request, response);
	            response.sendRedirect("viewCustomers.jsp");
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
	}
