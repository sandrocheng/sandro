import android.app.Application;
import com.tencent.feedback.eup.ExceptionUpload;
import com.tencent.powermanager.PowerManagerApplication;
import java.util.Calendar;
import java.util.Date;

public final class c
{
  private static int a = 300;

  public static void a()
  {
    z localz = s.a.g();
    localz.a("today_crash_upload_times", 1 + localz.a("today_crash_upload_times"));
    localz.a("last_crash_upload_time", System.currentTimeMillis());
  }

  public static void a(Application paramApplication)
  {
    z localz = s.a.g();
    if (localz.a("today_crash_upload_times") > a)
    {
      Date localDate1 = new Date(localz.b("last_crash_upload_time"));
      Date localDate2 = new Date(System.currentTimeMillis());
      Calendar localCalendar1 = Calendar.getInstance();
      Calendar localCalendar2 = Calendar.getInstance();
      localCalendar1.setTime(localDate1);
      localCalendar2.setTime(localDate2);
      if ((localCalendar1.get(1) != localCalendar2.get(1)) || (localCalendar1.get(2) != localCalendar2.get(2)) || (localCalendar1.get(5) != localCalendar2.get(5)))
        break label202;
    }
    label202: for (int i = 1; ; i = 0)
    {
      if (i == 0)
      {
        localz.a("today_crash_upload_times", 0);
        boolean bool = localz.c("auto_upload_crash");
        if (bool)
        {
          ExceptionUpload.setDefaultContract("");
          ExceptionUpload.setYourUncaughtExceptionHandler(new d());
        }
        ExceptionUpload.setMyUpload(ExceptionUpload.getDefaultUpload(PowerManagerApplication.a()));
        ExceptionUpload.setDefaultEUP(bool);
        ExceptionUpload.setEupParams(null, 2000);
        ExceptionUpload localExceptionUpload = new ExceptionUpload(paramApplication, "1000");
        ExceptionUpload.setEupUserConfirmer(new dw(paramApplication));
        localExceptionUpload.setIsUseEup(true);
      }
      return;
    }
  }

  public static String b()
  {
    return "";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     c
 * JD-Core Version:    0.6.2
 */