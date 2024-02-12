package com.example.fes_gymfit.repositories;

import com.example.fes_gymfit.models.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepositories extends JpaRepository<User,Long> {
    User findByEmail(String email);
}
