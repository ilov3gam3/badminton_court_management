package Filter;

import Model.Constant.Role;
import Model.User;
import jakarta.servlet.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class AdminFilter implements Filter {
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        User user = (User) request.getSession().getAttribute("user");
        if (user.getRole() != Role.ADMIN){
            request.getSession().setAttribute("warning", "Bạn không có quyền truy cập tài nguyên này.");
            response.sendRedirect(request.getContextPath() + "/login");
        }
        filterChain.doFilter(request, response);
    }
}
