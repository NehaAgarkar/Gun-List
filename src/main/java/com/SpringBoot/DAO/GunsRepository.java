package com.SpringBoot.DAO;

import org.springframework.data.jpa.repository.JpaRepository;

import com.SpringBoot.Model.Guns;

public interface GunsRepository extends JpaRepository<Guns, Integer> {

}
