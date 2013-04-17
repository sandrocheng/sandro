import com.tencent.feedback.Analytics;
import com.tencent.feedback.eup.ExceptionUpload;
import com.tencent.feedback.upload.UploadHandler;
import com.tencent.tmsecure.common.TMSApplication;
import java.util.Calendar;
import java.util.Date;

public final class dz
{
  private static int a = 3;

  public static void a()
  {
    ho localho = ho.a();
    if (localho.v("today_crash_upload_times") > a)
    {
      Date localDate1 = new Date(localho.w("last_crash_upload_time"));
      Date localDate2 = new Date(System.currentTimeMillis());
      Calendar localCalendar1 = Calendar.getInstance();
      Calendar localCalendar2 = Calendar.getInstance();
      localCalendar1.setTime(localDate1);
      localCalendar2.setTime(localDate2);
      if ((localCalendar1.get(1) != localCalendar2.get(1)) || (localCalendar1.get(2) != localCalendar2.get(2)) || (localCalendar1.get(5) != localCalendar2.get(5)))
        break label193;
    }
    label193: for (int i = 1; ; i = 0)
    {
      if (i == 0)
      {
        localho.a("today_crash_upload_times", 0);
        localho.x("auto_upload_crash");
        com.tencent.feedback.common.Constants.IS_DEBUG = false;
        com.tencent.feedback.common.Constants.IS_CORE_DEBUG = false;
        com.tencent.feedback.common.Constants.IS_USETESTSERVER = false;
        com.tencent.feedback.common.Constants.Is_AutoCheckOpen = false;
        UploadHandler localUploadHandler = Analytics.getDefaultUpload(TMSApplication.getApplicaionContext());
        Analytics.enableAnalytics(TMSApplication.getApplicaionContext(), "10000", true, localUploadHandler);
        ExceptionUpload.setDefaultEUP(true);
        ExceptionUpload.setYourUncaughtExceptionHandler(new ea());
        Analytics.enableCrashRecord(true);
        Analytics.enableUserActionRecord(true);
        Analytics.enableSpeedRecord(false);
        Analytics.onAppLaunched(TMSApplication.getApplicaionContext());
      }
      return;
    }
  }

  public static void b()
  {
    ho localho = ho.a();
    localho.a("today_crash_upload_times", 1 + localho.v("today_crash_upload_times"));
    localho.a("last_crash_upload_time", System.currentTimeMillis());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     dz
 * JD-Core Version:    0.6.2
 */