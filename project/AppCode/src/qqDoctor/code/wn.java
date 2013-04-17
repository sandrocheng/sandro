import android.app.NotificationManager;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.os.Handler;
import android.os.Message;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.adcheck.AdcheckManager;
import com.tencent.tmsecure.module.adcheck.NotificationInfo;
import com.tencent.tmsecure.module.permission.PermissionManager;
import com.tencent.tmsecure.module.permission.PermissionRequestInfo;
import com.tencent.tmsecure.module.qscanner.QScanResultEntity;
import com.tencent.tmsecure.module.qscanner.QScannerManager;
import com.tencent.tmsecure.module.software.AppEntity;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public final class wn
{
  private static wn g = null;
  private ho a = ho.a();
  private ja b = new ja();
  private final QScannerManager c = (QScannerManager)ManagerCreator.getManager(QScannerManager.class);
  private Context d;
  private final SoftwareManager e;
  private List<String> f = new ArrayList();
  private Handler h = null;
  private List<QScanResultEntity> i;
  private NotificationManager j;

  private wn(Context paramContext)
  {
    this.d = paramContext;
    this.h = new wo(this, this.d.getApplicationContext().getMainLooper());
    this.j = ((NotificationManager)this.d.getSystemService("notification"));
    this.e = ((SoftwareManager)ManagerCreator.getManager(SoftwareManager.class));
    this.f.add(this.d.getPackageName());
  }

  public static wn a(Context paramContext)
  {
    if (g == null)
      g = new wn(paramContext);
    return g;
  }

  private boolean a(mb parammb, mb.a parama)
  {
    int k = 1;
    if ((parammb == null) || (parama == null))
    {
      int m = k;
      return m;
    }
    mb localmb = this.b.a(parammb.a);
    label79: int i1;
    label94: int n;
    label112: int i6;
    label120: String str;
    if (localmb != null)
    {
      parammb.a = localmb.a;
      parammb.b = localmb.b;
      parammb.c = localmb.c;
      parammb.d = localmb.d;
      parammb.e = localmb.e;
      if ((parammb == null) || (parammb.c != 2))
        break label330;
      i1 = k;
      if (i1 == 0)
        break label336;
      parama.e = (0x1 | parama.e);
      n = 0;
      if (localmb != null)
        break label513;
      i6 = k;
      if (i6 != 0)
      {
        ja localja2 = this.b;
        if (parammb != null)
        {
          ContentValues localContentValues2 = ja.a(parammb);
          localja2.a.a("notification_app", "pkg", localContentValues2);
          localja2.a.b();
        }
      }
      if (!parama.i.d)
      {
        if ((0x1 & parama.e) == 0)
          break label519;
        label183: if (k == 0)
          break label522;
      }
      str = new SimpleDateFormat("yyyy-MM-dd").format(Long.valueOf(new Date().getTime()));
      if (str != null)
        break label524;
    }
    label513: label519: label522: label524: for (parama.c = ""; ; parama.c = str)
    {
      parama.d = ((int)(System.currentTimeMillis() / 1000L));
      ja localja1 = this.b;
      if ((parammb == null) || (parama == null))
        break;
      ContentValues localContentValues1 = ja.a(parama);
      long l = localja1.a.a("notification_msg", "pkg", localContentValues1);
      if (l >= 0L)
        parama.h = l;
      localja1.a.b();
      break;
      AppEntity localAppEntity = this.e.getAppInfo(parammb.a, k);
      if (localAppEntity == null)
        break label79;
      parammb.b = localAppEntity.getAppName();
      break label79;
      label330: i1 = 0;
      break label94;
      label336: if ((parammb != null) && (parammb.c == k));
      for (int i2 = k; ; i2 = 0)
      {
        if (i2 == 0)
          break label368;
        n = k;
        break;
      }
      label368: int i5;
      if (xf.a(parammb.a))
        i5 = k;
      while (true)
      {
        if (i5 == 0)
          break label455;
        n = k;
        break;
        int i3 = this.f.size();
        for (int i4 = 0; ; i4++)
        {
          if (i4 >= i3)
            break label449;
          if (parammb.a.compareTo((String)this.f.get(i4)) == 0)
          {
            i5 = k;
            break;
          }
        }
        label449: i5 = 0;
      }
      label455: if (this.a.f())
      {
        ArrayList localArrayList = new ArrayList();
        localArrayList.add(parammb.a);
        this.c.scanPackages(localArrayList, new wp(this, parammb, parama), false);
      }
      n = k;
      break label112;
      i6 = 0;
      break label120;
      k = 0;
      break label183;
      break;
    }
  }

  public final void a()
  {
    Message localMessage = this.h.obtainMessage(1);
    this.h.sendMessageDelayed(localMessage, 5000L);
  }

  public final boolean a(PermissionRequestInfo paramPermissionRequestInfo)
  {
    if ((paramPermissionRequestInfo.mInfo1 == null) || (paramPermissionRequestInfo.mInfo1.length <= 0));
    Object localObject;
    kx localkx;
    int k;
    for (mb localmb = null; ; localmb = new mb(paramPermissionRequestInfo.mInfo1[0]))
    {
      localObject = null;
      if (localmb != null)
      {
        String[] arrayOfString = paramPermissionRequestInfo.mInfo1;
        localObject = null;
        if (arrayOfString != null)
        {
          int m = paramPermissionRequestInfo.mInfo1.length;
          localObject = null;
          if (m >= 4)
            break;
        }
      }
      boolean bool = a(localmb, (mb.a)localObject);
      localkx = new jf().a(localmb.a);
      if (localkx != null)
      {
        PermissionManager localPermissionManager = (PermissionManager)ManagerCreator.getManager(PermissionManager.class);
        if (localPermissionManager.isFinishInit())
        {
          if (!bool)
            break label285;
          k = 0;
          label107: if (ho.a().by())
            break label291;
          ja.a(localkx, k);
          label123: localPermissionManager.updatePermissionTable(xf.a(localkx.a, localkx.e, localkx.b));
          Message localMessage = this.h.obtainMessage(0);
          localMessage.obj = localmb.a;
          this.h.sendMessageDelayed(localMessage, 3600000L);
        }
      }
      return bool;
    }
    String str1 = paramPermissionRequestInfo.mInfo1[2];
    String str2 = paramPermissionRequestInfo.mInfo1[3];
    if (paramPermissionRequestInfo.mInfo1.length >= 5);
    for (String str3 = paramPermissionRequestInfo.mInfo1[4]; ; str3 = "")
    {
      if (str2 == null);
      for (String str4 = ""; ; str4 = str2)
      {
        if (str1 == null)
          str1 = "";
        mb.a locala = new mb.a(localmb, str4, str1, str3);
        locala.f = paramPermissionRequestInfo.mInfo2[0];
        localObject = locala;
        break;
        label285: k = 1;
        break label107;
        label291: localkx.e[12] = ((byte)k);
        break label123;
      }
    }
  }

  public final void b()
  {
    AdcheckManager localAdcheckManager = (AdcheckManager)ManagerCreator.getManager(AdcheckManager.class);
    ArrayList localArrayList1;
    List localList1;
    int n;
    int i1;
    try
    {
      ArrayList localArrayList2 = localAdcheckManager.findAllNotificationInfo();
      localArrayList1 = localArrayList2;
      if ((localArrayList1 == null) || (localArrayList1.size() <= 0))
        break label490;
      ja localja1 = this.b;
      Cursor localCursor = localja1.a.a("SELECT * FROM notification_app WHERE ad_like=1 AND setting=0");
      localCursor.moveToFirst();
      localList1 = ja.a(localCursor);
      localCursor.close();
      localja1.a.b();
      if ((localArrayList1 == null) || (localList1 == null))
      {
        int k = localArrayList1.size();
        for (int m = 0; m < k; m++)
        {
          NotificationInfo localNotificationInfo = (NotificationInfo)localArrayList1.get(m);
          if (localNotificationInfo != null)
          {
            mb localmb1 = new mb(localNotificationInfo.mPkg);
            String str = localNotificationInfo.mTickerText;
            if (str == null)
              str = "";
            mb.a locala1 = new mb.a(localmb1, "", str, "");
            locala1.f = localNotificationInfo.mNotificationID;
            if (!a(localmb1, locala1))
              localAdcheckManager.clear(localNotificationInfo);
          }
        }
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        localArrayList1 = null;
      }
      n = localArrayList1.size();
      i1 = 0;
    }
    label223: int i3;
    int i4;
    int i5;
    label264: List localList2;
    List localList3;
    label360: int i11;
    label377: int i7;
    int i9;
    int i6;
    if (i1 < n)
    {
      long l = ((NotificationInfo)localArrayList1.get(i1)).mNotificationID;
      int i2 = localList1.size();
      i3 = 0;
      i4 = n;
      i5 = i1;
      if (i3 < i2)
      {
        mb localmb2 = (mb)localList1.get(i3);
        if (localmb2.a.compareTo(((NotificationInfo)localArrayList1.get(i5)).mPkg) != 0)
          break label512;
        localList2 = localmb2.f;
        if ((localList2 != null) && (localList2.size() > 0))
          break label505;
        ja localja2 = this.b;
        if (localmb2 != null)
          localmb2.f = localja2.d(localmb2);
        localList3 = localmb2.f;
        if (localList3 == null)
          break label491;
        int i10 = localList3.size();
        i11 = 0;
        if (i11 >= i10)
          break label491;
        mb.a locala2 = (mb.a)localList3.get(i11);
        if ((locala2 != null) && (locala2.f == l))
        {
          localArrayList1.remove(i5);
          int i12 = i5 - 1;
          i7 = i4 - 1;
          i9 = 1;
          i6 = i12;
          label440: if (i9 != 0)
            break label473;
        }
      }
    }
    while (true)
    {
      i3++;
      i4 = i7;
      i5 = i6;
      break label264;
      i11++;
      break label377;
      i6 = i5;
      i7 = i4;
      label473: int i8 = i6 + 1;
      n = i7;
      i1 = i8;
      break label223;
      break;
      label490: return;
      label491: i6 = i5;
      i7 = i4;
      i9 = 0;
      break label440;
      label505: localList3 = localList2;
      break label360;
      label512: i6 = i5;
      i7 = i4;
    }
  }

  public final boolean c()
  {
    return this.a.di();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     wn
 * JD-Core Version:    0.6.2
 */