package com.society.application.repository;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.DesignationMaster;


@Repository
public interface DesignationMasterRepo extends JpaRepository<DesignationMaster, Integer> 
{
	
}
