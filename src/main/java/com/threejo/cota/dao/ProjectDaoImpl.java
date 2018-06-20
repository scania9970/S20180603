package com.threejo.cota.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.threejo.cota.model.Project;

@Repository
public class ProjectDaoImpl implements ProjectDao{

	@Autowired
	private SqlSession session;
	
	@Override
	public List<Project> getProjects(String email) {
		return session.selectList("getProjects", email);
	}

}
