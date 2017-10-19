package sh.ssm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sh.ssm.Dao.UserDao;

@Service
public class UserService
{
   @Autowired
   private UserDao userDao;
}
