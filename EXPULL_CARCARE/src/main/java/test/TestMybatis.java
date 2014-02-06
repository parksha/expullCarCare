package test;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class TestMybatis {
	
	private SqlSession sqlSession;
	
	@Autowired
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@RequestMapping("/gettest")
	public ModelAndView test(HttpServletRequest request){
		
		ModelAndView modelAndView = new ModelAndView("default");
		
		StringBuffer value = new StringBuffer();
		
		value.append("CREATE TABLE IF NOT EXISTS TEST1 (");
		value.append("ID INT ");
		value.append(")");
		
		int i = sqlSession.update("test.createNewTable",value);
		
		return modelAndView;
		
	}
	
}
