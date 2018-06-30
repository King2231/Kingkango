/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Kingkango;

/**
 *
 * @author King
 */import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
public class BackGroundJobManager implements ServletContextListener{
    private ScheduledExecutorService scheduler;
    @Override
    public void contextInitialized(ServletContextEvent event) {
        ExecutionClassOnRun e=new ExecutionClassOnRun();
        System.out.println("Context Initialized");
        scheduler = Executors.newSingleThreadScheduledExecutor();
      //scheduler.scheduleAtFixedRate(new SomeDailyJob(), 0, 1, TimeUnit.DAYS);
       //scheduler.scheduleAtFixedRate(new SomeHourlyJob(), 0, 1, TimeUnit.HOURS);
       scheduler.scheduleAtFixedRate(new ExecutionClassOnRun(), 0, 1, TimeUnit.MINUTES);
    }

   
    public void contextDestroyed(ServletContextEvent event) {
        scheduler.shutdownNow();
    }

}

