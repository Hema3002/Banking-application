
       
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.time.LocalDate;
import java.time.Period;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegisterCustomerServlet")
public class RegisterCustomerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fullName = request.getParameter("full_name");
        String address = request.getParameter("address");
        String mobileNo = request.getParameter("mobile_no");
        String emailId = request.getParameter("email_id");
        String accountType = request.getParameter("account_type");
        double initialBalance = Double.parseDouble(request.getParameter("initial_balance"));
        String dob = request.getParameter("date_of_birth");
        String idProof = request.getParameter("id_proof");
        String accountNo = generateAccountNo();
        String password = generateTemporaryPassword();

        LocalDate birthDate = LocalDate.parse(dob);
        LocalDate currentDate = LocalDate.now();
        int age = Period.between(birthDate, currentDate).getYears();

        if (age < 18) {
            sendAlert(response, "Registration failed: You must be at least 18 years old to register.");
            return;
        }

        if (initialBalance < 1000) {
            sendAlert(response, "Registration failed: Initial balance must be at least 1000.");
            return;
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BankingSystem", "root", "Hema");
            PreparedStatement ps = con.prepareStatement("INSERT INTO customer (full_name, address, mobile_no, email_id, account_type, initial_balance,date_of_birth, id_proof, account_no, password) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
            ps.setString(1, fullName);
            ps.setString(2, address);
            ps.setString(3, mobileNo);
            ps.setString(4, emailId);
            ps.setString(5, accountType);
            ps.setDouble(6, initialBalance);
            ps.setDate(7, java.sql.Date.valueOf(dob));
            ps.setString(8, idProof);
            ps.setString(9, accountNo);
            ps.setString(10, password);
            ps.executeUpdate();

            response.sendRedirect("adminDashboard.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private String generateAccountNo() {
        return "ACC" + (int)(Math.random() * 1000000);
    }

    private String generateTemporaryPassword() {
        return "TEMP" + (int)(Math.random() * 10000);
    }

    private void sendAlert(HttpServletResponse response, String message) throws IOException {
        response.setContentType("text/html");
        response.getWriter().println("<script type=\"text/javascript\">");
        response.getWriter().println("alert('" + message + "');");
        response.getWriter().println("location='registerCustomer.jsp';");
        response.getWriter().println("</script>");
    }
}