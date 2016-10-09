package com.jbp.em.service.back.impl;

import com.jbp.em.dao.ILevelDAO;
import com.jbp.em.dao.impl.LevelDAOImpl;
import com.jbp.em.service.back.ILevelServiceBack;
import com.jbp.em.vo.Level;
import com.jbp.util.dao.AbstractDAO;
import com.jbp.util.factory.DAOFactory;

public class LevelServiceBackImpl extends AbstractDAO implements ILevelServiceBack {

	@Override
	public Level get(int id) throws Exception {
		ILevelDAO levelDAO = DAOFactory.getInstance(LevelDAOImpl.class);
		return levelDAO.findById(id); 
	}

}
