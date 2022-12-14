package FinalProject.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import FinalProject.controller.Action;
import FinalProject.controller.ActionForward;
import FinalProject.model.DAO;
import FinalProject.model.DTO;

public class userUpdateAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		DAO dao = new DAO();
		DTO dto = new DTO();
		
		
		dto.setUser_id(request.getParameter("user_id"));
		dto.setUser_name(request.getParameter("user_name"));
		dto.setUser_pw(request.getParameter("user_pw"));
		dto.setUser_number(request.getParameter("user_number"));
		dto.setUser_address(request.getParameter("user_address"));
		
		boolean result = dao.userUpdate(dto);
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		if(result == true) {
						forward.setPath("/index.jsp");
		}else {
			forward.setPath("/com/yju/2wda/2101198/controller/view/etc/error.jsp");
		}
		return forward;
	}

}
