import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 * Servlet implementation class NewCustomerLogin
 */
@WebServlet("/NewCustomerLogin")
public class NewCustomerLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewCustomerLogin() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String accountNo = request.getParameter("acc_no");
        String pwd = request.getParameter("newPassword");

        try {
        	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BankingSystem", "root", "Hema");
            String query = "UPDATE customer SET password = ? WHERE account_no = ?";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, pwd);
            pstmt.setString(2, accountNo);

            int k = pstmt.executeUpdate();
            if (k > 0) {
                response.sendRedirect("customerLogin.jsp");
            } 
        } catch (Exception e) {
            e.printStackTrace();
        }
	}
}
