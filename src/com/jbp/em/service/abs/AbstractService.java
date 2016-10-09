package com.jbp.em.service.abs;

import com.jbp.em.dao.IActionDAO;
import com.jbp.em.dao.IMemberDAO;
import com.jbp.em.dao.impl.ActionDAOImpl;
import com.jbp.em.dao.impl.MemberDAOImpl;
import com.jbp.em.vo.Member;
import com.jbp.util.factory.DAOFactory;

public abstract class AbstractService {
	/**
	 * 进行相关用户的权限认证查询
	 * @param mid 用户的编号
	 * @param actionFlag 权限的标记信息
	 * @return 如果具备有指定的权限，返回true，否则返回false
	 * @throws Exception
	 */
	public boolean auth(String mid, String actionFlag) throws Exception {
		IActionDAO actionDAO = DAOFactory.getInstance(ActionDAOImpl.class);
		return actionDAO.findExists(mid, actionFlag);
	}
	/**
	 * 验证是否为超级管理员
	 * @param mid
	 * @return
	 * @throws Exception
	 */
	public boolean admin(String mid) throws Exception {
		IMemberDAO memberDAO = DAOFactory.getInstance(MemberDAOImpl.class) ;
		Member mem = memberDAO.findById(mid) ;
		return mem.getSflag().equals(1) ;
	}
}
