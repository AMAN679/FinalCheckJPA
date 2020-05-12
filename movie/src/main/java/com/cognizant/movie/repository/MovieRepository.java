package com.cognizant.movie.repository;

import org.springframework.data.repository.CrudRepository;

import com.cognizant.movie.model.Movie;


public interface MovieRepository extends CrudRepository<Movie,Long>{

}
