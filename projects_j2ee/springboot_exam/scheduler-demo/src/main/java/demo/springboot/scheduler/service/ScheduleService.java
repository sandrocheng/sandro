package demo.springboot.scheduler.service;

import demo.springboot.scheduler.SchedulerDemoApplication;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

/**
 * 该service由spring管理
 */
@Service
public class ScheduleService {

    /**
     * 将该方法放到定时任务中执行
     * 需要使用cron表达式来设置定时任务的参数
     * 使用这个注解后，spring会自动执行该方法，不需要显示的调用
     */
    @Scheduled(cron = "0 * * * * 0-6") //从周一到周六的每个0秒的时候执行
    public void hello1(){
        System.out.println(SchedulerDemoApplication.getTimeStr() + " : hello1");
    }

    @Scheduled(cron = "0 44 14 * * ？")//每天 14：44：00
    public void hello2(){
        System.out.println(SchedulerDemoApplication.getTimeStr() + " : hello2");
    }
}
