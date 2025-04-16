package com.ssg.demo.listener;

import com.mysql.cj.jdbc.AbandonedConnectionCleanupThread;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.sql.SQLException;

@WebListener
public class MySQLCleanupListener implements ServletContextListener {
  @Override
  public void contextInitialized(ServletContextEvent sce) {
    // ...
  }
  
  @Override
  public void contextDestroyed(ServletContextEvent sce) {
    // Connector/J 최신 버전에서는 checkedShutdown()을 사용
    AbandonedConnectionCleanupThread.checkedShutdown();
  }
}