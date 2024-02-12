package com.example.fes_gymfit.repositories;

import com.example.fes_gymfit.models.Product;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ProductRepositories extends JpaRepository<Product, Long> {
    List<Product> findByTitle (String title);
}
