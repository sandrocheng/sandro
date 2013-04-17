import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import com.tencent.qqpimsecure.service.QQPimApplication;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;

public final class acc
{
  private String a = "TimedTaskManager";
  private Context b;
  private AlarmManager c = null;
  private jl d;
  private kj e;

  public acc(Context paramContext)
  {
    this.b = paramContext;
    this.d = f.e();
    QQPimApplication.a();
    this.e = new kj();
    this.c = ((AlarmManager)paramContext.getSystemService("alarm"));
  }

  private int a(String paramString, Intent paramIntent, int paramInt1, int paramInt2)
  {
    PendingIntent localPendingIntent1 = PendingIntent.getBroadcast(this.b, Integer.valueOf("1" + paramString).intValue(), paramIntent, 0);
    this.c.cancel(localPendingIntent1);
    Calendar localCalendar1 = Calendar.getInstance();
    Calendar localCalendar2 = Calendar.getInstance();
    localCalendar2.set(11, paramInt1);
    localCalendar2.set(12, paramInt2);
    localCalendar2.set(13, 0);
    if (localCalendar1.after(localCalendar2))
      localCalendar2.add(5, 1);
    long l = localCalendar2.getTimeInMillis();
    new StringBuilder("day startSchedule:").append(paramInt1).append(" -- ").append(paramInt2).toString();
    PendingIntent localPendingIntent2 = PendingIntent.getBroadcast(this.b, Integer.valueOf("1" + paramString).intValue(), paramIntent, 134217728);
    this.c.setRepeating(0, l, 86400000L, localPendingIntent2);
    return 0;
  }

  private int a(String paramString, Intent paramIntent, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    PendingIntent localPendingIntent1 = PendingIntent.getBroadcast(this.b, Integer.valueOf("1" + paramString).intValue(), paramIntent, 0);
    this.c.cancel(localPendingIntent1);
    Calendar localCalendar1 = Calendar.getInstance();
    Calendar localCalendar2 = Calendar.getInstance();
    localCalendar2.set(1, paramInt1);
    localCalendar2.set(2, paramInt2);
    localCalendar2.set(5, paramInt3);
    localCalendar2.set(11, paramInt4);
    localCalendar2.set(12, paramInt5);
    localCalendar2.set(13, 0);
    if (!localCalendar1.after(localCalendar2))
    {
      long l = localCalendar2.getTimeInMillis();
      new StringBuilder("date startSchedule:").append(paramInt1).append("-").append(paramInt2).append("-").append(paramInt3).append(".").append(paramInt4).append(":").append(paramInt5).toString();
      PendingIntent localPendingIntent2 = PendingIntent.getBroadcast(this.b, Integer.valueOf("1" + paramString).intValue(), paramIntent, 134217728);
      this.c.set(0, l, localPendingIntent2);
    }
    return 0;
  }

  private int a(String paramString, Intent paramIntent, int[] paramArrayOfInt, int paramInt1, int paramInt2)
  {
    Calendar localCalendar1 = Calendar.getInstance();
    for (int i = 0; i < paramArrayOfInt.length; i++)
    {
      String str = paramString + String.valueOf(i);
      PendingIntent localPendingIntent1 = PendingIntent.getBroadcast(this.b, Integer.valueOf("1" + str).intValue(), paramIntent, 0);
      this.c.cancel(localPendingIntent1);
      Calendar localCalendar2 = Calendar.getInstance();
      if (paramArrayOfInt[i] == 1)
      {
        localCalendar2.set(7, (i + 2) % 7);
        localCalendar2.set(11, paramInt1);
        localCalendar2.set(12, paramInt2);
        localCalendar2.set(13, 0);
        if (localCalendar1.after(localCalendar2))
          localCalendar2.add(5, 7);
        long l = localCalendar2.getTimeInMillis();
        new StringBuilder("week-- Schedule:").append(localCalendar2.get(7)).append(" -- ").append(localCalendar2.get(11)).append(" -- ").append(localCalendar2.get(12)).toString();
        PendingIntent localPendingIntent2 = PendingIntent.getBroadcast(this.b, Integer.valueOf("1" + str).intValue(), paramIntent, 134217728);
        this.c.setRepeating(0, l, 604800000L, localPendingIntent2);
      }
    }
    return 0;
  }

  private static int[] a(String paramString1, String paramString2)
  {
    String[] arrayOfString = paramString1.split(paramString2);
    int[] arrayOfInt = new int[arrayOfString.length];
    for (int i = 0; i < arrayOfString.length; i++)
      arrayOfInt[i] = Integer.valueOf(arrayOfString[i]).intValue();
    return arrayOfInt;
  }

  public final void a(Intent paramIntent)
  {
    int i = this.d.b.getInt("scanPlan", -1);
    Iterator localIterator;
    if (i == 0)
    {
      paramIntent.putExtra("taskType", 3);
      a("3", paramIntent, this.d.a(), this.d.b.getInt("scanTimeHour", 17), this.d.b.getInt("scanTimeMini", 0));
      localIterator = this.e.a().iterator();
    }
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      mr localmr = (mr)localIterator.next();
      if ((localmr.j) && (localmr.i == 0))
      {
        paramIntent.putExtra("taskName", localmr.c);
        paramIntent.putExtra("taskType", localmr.b);
        paramIntent.putExtra("taskDes", localmr.h);
        paramIntent.putExtra("taskDesStatus", localmr.i);
        String str = "0" + localmr.a;
        switch (localmr.d)
        {
        default:
          break;
        case 0:
          a(str, paramIntent, localmr.f, localmr.g);
          continue;
          if (i != 1)
            break;
          paramIntent.putExtra("taskType", 3);
          a("3", paramIntent, this.d.b.getInt("scanTimeHour", 17), this.d.b.getInt("scanTimeMini", 0));
          break;
        case 1:
          a(str, paramIntent, a(localmr.e, ","), localmr.f, localmr.g);
          break;
        case 2:
          int[] arrayOfInt = a(localmr.e, "-");
          a(str, paramIntent, arrayOfInt[0], -1 + arrayOfInt[1], arrayOfInt[2], localmr.f, localmr.g);
        }
      }
    }
  }

  public final void a(Intent paramIntent, String paramString)
  {
    PendingIntent localPendingIntent = PendingIntent.getBroadcast(this.b, Integer.valueOf("1" + paramString).intValue(), paramIntent, 0);
    this.c.cancel(localPendingIntent);
  }

  public final void b(Intent paramIntent, String paramString)
  {
    int i = paramIntent.getIntExtra("taskType", -1);
    long l = paramIntent.getLongExtra("taskID", -1L);
    int j;
    if (i == 3)
    {
      j = this.d.b.getInt("scanPlan", -1);
      if (j == 0)
        a(paramString, paramIntent, this.d.a(), this.d.b.getInt("scanTimeHour", 17), this.d.b.getInt("scanTimeMini", 0));
    }
    while (true)
    {
      return;
      if (j == 1)
      {
        a(paramString, paramIntent, this.d.b.getInt("scanTimeHour", 17), this.d.b.getInt("scanTimeMini", 0));
        continue;
        mr localmr = this.e.a(l);
        switch (localmr.d)
        {
        default:
          break;
        case 0:
          a(paramString, paramIntent, localmr.f, localmr.g);
          break;
        case 1:
          a(paramString, paramIntent, a(localmr.e, ","), localmr.f, localmr.g);
          break;
        case 2:
          int[] arrayOfInt = a(localmr.e, "-");
          a(paramString, paramIntent, arrayOfInt[0], -1 + arrayOfInt[1], arrayOfInt[2], localmr.f, localmr.g);
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     acc
 * JD-Core Version:    0.6.2
 */