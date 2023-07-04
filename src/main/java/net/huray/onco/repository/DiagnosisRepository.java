package net.huray.onco.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;

import net.huray.onco.domain.Diagnosis;

@Repository
public interface DiagnosisRepository extends JpaRepository<Diagnosis, Long>  {
    List<Diagnosis> findAll();
	List<Diagnosis> findAllByDtLevelNot(int dtLevel);
}