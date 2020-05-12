package com.cognizant.movie.repository;
import org.springframework.data.repository.CrudRepository;

import com.cognizant.movie.model.Favorites;
import com.cognizant.movie.model.Movie;

public interface FavoriteRepository extends CrudRepository<Favorites,Long>{

}
