package FinalProject.action;

import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import FinalProject.controller.Action;
import FinalProject.controller.ActionForward;
import FinalProject.model.DAO;
import FinalProject.model.productDTO;

public class insertItemAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		DAO dao = new DAO();
		productDTO dto = new productDTO();
		

		
		HttpSession session = request.getSession();
		
		String imgDirPath = "C:\\Users\\jjc63\\Desktop\\finalProject\\FinalProject\\src\\main\\webapp\\com\\yju\\2wda\\2101198\\controller\\image\\";
		int maxSize = 1024 * 1024 * 5;
		
		MultipartRequest multi = new MultipartRequest(request,
														imgDirPath,
														maxSize,
														"utf-8",
														new DefaultFileRenamePolicy());
//		db 생성 
//		CREATE TABLE product (
//				id INT PRIMARY KEY AUTO_INCREMENT,
//				name VARCHAR(30) NOT NULL,
//				originalName VARCHAR(30) NOT NULL,
//				file_type VARCHAR(30) NOT NULL,
//				file_size Int,
//				price INT NOT NULL,
//				description VARCHAR(1024) NOT NULL
//			);
		String product_name = multi.getParameter("product_name");
		int product_price = Integer.parseInt(multi.getParameter("product_price"));
		String product_description = multi.getParameter("product_description");
		
		dto.setProduct_name(product_name);
		dto.setProduct_price(product_price);
		dto.setProduct_description(product_description);
		
		Enumeration<?> files = multi.getFileNames();
		
		String element= "";
		String filesystemName = "";
		String originalFileName = "";
		String contentType = "";
		long length = 0;
		
		if (files.hasMoreElements()) {
			element = (String)files.nextElement();
			
			filesystemName = multi.getFilesystemName(element);
			originalFileName = multi.getOriginalFileName(element);
			contentType = multi.getContentType(element);
			length = multi.getFile(element).length();
			
			dto.setProduct_filesystemName(filesystemName);
			dto.setProduct_originalFileName(originalFileName);
			dto.setProduct_contentType(contentType);
			dto.setProduct_length(length);
			
		}
		dto.setProduct_user_id((String)session.getAttribute("login_id"));
		boolean result = dao.insertItem(dto);
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
