package main.by.bigsoft.project.service;

import main.by.bigsoft.project.model.UserEntity;
import main.by.bigsoft.project.persistence.IUserDao;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import java.util.ArrayList;
import java.util.Collection;

/**
 * Load user data during authentication.
 */
public class AuthUserDetailsService implements UserDetailsService {

    private static Logger logger = Logger.getLogger(AuthUserDetailsService.class);

    @Autowired
    private IUserDao userDao;

    @Override
    public UserDetails loadUserByUsername(String username)
            throws UsernameNotFoundException, DataAccessException {

        //can't login null/empty users
        if (username == null || username.isEmpty()) throw new UsernameNotFoundException("Имя пользователя не найдено.");

        // check that user exists
        UserEntity user = userDao.getUserByUsername(username);
        if (user == null) throw new UsernameNotFoundException("Пользователь не найден.");

        // authenticate the existing user
        logger.info("Авторизация пользователя: '" + username + "'.");

        Collection<SimpleGrantedAuthority> authorities = new ArrayList<SimpleGrantedAuthority>();
        SimpleGrantedAuthority userAuthority = new SimpleGrantedAuthority("ROLE_USER");
        authorities.add(userAuthority);

        return new User(user.getUsername(), user.getPassword(), true, true, true, true, authorities);
    }

}
