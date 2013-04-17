import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.media.Ringtone;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.widget.RemoteViews;
import android.widget.Toast;
import com.tencent.powermanager.PowerManagerApplication;
import com.tencent.powermanager.service.BatteryEventReceiver;
import com.tencent.powermanager.ui.GuideActivity;
import java.util.Date;

public final class bo
{
  private static bo a = null;
  private bo.a b = new bo.a(this.e, (NotificationManager)this.e.getSystemService("notification"));
  private Ringtone c;
  private RingtoneManager d = new RingtoneManager(this.e);
  private Context e = PowerManagerApplication.a();
  private byte[] f = new byte[0];

  private bo()
  {
    this.d.setStopPreviousRingtone(true);
    this.e.getSystemService("vibrator");
  }

  public static bo a()
  {
    if (a == null)
      a = new bo();
    return a;
  }

  public final void a(double paramDouble)
  {
    if (!s.a.d().p())
      synchronized (this.f)
      {
        bo.a locala2 = this.b;
        Message localMessage2 = locala2.b.obtainMessage(1);
        localMessage2.arg1 = 2;
        locala2.b.sendMessage(localMessage2);
        return;
      }
    a locala = new a(this.e);
    if ((locala.b < 0) || (locala.b > 100));
    Notification localNotification;
    for (int i = 0; ; i = 1)
      while (true)
      {
        if (i != 0)
          break label178;
        localNotification = null;
        if (localNotification == null)
          break;
        synchronized (this.f)
        {
          bo.a locala1 = this.b;
          Message localMessage1 = Message.obtain();
          localMessage1.what = 0;
          localMessage1.obj = localNotification;
          localMessage1.arg1 = 2;
          locala1.b.sendMessage(localMessage1);
        }
      }
    label178: r localr = s.a.d();
    locala.a = new Notification();
    int j;
    label220: label362: int i1;
    String str2;
    label421: label493: int k;
    label518: int m;
    label532: int n;
    switch (localr.o())
    {
    default:
      j = 2130837709;
      locala.a.icon = j;
      locala.a.iconLevel = locala.b;
      locala.a.when = System.currentTimeMillis();
      locala.a.flags = 2;
      Intent localIntent = new Intent(locala.c, GuideActivity.class);
      PendingIntent localPendingIntent = PendingIntent.getActivity(locala.c, 0, localIntent, 268435456);
      locala.a.contentIntent = localPendingIntent;
      locala.a.contentView = new RemoteViews(locala.c.getPackageName(), 2130903066);
      boolean bool = BatteryEventReceiver.c;
      if (dv.e())
      {
        locala.a.contentView.setFloat(2131230815, "setTextSize", 17.0F);
        locala.a.contentView.setFloat(2131230812, "setTextSize", 17.0F);
        locala.a.contentView.setTextViewText(2131230812, locala.c.getString(2131099649));
        if (!bool)
          break label912;
        RemoteViews localRemoteViews = locala.a.contentView;
        i1 = locala.b;
        if (i1 >= 90)
          break label824;
        str2 = locala.c.getString(2131099751);
        localRemoteViews.setTextViewText(2131230813, str2);
        long l = a.a();
        if (l > 0L)
          break label859;
        locala.a.contentView.setViewVisibility(2131230815, 8);
        locala.a.contentView.setTextViewText(2131230814, locala.c.getString(2131099762));
        locala.a.contentView.setFloat(2131230814, "setTextSize", 18.0F);
        String str3 = a.a(locala.c, l);
        locala.a.contentView.setTextViewText(2131230815, str3);
        k = locala.b;
        if (k > 0)
          break label1028;
        m = 0;
        switch (m)
        {
        default:
          n = 2130837810;
        case 0:
        case 9:
        case 15:
        case 25:
        case 50:
        case 75:
        case 80:
        case 85:
        case 90:
        case 95:
        case 100:
        }
      }
      break;
    case 1:
    }
    while (true)
    {
      locala.a.contentView.setImageViewResource(2131230810, n);
      localNotification = locala.a;
      break;
      j = 2130837708;
      break label220;
      if (dv.d())
      {
        locala.a.contentView.setFloat(2131230815, "setTextSize", 16.0F);
        locala.a.contentView.setFloat(2131230812, "setTextSize", 16.0F);
        break label362;
      }
      if (dv.c())
      {
        locala.a.contentView.setFloat(2131230815, "setTextSize", 16.0F);
        locala.a.contentView.setFloat(2131230812, "setTextSize", 16.0F);
        break label362;
      }
      if (dv.b())
      {
        locala.a.contentView.setFloat(2131230815, "setTextSize", 16.0F);
        locala.a.contentView.setFloat(2131230812, "setTextSize", 16.0F);
        break label362;
      }
      locala.a.contentView.setFloat(2131230815, "setTextSize", 15.0F);
      locala.a.contentView.setFloat(2131230812, "setTextSize", 15.0F);
      break label362;
      label824: if (i1 < 100)
      {
        str2 = locala.c.getString(2131099752);
        break label421;
      }
      str2 = locala.c.getString(2131099753);
      break label421;
      label859: locala.a.contentView.setViewVisibility(2131230815, 0);
      locala.a.contentView.setTextViewText(2131230814, locala.c.getString(2131099710));
      locala.a.contentView.setFloat(2131230814, "setTextSize", 14.0F);
      break label493;
      label912: String str1 = localr.b();
      locala.a.contentView.setTextViewText(2131230813, str1);
      af localaf = af.a();
      locala.a.contentView.setTextViewText(2131230814, locala.c.getString(2131099756));
      locala.a.contentView.setViewVisibility(2131230815, 0);
      if (paramDouble < 0.0D)
      {
        locala.a.contentView.setTextViewText(2131230815, a.a(locala.c, localaf.c()));
        break label518;
      }
      locala.a.contentView.setTextViewText(2131230815, a.a(locala.c, paramDouble));
      break label518;
      label1028: if (k <= 9)
      {
        m = 9;
        break label532;
      }
      if (k <= 15)
      {
        m = 15;
        break label532;
      }
      if (k <= 25)
      {
        m = 25;
        break label532;
      }
      if (k <= 50)
      {
        m = 50;
        break label532;
      }
      if (k <= 75)
      {
        m = 75;
        break label532;
      }
      if (k <= 80)
      {
        m = 80;
        break label532;
      }
      if (k <= 85)
      {
        m = 85;
        break label532;
      }
      if (k <= 90)
      {
        m = 90;
        break label532;
      }
      if (k < 100)
      {
        m = 95;
        break label532;
      }
      m = 100;
      break label532;
      n = 2130837811;
      continue;
      n = 2130837812;
      continue;
      n = 2130837813;
      continue;
      n = 2130837814;
      continue;
      n = 2130837815;
      continue;
      n = 2130837816;
      continue;
      n = 2130837817;
      continue;
      n = 2130837818;
      continue;
      n = 2130837810;
    }
  }

  public final void a(int paramInt)
  {
    long l = a.a();
    int i;
    String str;
    if (BatteryEventReceiver.c)
      if (paramInt <= 20)
      {
        i = 2130837863;
        if (l > 0L)
          str = this.e.getResources().getString(2131099802) + a.a(this.e, l) + this.e.getResources().getString(2131099711);
      }
    while (true)
    {
      dp localdp = new dp(this.e, str, i);
      if (localdp.a != null)
      {
        localdp.a.setDuration(1);
        localdp.a.show();
      }
      return;
      str = this.e.getResources().getString(2131099800);
      continue;
      if ((paramInt <= 40) && (paramInt > 20))
      {
        i = 2130837864;
        if (l > 0L)
          str = this.e.getResources().getString(2131099803) + a.a(this.e, l) + this.e.getResources().getString(2131099711);
        else
          str = this.e.getResources().getString(2131099801);
      }
      else if ((paramInt <= 60) && (paramInt > 40))
      {
        i = 2130837865;
        if (l > 0L)
          str = this.e.getResources().getString(2131099803) + a.a(this.e, l) + this.e.getResources().getString(2131099711);
        else
          str = this.e.getResources().getString(2131099801);
      }
      else if ((paramInt <= 80) && (paramInt > 60))
      {
        i = 2130837866;
        if (l > 0L)
          str = this.e.getResources().getString(2131099803) + a.a(this.e, l) + this.e.getResources().getString(2131099711);
        else
          str = this.e.getResources().getString(2131099801);
      }
      else if ((paramInt < 100) && (paramInt > 80))
      {
        i = 2130837867;
        if (l > 0L)
          str = this.e.getResources().getString(2131099803) + a.a(this.e, l) + this.e.getResources().getString(2131099711);
        else
          str = this.e.getResources().getString(2131099801);
      }
      else
      {
        i = 2130837862;
        str = this.e.getResources().getString(2131099801);
        continue;
        i = 2130837862;
        str = this.e.getResources().getString(2131099804);
      }
    }
  }

  public final void a(bd parambd)
  {
    if (parambd == null)
    {
      bo.a locala2 = this.b;
      Message localMessage2 = locala2.b.obtainMessage(1);
      localMessage2.arg1 = 4;
      locala2.b.sendMessage(localMessage2);
      return;
    }
    Notification localNotification = new Notification();
    localNotification.icon = 17301633;
    localNotification.when = System.currentTimeMillis();
    RemoteViews localRemoteViews = new RemoteViews(this.e.getPackageName(), 2130903073);
    String str = parambd.a.d();
    long l1 = 1L;
    long l2 = 0L + parambd.h;
    if (parambd.g > 0L)
      l1 = 1L + parambd.g;
    if (l1 != 0L);
    for (int i = (int)(100.0F * ((float)l2 / (float)l1)); ; i = 0)
    {
      localRemoteViews.setTextViewText(2131230840, str);
      localRemoteViews.setProgressBar(2131230842, 100, i, false);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(i);
      localRemoteViews.setTextViewText(2131230841, String.format("%d%%", arrayOfObject));
      localNotification.contentView = localRemoteViews;
      Intent localIntent = new Intent(this.e, GuideActivity.class);
      localNotification.contentIntent = PendingIntent.getActivity(this.e, 4, localIntent, 134217728);
      bo.a locala1 = this.b;
      Message localMessage1 = Message.obtain();
      localMessage1.what = 0;
      localMessage1.obj = localNotification;
      localMessage1.arg1 = 4;
      locala1.b.sendMessage(localMessage1);
      break;
    }
  }

  public final void b()
  {
    if (this.c != null)
      this.c.stop();
  }

  public final void b(bd parambd)
  {
    bo.a locala1 = this.b;
    Message localMessage1 = locala1.b.obtainMessage(1);
    localMessage1.arg1 = 4;
    locala1.b.sendMessage(localMessage1);
    Notification localNotification = new Notification();
    localNotification.icon = 17301642;
    localNotification.tickerText = (parambd.a.d() + this.e.getResources().getString(2131099791));
    localNotification.setLatestEventInfo(this.e, parambd.a.d(), this.e.getResources().getString(2131099791), null);
    localNotification.flags = 16;
    bo.a locala2 = this.b;
    Message localMessage2 = Message.obtain();
    localMessage2.what = 0;
    localMessage2.obj = localNotification;
    localMessage2.arg1 = 4;
    locala2.b.sendMessage(localMessage2);
  }

  public final void c()
  {
    synchronized (this.f)
    {
      bo.a locala = this.b;
      Message localMessage = locala.b.obtainMessage(1);
      localMessage.arg1 = 2;
      locala.b.sendMessage(localMessage);
      return;
    }
  }

  public final void d()
  {
    Date localDate = new Date();
    Notification localNotification;
    if ((s.a.d().q()) && (localDate.getHours() < 22) && (localDate.getHours() >= 9))
    {
      localNotification = new Notification();
      localNotification.icon = 2130837822;
      localNotification.when = System.currentTimeMillis();
      localNotification.flags = 16;
      Context localContext = PowerManagerApplication.a();
      localNotification.tickerText = localContext.getString(2131099757);
      PendingIntent localPendingIntent = PendingIntent.getActivity(this.e, 0, new Intent(this.e, GuideActivity.class), 268435456);
      localNotification.setLatestEventInfo(this.e, localContext.getString(2131099758), localContext.getString(2131099759), localPendingIntent);
      synchronized (this.f)
      {
        bo.a locala1 = this.b;
        Message localMessage1 = locala1.b.obtainMessage(1);
        localMessage1.arg1 = 3;
        locala1.b.sendMessage(localMessage1);
      }
    }
    synchronized (this.f)
    {
      bo.a locala2 = this.b;
      Message localMessage2 = Message.obtain();
      localMessage2.what = 0;
      localMessage2.obj = localNotification;
      localMessage2.arg1 = 3;
      locala2.b.sendMessage(localMessage2);
      Uri localUri = RingtoneManager.getActualDefaultRingtoneUri(this.e, 2);
      this.c = RingtoneManager.getRingtone(this.e, localUri);
      if (this.c != null)
        this.c.play();
      new Thread(new bp(this)).start();
      return;
      localObject1 = finally;
      throw localObject1;
    }
  }

  public final void e()
  {
    bo.a locala = this.b;
    Message localMessage = locala.b.obtainMessage(1);
    localMessage.arg1 = 4;
    locala.b.sendMessage(localMessage);
  }

  public static final class a
  {
    NotificationManager a;
    Handler b;

    public a(Context paramContext, NotificationManager paramNotificationManager)
    {
      this.a = paramNotificationManager;
      this.b = new bq(this, paramContext.getMainLooper());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     bo
 * JD-Core Version:    0.6.2
 */