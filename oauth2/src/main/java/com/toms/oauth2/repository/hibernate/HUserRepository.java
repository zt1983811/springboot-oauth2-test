package com.toms.oauth2.repository.hibernate;

import com.toms.oauth2.model.hibernateDomain.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface HUserRepository extends JpaRepository<User, String> {

    @Query("SELECT u FROM User u WHERE LOWER(u.username) = LOWER(:username)")
    User findByUsernameCaseInsensitive(@Param("username") String username);

    @Query
    User findByEmail(String email);

    @Query
    User findByEmailAndActivationKey(String email, String activationKey);

    @Query
    User findByEmailAndResetPasswordKey(String email, String resetPasswordKey);

}
