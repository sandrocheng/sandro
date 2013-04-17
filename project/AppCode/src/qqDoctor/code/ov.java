import QQPIM.CloudInfo;
import QQPIM.TipsInfo;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.media.AudioManager;
import android.media.Ringtone;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.os.Vibrator;
import android.widget.RemoteViews;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.service.ToastSuspensionWindow;
import com.tencent.qqpimsecure.ui.activity.DoubleCallDialog;
import com.tencent.qqpimsecure.ui.activity.InterceptCenterActivity;
import com.tencent.qqpimsecure.ui.activity.NumberMarkDialog;
import com.tencent.qqpimsecure.ui.activity.SecureSpaceActivity;
import com.tencent.qqpimsecure.ui.activity.SyncAssistantActivity;
import com.tencent.qqpimsecure.ui.activity.TransparentActivity;
import com.tencent.qqpimsecure.ui.activity.WifiApproveDialog;
import com.tencent.qqpimsecure.ui.activity.commontools.ScreenShotListActivity;
import com.tencent.qqpimsecure.ui.activity.market.DownloadManagerActivity;
import com.tencent.qqpimsecure.ui.activity.market.MarketActivity;
import com.tencent.qqpimsecure.ui.activity.network.NetWorkWarningDialog;
import com.tencent.qqpimsecure.ui.activity.permission.PermissionControlActivity;
import com.tencent.qqpimsecure.ui.activity.smscheck.SMSChargeCheckActivity;
import com.tencent.qqpimsecure.ui.activity.software.SoftwareMoveActivity;
import com.tencent.qqpimsecure.ui.activity.software.SoftwareUpdateActivity;
import com.tencent.qqpimsecure.ui.activity.virus.VirusNotivicationDialog;
import com.tencent.qqpimsecure.ui.activity.virus.VirusScanActivity;
import com.tencent.tmsecure.module.aresengine.CallLogEntity;
import com.tencent.tmsecure.module.aresengine.TelephonyEntity;
import com.tencent.tmsecure.module.network.NetworkInfoEntity;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class ov
{
  private static ov a = null;
  private int b = 0;
  private int c = 0;
  private AudioManager d = (AudioManager)this.j.getSystemService("audio");
  private ov.a e = new ov.a(this.j, (NotificationManager)this.j.getSystemService("notification"));
  private Ringtone f;
  private Ringtone g;
  private RingtoneManager h = new RingtoneManager(this.j);
  private Vibrator i;
  private Context j = QQPimApplication.a();
  private ho k = ho.a();
  private hg l = new hg();
  private boolean m = true;
  private boolean n = true;
  private boolean o = true;
  private boolean p = false;

  private ov()
  {
    this.h.setStopPreviousRingtone(true);
    this.i = ((Vibrator)this.j.getSystemService("vibrator"));
    this.b = this.d.getRingerMode();
    this.c = this.d.getVibrateSetting(0);
  }

  public static ov a()
  {
    try
    {
      if (a == null)
        a = new ov();
      return a;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void a(int paramInt, NetworkInfoEntity paramNetworkInfoEntity, String paramString)
  {
    boolean bool1 = this.k.O();
    boolean bool2 = this.k.f();
    boolean bool3 = this.k.ae();
    boolean bool4 = new iy(QQPimApplication.a()).a.getBoolean("netword_service_status", di.b().f());
    if ((!bool1) || ((!bool2) && (!bool4) && (!bool3)))
      this.e.a(6);
    while (true)
    {
      return;
      Notification localNotification = di.b().a(this.j, paramInt, paramNetworkInfoEntity);
      if (localNotification == null)
      {
        this.e.a(6);
      }
      else
      {
        localNotification.tickerText = paramString;
        this.e.a(6, localNotification);
      }
    }
  }

  private void k()
  {
    Uri localUri = RingtoneManager.getActualDefaultRingtoneUri(this.j, 2);
    this.f = RingtoneManager.getRingtone(this.j, localUri);
    if (this.f != null)
      this.f.play();
  }

  private void l()
  {
    if (!this.n)
      return;
    Notification localNotification = new Notification();
    Context localContext = this.j;
    Intent localIntent = new Intent();
    localIntent.putExtra("password", "fromnotification");
    if (aai.a().d())
    {
      localIntent.setClass(localContext, SecureSpaceActivity.class);
      localIntent.putExtra("password", "-1");
    }
    while (true)
    {
      localIntent.putExtra("IS_FROM_NOTIFICATION", true);
      localIntent.putExtra("extra_back_to_main", true);
      PendingIntent localPendingIntent = PendingIntent.getActivity(this.j, 0, localIntent, 134217728);
      localNotification.icon = 2130838076;
      localNotification.tickerText = this.k.A();
      localNotification.defaults = 4;
      localNotification.flags = (0x39 | localNotification.flags);
      localNotification.ledARGB = -16711936;
      localNotification.ledOnMS = 500;
      localNotification.ledOffMS = 2000;
      localNotification.when = System.currentTimeMillis();
      localNotification.setLatestEventInfo(this.j, this.k.B(), this.k.A(), localPendingIntent);
      this.e.a(4, localNotification);
      break;
      localIntent.setClass(localContext, PermissionControlActivity.class);
      localIntent.putExtra("SHORTCUT_TO_SECURE_SPACE", true);
    }
  }

  public final void a(float paramFloat, boolean paramBoolean)
  {
    NetWorkWarningDialog.a(this.j, paramFloat, paramBoolean);
  }

  public final void a(int paramInt)
  {
    this.e.a(paramInt);
  }

  public final void a(int paramInt, TelephonyEntity paramTelephonyEntity)
  {
    Context localContext;
    ho localho;
    int i1;
    int i2;
    String str1;
    String str2;
    Date localDate;
    String str3;
    String str4;
    label194: int i3;
    String str5;
    if ((this.m) && (this.k.ae()))
    {
      this.o = true;
      localContext = this.j;
      localho = this.k;
      i1 = new jp("smslog", "mms_pdu", "mms_parts").e();
      i2 = localho.G();
      str1 = paramTelephonyEntity.name;
      str2 = paramTelephonyEntity.phonenum;
      localDate = new Date();
      str3 = localContext.getResources().getString(2131428618);
      if (i1 + i2 == 0)
      {
        str4 = null;
        a(paramInt, null, str4);
        if ((!this.l.a()) && (this.k.H()))
        {
          this.k.I();
          if (paramInt != 1)
            break label703;
          if (ToastSuspensionWindow.a == null)
            ToastSuspensionWindow.a = new ToastSuspensionWindow();
          ToastSuspensionWindow localToastSuspensionWindow3 = ToastSuspensionWindow.a;
          Message localMessage3 = localToastSuspensionWindow3.h.obtainMessage(1, 2130838307, 2131427812);
          localToastSuspensionWindow3.h.sendMessage(localMessage3);
        }
      }
      else if (paramInt == 1)
      {
        if (i1 > 0)
        {
          i3 = 3;
          i2 += i1;
          str5 = localContext.getResources().getString(2131428619);
        }
      }
    }
    while (true)
    {
      if (localho.Y() != localDate.getDate())
      {
        localho.l(localDate.getDate());
        if (i3 != 3)
        {
          if ((str1 != null) && (!str1.equals("")))
          {
            str4 = localContext.getResources().getString(2131428621) + str3 + str1 + str5 + localContext.getResources().getString(2131428622) + i2 + localContext.getResources().getString(2131428623);
            label343: if (i3 != 3)
              break label701;
            ov.a locala = a().e;
            locala.a(0);
            locala.a(1);
            locala.a(2);
            break;
            str5 = localContext.getResources().getString(2131428620);
            i3 = 0;
            continue;
            if (paramInt == 2)
            {
              if (i2 > 0)
              {
                i3 = 3;
                i2 += i1;
                str5 = localContext.getResources().getString(2131428619);
                continue;
              }
              i3 = 1;
              str5 = localContext.getResources().getString(2131428427);
              i2 = i1;
              continue;
            }
            if (paramInt != 3)
              break label827;
            str4 = null;
            break;
          }
          if ((str2 != null) && (!str2.equals("-1")))
            break label820;
        }
      }
      label820: for (String str6 = localContext.getResources().getString(2131428624); ; str6 = str2)
      {
        str4 = localContext.getResources().getString(2131428621) + str3 + str6 + str5 + localContext.getResources().getString(2131428622) + i2 + localContext.getResources().getString(2131428623);
        break label343;
        str4 = localContext.getResources().getString(2131428621) + str3 + str5 + localContext.getResources().getString(2131428622) + i2 + localContext.getResources().getString(2131428623);
        break label343;
        str4 = localContext.getResources().getString(2131428621) + str3 + str5 + localContext.getResources().getString(2131428622) + i2 + localContext.getResources().getString(2131428623);
        break label343;
        label701: break;
        label703: if (paramInt == 2)
        {
          if (ToastSuspensionWindow.a == null)
            ToastSuspensionWindow.a = new ToastSuspensionWindow();
          ToastSuspensionWindow localToastSuspensionWindow2 = ToastSuspensionWindow.a;
          Message localMessage2 = localToastSuspensionWindow2.h.obtainMessage(1, 2130838307, 2131427812);
          localToastSuspensionWindow2.h.sendMessage(localMessage2);
          break label194;
        }
        if (ToastSuspensionWindow.a == null)
          ToastSuspensionWindow.a = new ToastSuspensionWindow();
        ToastSuspensionWindow localToastSuspensionWindow1 = ToastSuspensionWindow.a;
        Message localMessage1 = localToastSuspensionWindow1.h.obtainMessage(1, 2130838072, 2131427812);
        localToastSuspensionWindow1.h.sendMessage(localMessage1);
        break label194;
        this.o = false;
        break label194;
      }
      label827: i3 = -1;
      i2 = 0;
      str5 = null;
    }
  }

  public final void a(Context paramContext, CloudInfo paramCloudInfo)
  {
    TipsInfo localTipsInfo = paramCloudInfo.getTips();
    if (localTipsInfo != null)
    {
      Notification localNotification = new Notification();
      localNotification.icon = 2130838079;
      localNotification.when = System.currentTimeMillis();
      localNotification.tickerText = localTipsInfo.getMsg();
      localNotification.flags = 16;
      Intent localIntent = new Intent(paramContext, TransparentActivity.class);
      localIntent.setFlags(268435456);
      localIntent.putExtra("key_cloud_info", paramCloudInfo);
      localIntent.putExtra("key_tips_warning", true);
      localNotification.setLatestEventInfo(paramContext, localTipsInfo.getTitle(), localTipsInfo.getMsg(), PendingIntent.getActivity(paramContext, 0, localIntent, 134217728));
      this.e.a(14);
      localNotification.defaults = 4;
      this.e.a(14, localNotification);
    }
  }

  public final void a(Context paramContext, String paramString)
  {
    Notification localNotification = new Notification();
    localNotification.icon = 2130838079;
    localNotification.when = System.currentTimeMillis();
    localNotification.tickerText = paramString;
    localNotification.flags = 16;
    String str = paramContext.getResources().getString(2131428335);
    Intent localIntent = new Intent(paramContext, SyncAssistantActivity.class);
    localIntent.putExtra("extra_back_to_main", true);
    localNotification.setLatestEventInfo(paramContext, str, paramString, PendingIntent.getActivity(paramContext, 0, localIntent, 134217728));
    this.e.a(10);
    localNotification.defaults = 4;
    this.e.a(10, localNotification);
  }

  public final void a(Intent paramIntent)
  {
    Notification localNotification = new Notification();
    localNotification.icon = 2130838093;
    localNotification.flags = (0x8 | localNotification.flags);
    localNotification.defaults = (0x4 | localNotification.defaults);
    StringBuilder localStringBuilder = new StringBuilder().append(this.j.getString(2131428729)).append("\n");
    Context localContext = this.j;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = paramIntent.getStringExtra("taskName");
    localNotification.tickerText = String.format(localContext.getString(2131428730, arrayOfObject), new Object[0]);
    localNotification.when = System.currentTimeMillis();
    localNotification.number = 0;
    PendingIntent localPendingIntent = PendingIntent.getActivity(this.j, 0, null, 0);
    localNotification.setLatestEventInfo(this.j, "", "", localPendingIntent);
    this.e.a(170 + paramIntent.getIntExtra("taskType", 0));
    this.e.a(170 + paramIntent.getIntExtra("taskType", 0), localNotification);
    this.e.a(170 + paramIntent.getIntExtra("taskType", 0));
  }

  public final void a(CallLogEntity paramCallLogEntity)
  {
    Context localContext1 = this.j;
    Intent localIntent = new Intent(this.j, NumberMarkDialog.class);
    localIntent.putExtra("EXTRA_CALL_LOG_ENTITY", paramCallLogEntity);
    localIntent.putExtra("extra_back_to_main", true);
    PendingIntent localPendingIntent = PendingIntent.getActivity(localContext1, 0, localIntent, 134217728);
    Notification localNotification = new Notification();
    localNotification.icon = 2130838074;
    localNotification.flags = (0x10 | localNotification.flags);
    localNotification.defaults = (0x4 | localNotification.defaults);
    String str1 = this.j.getString(2131428942);
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = paramCallLogEntity.phonenum;
    localNotification.tickerText = String.format(str1, arrayOfObject1);
    Context localContext2 = this.j;
    String str2 = this.j.getString(2131428943);
    Object[] arrayOfObject2 = new Object[1];
    arrayOfObject2[0] = paramCallLogEntity.phonenum;
    localNotification.setLatestEventInfo(localContext2, String.format(str2, arrayOfObject2), this.j.getString(2131428945), localPendingIntent);
    localNotification.when = System.currentTimeMillis();
    localNotification.number = 1;
    this.e.a(51);
    this.e.a(51, localNotification);
  }

  public final void a(TelephonyEntity paramTelephonyEntity)
  {
    int i1 = this.k.av();
    if (i1 == 0)
      switch (this.k.aw())
      {
      default:
      case 0:
      case 1:
      case 2:
      }
    label325: 
    while (true)
    {
      this.p = true;
      return;
      this.d.setRingerMode(0);
      this.d.setVibrateSetting(0, 0);
      continue;
      int i2 = this.d.getRingerMode();
      int i3 = 0;
      if (i2 == 0)
        i3 = 1;
      if (i3 != 0)
      {
        Uri localUri = RingtoneManager.getActualDefaultRingtoneUri(this.j, 1);
        this.g = RingtoneManager.getRingtone(this.j, localUri);
        if (this.g != null)
        {
          this.g.play();
          continue;
          this.d.setRingerMode(0);
          this.d.setVibrateSetting(0, 0);
          this.i.vibrate(new long[] { 300L, 50L, 300L }, 0);
          continue;
          switch (this.k.ax())
          {
          case 0:
          default:
          case 1:
          case 2:
          case 3:
          }
          while (true)
          {
            if (i1 != 2)
              break label325;
            String str1 = paramTelephonyEntity.phonenum;
            String str2 = this.k.j();
            if (str2.length() <= 0)
              break;
            gu.a(str1, str2);
            break;
            this.d.setRingerMode(this.b);
            this.d.setVibrateSetting(0, this.c);
            k();
            continue;
            d();
            continue;
            this.d.setRingerMode(this.b);
            this.d.setVibrateSetting(0, this.c);
            k();
            d();
          }
        }
      }
    }
  }

  public final void a(NetworkInfoEntity paramNetworkInfoEntity)
  {
    if (this.o);
    for (int i1 = 0; ; i1 = -1)
    {
      a(i1, paramNetworkInfoEntity, null);
      return;
    }
  }

  public final void a(String paramString)
  {
    if (ho.a().O())
    {
      Notification localNotification = new Notification();
      localNotification.when = System.currentTimeMillis();
      localNotification.tickerText = paramString;
      localNotification.icon = 2130838073;
      localNotification.flags = 16;
      PendingIntent localPendingIntent = PendingIntent.getActivity(this.j, 0, new Intent(), 134217728);
      localNotification.setLatestEventInfo(this.j, this.j.getString(2131428434), paramString, localPendingIntent);
      this.e.a(28, localNotification);
      new pa(this).start();
    }
  }

  public final void a(String paramString1, String paramString2)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(this.j, WifiApproveDialog.class);
    localIntent.setFlags(268435456);
    localIntent.putExtra("Location", paramString1);
    localIntent.putExtra("FromInternalUI", false);
    localIntent.putExtra("WifiSsid", paramString2);
    Notification localNotification = new Notification();
    localNotification.icon = 2130838081;
    localNotification.when = System.currentTimeMillis();
    localNotification.tickerText = this.j.getText(2131428759);
    localNotification.flags = 16;
    localNotification.setLatestEventInfo(this.j, this.j.getResources().getString(2131428335), localNotification.tickerText, PendingIntent.getActivity(this.j, 0, localIntent, 268435456));
    this.e.a(21, localNotification);
  }

  public final void a(String paramString, mu parammu)
  {
    if (parammu == null);
    while (true)
    {
      return;
      Resources localResources = this.j.getResources();
      Intent localIntent = a.a(this.j, parammu);
      Notification localNotification = new Notification();
      localNotification.icon = 2130838093;
      localNotification.when = System.currentTimeMillis();
      localNotification.defaults = -1;
      localNotification.flags = 16;
      String str1 = localResources.getString(2131428543) + "'" + paramString + "'" + localResources.getString(2131428608);
      int i1 = parammu.i.size();
      String str2 = localResources.getString(2131428607);
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(i1);
      arrayOfObject[1] = Integer.valueOf(i1);
      String str3 = String.format(str2, arrayOfObject);
      PendingIntent localPendingIntent = PendingIntent.getActivity(this.j, 0, localIntent, 268435456);
      localNotification.tickerText = str1;
      localNotification.setLatestEventInfo(this.j, localResources.getString(2131428335), str3, localPendingIntent);
      this.e.a.cancel(24);
      this.e.a.notify(24, localNotification);
    }
  }

  public final void a(List<kv> paramList)
  {
    if ((paramList == null) || (paramList.size() == 0));
    while (true)
    {
      return;
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        kv localkv = (kv)localIterator.next();
        if (localkv.d != null)
        {
          String str = localkv.d.getPackageName();
          if ((str != null) && (str.length() != 0))
            this.e.a(50 + str.hashCode());
        }
      }
    }
  }

  public final void a(kv paramkv)
  {
    if (paramkv == null)
    {
      this.e.a(50);
      return;
    }
    Notification localNotification = new Notification();
    localNotification.icon = 17301633;
    localNotification.when = System.currentTimeMillis();
    RemoteViews localRemoteViews = new RemoteViews(this.j.getPackageName(), 2130903141);
    String str = paramkv.d.getAppName();
    long l1 = 1L;
    long l2 = 0L + paramkv.mCurrentSize;
    if (paramkv.mSize > 0L)
      l1 = 1L + paramkv.mSize;
    if (l1 != 0L);
    for (int i1 = (int)(100.0F * ((float)l2 / (float)l1)); ; i1 = 0)
    {
      localRemoteViews.setTextViewText(2131230754, str);
      localRemoteViews.setProgressBar(2131230992, 100, i1, false);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(i1);
      localRemoteViews.setTextViewText(2131230991, String.format("%d%%", arrayOfObject));
      localNotification.contentView = localRemoteViews;
      Context localContext = this.j;
      Intent localIntent = new Intent(this.j, DownloadManagerActivity.class);
      localIntent.putExtra("IS_FROM_NOTIFICATION", true);
      localIntent.putExtra("extra_back_to_main", true);
      localNotification.contentIntent = PendingIntent.getActivity(localContext, 50, localIntent, 134217728);
      this.e.a(50 + paramkv.d.getPackageName().hashCode(), localNotification);
      break;
    }
  }

  public final void a(boolean paramBoolean)
  {
    this.o = false;
  }

  public final void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    this.m = paramBoolean1;
    this.n = paramBoolean2;
    if (!this.m)
    {
      this.e.a(0);
      this.e.a(1);
      this.e.a(2);
      this.e.a(3);
      this.e.a(7);
    }
    if (!this.n)
    {
      this.e.a(4);
      this.e.a(5);
    }
  }

  public final void a(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    boolean bool1;
    boolean bool2;
    String str;
    if (paramBoolean3)
    {
      bool1 = this.k.f();
      bool2 = new iy(QQPimApplication.a()).a.getBoolean("netword_service_status", di.b().f());
      if ((bool1) && (bool2))
        if (paramBoolean2)
          str = this.j.getResources().getString(2131428629);
    }
    while (true)
    {
      if (this.o);
      for (int i1 = 0; ; i1 = -1)
      {
        a(i1, null, str);
        return;
        if (!paramBoolean1)
        {
          str = this.j.getResources().getString(2131428629);
          break;
          if ((!bool1) && (!bool2))
          {
            str = null;
            break;
          }
          if ((bool1) && (!bool2))
          {
            if (paramBoolean2)
            {
              str = this.j.getResources().getString(2131428629);
              break;
            }
            if (paramBoolean1)
            {
              str = this.j.getResources().getString(2131428632);
              break;
            }
            str = this.j.getResources().getString(2131428629);
            break;
          }
          if ((bool1) || (!bool2))
            break label256;
          if (paramBoolean2)
          {
            str = this.j.getResources().getString(2131428630);
            break;
          }
        }
        str = this.j.getResources().getString(2131428631);
        break;
      }
      label256: str = null;
    }
  }

  public final void a(long[] paramArrayOfLong)
  {
    this.i.vibrate(paramArrayOfLong, -1);
  }

  public final void b()
  {
    this.i.cancel();
  }

  public final void b(int paramInt)
  {
    Notification localNotification = new Notification();
    Context localContext1 = this.j;
    Context localContext2 = this.j;
    Intent localIntent = new Intent();
    localIntent.setClass(localContext2, SoftwareUpdateActivity.class);
    localIntent.putExtra("IS_FROM_NOTIFICATION", true);
    localIntent.putExtra("extra_back_to_main", true);
    PendingIntent localPendingIntent = PendingIntent.getActivity(localContext1, 0, localIntent, 134217728);
    localNotification.icon = 2130838079;
    String str1 = this.j.getString(2131429168);
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(paramInt);
    localNotification.tickerText = String.format(str1, arrayOfObject1);
    localNotification.defaults = 4;
    localNotification.flags = (0x19 | localNotification.flags);
    localNotification.ledARGB = -16711936;
    localNotification.ledOnMS = 500;
    localNotification.ledOffMS = 2000;
    localNotification.when = System.currentTimeMillis();
    Context localContext3 = this.j;
    String str2 = this.j.getString(2131429169);
    String str3 = this.j.getString(2131429167);
    Object[] arrayOfObject2 = new Object[1];
    arrayOfObject2[0] = Integer.valueOf(paramInt);
    localNotification.setLatestEventInfo(localContext3, str2, String.format(str3, arrayOfObject2), localPendingIntent);
    this.e.a(20, localNotification);
  }

  public final void b(String paramString)
  {
    if (!this.m)
      return;
    if ((paramString == null) || (paramString.length() <= 2))
      paramString = this.j.getResources().getString(2131428365);
    int i1 = 1 + this.k.ac();
    String str1 = this.j.getResources().getString(2131428636);
    String str2;
    label101: Notification localNotification;
    if (i1 > 1)
    {
      String str3 = this.j.getResources().getString(2131428635);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = String.valueOf(i1);
      str2 = String.format(str3, arrayOfObject);
      Context localContext = this.j;
      Intent localIntent = new Intent(this.j, InterceptCenterActivity.class);
      localIntent.putExtra("tab_name", "tab_call");
      localIntent.putExtra("is_from_notification", true);
      localIntent.putExtra("extra_back_to_main", true);
      PendingIntent localPendingIntent = PendingIntent.getActivity(localContext, 0, localIntent, 134217728);
      localNotification = new Notification();
      localNotification.icon = 2130838075;
      localNotification.flags = (0x10 | localNotification.flags);
      localNotification.defaults = (0x4 | localNotification.defaults);
      localNotification.tickerText = (this.j.getResources().getString(2131428634) + paramString);
      localNotification.setLatestEventInfo(this.j, str1, str2, localPendingIntent);
      localNotification.when = System.currentTimeMillis();
      if (i1 <= 1)
        break label346;
    }
    label346: for (int i2 = i1; ; i2 = 0)
    {
      localNotification.number = i2;
      this.e.a(7);
      this.e.a(7, localNotification);
      this.k.o(i1);
      break;
      str2 = paramString + this.j.getResources().getString(2131428367);
      break label101;
    }
  }

  public final void b(String paramString1, String paramString2)
  {
    Notification localNotification = new Notification();
    Context localContext = this.j;
    Intent localIntent = new Intent();
    localIntent.putExtra("come_from", true);
    localIntent.setClass(localContext, MarketActivity.class);
    localIntent.putExtra("extra_back_to_main", true);
    localIntent.putExtra("IS_FROM_NOTIFICATION", true);
    localNotification.icon = 2130838000;
    localNotification.tickerText = paramString1;
    localNotification.defaults = 4;
    localNotification.flags = (0x19 | localNotification.flags);
    localNotification.ledARGB = -16711936;
    localNotification.ledOnMS = 500;
    localNotification.ledOffMS = 2000;
    localNotification.when = System.currentTimeMillis();
    RemoteViews localRemoteViews = new RemoteViews(this.j.getPackageName(), 2130903276);
    localRemoteViews.setTextViewText(2131231499, paramString1);
    localRemoteViews.setTextViewText(2131231500, paramString2);
    localNotification.contentView = localRemoteViews;
    localNotification.contentIntent = PendingIntent.getActivity(this.j, 0, localIntent, 134217728);
    this.e.a(25, localNotification);
  }

  public final void b(String paramString, mu parammu)
  {
    if (parammu == null);
    while (true)
    {
      return;
      Resources localResources = this.j.getResources();
      Intent localIntent = a.a(this.j, parammu);
      Notification localNotification = new Notification();
      localNotification.icon = 2130838093;
      localNotification.when = System.currentTimeMillis();
      localNotification.defaults = -1;
      localNotification.flags = 16;
      String str1 = localResources.getString(2131428543) + "'" + paramString + "'" + localResources.getString(2131428041);
      int i1 = parammu.i.size();
      String str2 = localResources.getString(2131428042);
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(i1);
      arrayOfObject[1] = Integer.valueOf(i1);
      String str3 = String.format(str2, arrayOfObject);
      PendingIntent localPendingIntent = PendingIntent.getActivity(this.j, 0, localIntent, 268435456);
      localNotification.tickerText = str1;
      localNotification.setLatestEventInfo(this.j, localResources.getString(2131428335), str3, localPendingIntent);
      this.e.a.cancel(24);
      this.e.a.notify(24, localNotification);
      this.e.a.cancel(24);
    }
  }

  public final void b(List<kv> paramList)
  {
    if ((paramList == null) || (paramList.size() == 0))
      return;
    Iterator localIterator = paramList.iterator();
    label21: kv localkv;
    String str1;
    if (localIterator.hasNext())
    {
      localkv = (kv)localIterator.next();
      str1 = localkv.d.getPackageName();
      if ((str1 != null) && (str1.length() != 0))
        break label264;
    }
    while (true)
    {
      Notification localNotification = new Notification();
      localNotification.icon = 17301642;
      localNotification.when = System.currentTimeMillis();
      localNotification.tickerText = (localkv.d.getAppName() + this.j.getResources().getString(2131428599));
      Context localContext1 = this.j;
      String str2 = localkv.d.getAppName();
      String str3 = this.j.getResources().getString(2131428599);
      Context localContext2 = this.j;
      int i1 = localkv.d.getPackageName().hashCode();
      Intent localIntent = new Intent(this.j, DownloadManagerActivity.class);
      localIntent.putExtra("IS_FROM_NOTIFICATION", true);
      localIntent.putExtra("extra_back_to_main", true);
      localNotification.setLatestEventInfo(localContext1, str2, str3, PendingIntent.getActivity(localContext2, i1, localIntent, 134217728));
      localNotification.flags = 16;
      this.e.a(50 + localkv.d.getPackageName().hashCode(), localNotification);
      break label21;
      break;
      label264: this.e.a(50 + str1.hashCode());
    }
  }

  public final void b(kv paramkv)
  {
    String str1 = paramkv.d.getPackageName();
    if ((str1 == null) || (str1.length() == 0));
    while (true)
    {
      Notification localNotification = new Notification();
      localNotification.icon = 17301642;
      localNotification.when = System.currentTimeMillis();
      localNotification.tickerText = (paramkv.d.getAppName() + this.j.getResources().getString(2131428599));
      Context localContext1 = this.j;
      String str2 = paramkv.d.getAppName();
      String str3 = this.j.getResources().getString(2131428599);
      Context localContext2 = this.j;
      int i1 = paramkv.d.getPackageName().hashCode();
      Intent localIntent = new Intent(this.j, DownloadManagerActivity.class);
      localIntent.putExtra("IS_FROM_NOTIFICATION", true);
      localIntent.putExtra("extra_back_to_main", true);
      localNotification.setLatestEventInfo(localContext1, str2, str3, PendingIntent.getActivity(localContext2, i1, localIntent, 134217728));
      localNotification.flags = 16;
      this.e.a(50 + paramkv.d.getPackageName().hashCode(), localNotification);
      return;
      this.e.a(50 + str1.hashCode());
    }
  }

  public final void b(boolean paramBoolean)
  {
    String str;
    PendingIntent localPendingIntent;
    if (paramBoolean)
    {
      Notification localNotification = new Notification();
      localNotification.icon = 2130838077;
      localNotification.when = System.currentTimeMillis();
      if (this.k.bM() == 0)
      {
        str = this.j.getString(2131429503);
        Intent localIntent2 = new Intent("notification_screenshot_action");
        localPendingIntent = PendingIntent.getBroadcast(this.j, 0, localIntent2, 134217728);
        localNotification.defaults = 4;
        localNotification.flags = (0x29 | localNotification.flags);
        localNotification.setLatestEventInfo(this.j, str, null, localPendingIntent);
        this.e.a(19, localNotification);
      }
    }
    while (true)
    {
      return;
      str = this.j.getString(2131429507);
      Context localContext1 = this.j;
      Context localContext2 = this.j;
      Intent localIntent1 = new Intent();
      localIntent1.setClass(localContext2, ScreenShotListActivity.class);
      localIntent1.putExtra("IS_FROM_NOTIFICATION", true);
      localIntent1.putExtra("extra_back_to_main", true);
      localPendingIntent = PendingIntent.getActivity(localContext1, 0, localIntent1, 134217728);
      break;
      this.e.a(19);
    }
  }

  public final void c()
  {
    Intent localIntent = new Intent(this.j, VirusScanActivity.class);
    localIntent.putExtra("AUTO_SCAN", true);
    localIntent.putExtra("IS_FROM_NOTIFICATION", true);
    localIntent.putExtra("extra_back_to_main", true);
    PendingIntent localPendingIntent = PendingIntent.getActivity(this.j, 0, localIntent, 134217728);
    Notification localNotification = new Notification();
    localNotification.icon = 2130838093;
    localNotification.flags = (0x10 | localNotification.flags);
    localNotification.defaults = (0x4 | localNotification.defaults);
    localNotification.tickerText = this.j.getString(2131428685);
    localNotification.setLatestEventInfo(this.j, this.j.getString(2131428685), this.j.getString(2131428686), localPendingIntent);
    localNotification.when = System.currentTimeMillis();
    localNotification.number = 0;
    this.e.a(16);
    this.e.a(16, localNotification);
  }

  public final void c(String paramString)
  {
    if ((!DoubleCallDialog.a.contains(paramString)) && (!this.k.N(paramString)))
    {
      Intent localIntent = new Intent(this.j, DoubleCallDialog.class);
      localIntent.setFlags(268435456);
      localIntent.putExtra("phone_number", paramString);
      localIntent.putExtra("contact_name", "");
      this.j.startActivity(localIntent);
    }
  }

  public final void c(String paramString1, String paramString2)
  {
    Notification localNotification = new Notification();
    Context localContext1 = this.j;
    Context localContext2 = this.j;
    Intent localIntent = new Intent();
    localIntent.setClass(localContext2, SoftwareMoveActivity.class);
    localIntent.putExtra("IS_FROM_NOTIFICATION", true);
    localIntent.putExtra("extra_back_to_main", true);
    PendingIntent localPendingIntent = PendingIntent.getActivity(localContext1, 0, localIntent, 134217728);
    localNotification.icon = 2130838079;
    localNotification.tickerText = String.format(this.j.getString(2131429526), new Object[] { paramString1, paramString2 });
    localNotification.defaults = 4;
    localNotification.flags = (0x19 | localNotification.flags);
    localNotification.ledARGB = -16711936;
    localNotification.ledOnMS = 500;
    localNotification.ledOffMS = 2000;
    localNotification.when = System.currentTimeMillis();
    localNotification.setLatestEventInfo(this.j, String.format(this.j.getString(2131429527), new Object[] { paramString1 }), String.format(this.j.getString(2131429528), new Object[] { paramString2 }), localPendingIntent);
    this.e.a(27, localNotification);
  }

  public final void c(kv paramkv)
  {
    String str1 = paramkv.d.getPackageName();
    if ((str1 == null) || (str1.length() == 0));
    while (true)
    {
      Notification localNotification = new Notification();
      localNotification.icon = 17301642;
      localNotification.tickerText = (paramkv.d.getAppName() + this.j.getResources().getString(2131428440));
      Context localContext1 = this.j;
      String str2 = paramkv.d.getAppName();
      String str3 = this.j.getResources().getString(2131428440);
      Context localContext2 = this.j;
      int i1 = paramkv.d.getPackageName().hashCode();
      Intent localIntent = new Intent(this.j, DownloadManagerActivity.class);
      localIntent.putExtra("IS_FROM_NOTIFICATION", true);
      localIntent.putExtra("extra_back_to_main", true);
      localNotification.setLatestEventInfo(localContext1, str2, str3, PendingIntent.getActivity(localContext2, i1, localIntent, 134217728));
      localNotification.flags = 16;
      this.e.a(50 + paramkv.d.getPackageName().hashCode(), localNotification);
      return;
      this.e.a(50 + str1.hashCode());
    }
  }

  public final void d()
  {
    if (!this.n)
      return;
    Notification localNotification = new Notification();
    Context localContext1 = this.j;
    Context localContext2 = this.j;
    Intent localIntent = new Intent();
    localIntent.putExtra("password", "fromnotification");
    if (aai.a().d())
    {
      localIntent.setClass(localContext2, SecureSpaceActivity.class);
      localIntent.putExtra("password", "-1");
    }
    while (true)
    {
      localIntent.putExtra("IS_FROM_NOTIFICATION", true);
      localIntent.putExtra("extra_back_to_main", true);
      PendingIntent localPendingIntent = PendingIntent.getActivity(localContext1, 0, localIntent, 134217728);
      localNotification.icon = 2130838076;
      localNotification.tickerText = this.k.C();
      localNotification.defaults = 4;
      localNotification.flags = (0x39 | localNotification.flags);
      localNotification.ledARGB = -16711936;
      localNotification.ledOnMS = 500;
      localNotification.ledOffMS = 2000;
      localNotification.when = System.currentTimeMillis();
      localNotification.setLatestEventInfo(this.j, this.k.F(), this.k.C(), localPendingIntent);
      this.e.a(5, localNotification);
      break;
      localIntent.setClass(localContext2, PermissionControlActivity.class);
      localIntent.putExtra("SHORTCUT_TO_SECURE_SPACE", true);
    }
  }

  public final void d(String paramString)
  {
    Resources localResources = this.j.getResources();
    Notification localNotification = new Notification();
    localNotification.icon = 2130838093;
    localNotification.when = System.currentTimeMillis();
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = "";
    arrayOfObject[1] = paramString;
    arrayOfObject[2] = localResources.getString(2131428606);
    String str = String.format("%s'%s'%s", arrayOfObject);
    localNotification.defaults = 4;
    localNotification.flags = 16;
    PendingIntent localPendingIntent = PendingIntent.getActivity(this.j, 0, new Intent(), 268435456);
    localNotification.tickerText = str;
    localNotification.setLatestEventInfo(this.j, localResources.getString(2131428335), str, localPendingIntent);
    this.e.a.notify(8, localNotification);
    try
    {
      Thread.sleep(3000L);
      this.e.a.cancel(8);
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      while (true)
        localInterruptedException.printStackTrace();
    }
  }

  public final void e()
  {
    switch (this.k.q())
    {
    case 0:
    default:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    }
    while (true)
    {
      return;
      l();
      continue;
      k();
      continue;
      l();
      k();
      continue;
      this.i.vibrate(new long[] { 300L, 50L, 300L }, 0);
      new ow(this).start();
      continue;
      l();
      this.i.vibrate(new long[] { 300L, 50L, 300L }, 0);
      new ox(this).start();
      continue;
      k();
      this.i.vibrate(new long[] { 300L, 50L, 300L }, 0);
      new oy(this).start();
      continue;
      l();
      k();
      this.i.vibrate(new long[] { 300L, 50L, 300L }, 0);
      new oz(this).start();
    }
  }

  public final void e(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0));
    while (true)
    {
      return;
      this.e.a(50 + paramString.hashCode());
    }
  }

  public final void f()
  {
    if (!this.p);
    while (true)
    {
      return;
      this.p = false;
      if (this.k.av() == 0)
        switch (this.k.aw())
        {
        default:
          break;
        case 0:
          this.d.setRingerMode(this.b);
          this.d.setVibrateSetting(0, this.c);
          break;
        case 1:
          if (this.g != null)
            this.g.stop();
          break;
        case 2:
          this.i.cancel();
          this.d.setRingerMode(this.b);
          this.d.setVibrateSetting(0, this.c);
        }
    }
  }

  public final void g()
  {
    Notification localNotification = new Notification();
    Context localContext = this.j;
    Intent localIntent = new Intent(this.j, SMSChargeCheckActivity.class);
    localIntent.putExtra("IS_FROM_NOTIFICATION", true);
    localIntent.putExtra("isfilter", true);
    localIntent.putExtra("extra_back_to_main", true);
    PendingIntent localPendingIntent = PendingIntent.getActivity(localContext, 0, localIntent, 134217728);
    localNotification.defaults = (0x4 | localNotification.defaults);
    localNotification.flags = 16;
    localNotification.when = System.currentTimeMillis();
    localNotification.icon = 2130838078;
    StringBuffer localStringBuffer = new StringBuffer();
    int i1 = this.k.ad();
    jo.a().b.putBoolean("isshowtip", true).commit();
    int i2 = i1 + 1;
    this.k.p(i2);
    int i3 = 0;
    if (i2 > 1)
      i3 = i2;
    localNotification.number = i3;
    String str1 = this.j.getResources().getString(2131428626);
    String str2 = this.j.getResources().getString(2131428627);
    String str3 = this.j.getResources().getString(2131428628);
    localStringBuffer.append(str1);
    localStringBuffer.append(i2);
    localStringBuffer.append(str2);
    localNotification.tickerText = localStringBuffer.toString();
    localNotification.setLatestEventInfo(this.j, str3, localStringBuffer, localPendingIntent);
    this.e.a(9);
    this.e.a(9, localNotification);
  }

  public final void h()
  {
    this.e.a.cancelAll();
  }

  public final void i()
  {
    VirusNotivicationDialog.a(this.j);
  }

  public final void j()
  {
    this.e.a(27);
  }

  public static final class a
  {
    NotificationManager a;
    private Handler b;

    public a(Context paramContext, NotificationManager paramNotificationManager)
    {
      this.a = paramNotificationManager;
      this.b = new pb(this, paramContext.getMainLooper());
    }

    public final void a(int paramInt)
    {
      Message localMessage = this.b.obtainMessage();
      localMessage.what = 1;
      localMessage.arg1 = paramInt;
      this.b.sendMessageDelayed(localMessage, 0L);
    }

    public final void a(int paramInt, Notification paramNotification)
    {
      Message localMessage = this.b.obtainMessage();
      localMessage.what = 0;
      localMessage.obj = paramNotification;
      localMessage.arg1 = paramInt;
      this.b.sendMessageDelayed(localMessage, 0L);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ov
 * JD-Core Version:    0.6.2
 */