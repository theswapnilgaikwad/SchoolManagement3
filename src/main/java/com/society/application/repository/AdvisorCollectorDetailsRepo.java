package com.society.application.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.society.application.model.AdvisorCollectorDetails;


@Repository
public interface AdvisorCollectorDetailsRepo extends JpaRepository<AdvisorCollectorDetails, Integer>{

List<AdvisorCollectorDetails> findBymemberId(int i);
	
	

    @Modifying
    @Transactional
    @Query("update AdvisorCollectorDetails p set p.applicationDate=:string,p.remarks =:string2 where p.memberId =:i")
	int updateThroughPolicyNo(String string, String string2, int i);



	List<AdvisorCollectorDetails> findByid(int i);




}
