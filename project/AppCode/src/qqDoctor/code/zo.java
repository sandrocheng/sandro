import QQPIM.SoftElementInfo;
import QQPIM.SoftList;
import QQPIM.SoftListType;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Debug.MemoryInfo;
import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.applist.AppListManager;
import com.tencent.tmsecure.module.optimize.IMemoryHelper;
import com.tencent.tmsecure.module.optimize.IMemoryHelper.MemoryInfo;
import com.tencent.tmsecure.module.optimize.OptimizeManager;
import com.tencent.tmsecure.module.optimize.ProcessEntity;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class zo
{
  private static zo a = null;
  private List<mi> b = new ArrayList();
  private final PackageManager c = TMSApplication.getApplicaionContext().getPackageManager();
  private final AppListManager d = (AppListManager)ManagerCreator.getManager(AppListManager.class);
  private final IMemoryHelper e = ((OptimizeManager)ManagerCreator.getManager(OptimizeManager.class)).getMemoryHelper();
  private Context f;
  private boolean g = false;
  private dw<zo.a> h = new dw();
  private String i = null;
  private ho j = ho.a();
  private int k = 0;
  private String l;
  private Handler m = null;
  private final String[] n = { "uid.system", "uid.shared", "uid.phone", "android.media", "com.motorola.blur", "android.uid.sec.activitywidget" };
  private final String[] o = { "android.uid.phone" };
  private final String[] p = { ":service", ":remote", ":push", ":FriendService", ":BackgroundFriendService", ":LocationFriendService", ":provider" };
  private final String[] q = { "android.permission.BIND_WALLPAPER" };
  private List<ResolveInfo> r = new ArrayList();
  private String[] s;
  private ResolveInfo t = null;
  private Intent u;

  private zo(Context paramContext)
  {
    this.f = paramContext;
    this.m = new zp(this, paramContext.getApplicationContext().getMainLooper());
    this.i = this.j.at();
    n();
  }

  public static zo a()
  {
    try
    {
      if (a == null)
        a = new zo(QQPimApplication.a());
      return a;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void a(List<mi> paramList1, List<mi> paramList2)
  {
    int i1;
    if ((this.h != null) && (this.h.size() > 0))
    {
      i1 = 1;
      if (i1 != 0)
        break label29;
    }
    label29: label189: label195: 
    while (true)
    {
      return;
      i1 = 0;
      break;
      if (paramList1.size() != paramList2.size())
      {
        Message localMessage2 = this.m.obtainMessage(1);
        this.m.sendMessage(localMessage2);
      }
      Iterator localIterator1 = paramList1.iterator();
      label72: int i3;
      if (localIterator1.hasNext())
      {
        mi localmi1 = (mi)localIterator1.next();
        Iterator localIterator2 = paramList2.iterator();
        while (localIterator2.hasNext())
        {
          mi localmi2 = (mi)localIterator2.next();
          if (localmi1.a.mPackageName.equals(localmi2.a.mPackageName))
          {
            i3 = 1;
            if (i3 != 0)
              break label189;
          }
        }
      }
      for (int i2 = 1; ; i2 = 0)
      {
        if (i2 == 0)
          break label195;
        Message localMessage1 = this.m.obtainMessage(1);
        this.m.sendMessage(localMessage1);
        break;
        i3 = 0;
        break label149;
        break label72;
      }
    }
  }

  private List<kw> b(boolean paramBoolean)
  {
    if (this.b.size() <= 0)
      m();
    ArrayList localArrayList = new ArrayList();
    SoftwareManager localSoftwareManager = (SoftwareManager)ManagerCreator.getManager(SoftwareManager.class);
    while (true)
    {
      kw localkw;
      synchronized (this.b)
      {
        Iterator localIterator = this.b.iterator();
        if (!localIterator.hasNext())
          break label233;
        mi localmi = (mi)localIterator.next();
        localkw = a.a(localSoftwareManager.getAppInfo(localmi.a.mPackageName, 1));
        if (localkw == null)
          continue;
        localkw.k(localmi.a.mProcessName);
        localkw.k(localmi.a.mPriorityGroup);
        localkw.j(localmi.a.mPriority);
        localkw.o(localmi.a.mPid);
        localkw.d(localmi.b);
        localkw.e(localmi.c);
        boolean bool = localkw.isSystemApp();
        if (!bool);
      }
      try
      {
        localkw.j(this.c.getPackageInfo(localkw.getPackageName(), 1).sharedUserId);
        localArrayList.add(localkw);
        continue;
        localObject = finally;
        throw localObject;
      }
      catch (Exception localException)
      {
        while (true)
          localException.printStackTrace();
      }
    }
    label233: if (paramBoolean)
      c(localArrayList);
    d(localArrayList);
    return localArrayList;
  }

  public static void b()
  {
    a = null;
  }

  private boolean b(String paramString)
  {
    boolean bool = false;
    if (paramString != null)
    {
      String[] arrayOfString1 = this.p;
      bool = false;
      if (arrayOfString1 != null);
    }
    else
    {
      return bool;
    }
    String[] arrayOfString2 = this.p;
    int i1 = arrayOfString2.length;
    for (int i2 = 0; ; i2++)
    {
      bool = false;
      if (i2 >= i1)
        break;
      if (paramString.contains(arrayOfString2[i2]))
      {
        bool = true;
        break;
      }
    }
  }

  private void c(List<kw> paramList)
  {
    if (paramList == null);
    IMemoryHelper.MemoryInfo[] arrayOfMemoryInfo;
    do
    {
      return;
      int[] arrayOfInt = new int[paramList.size()];
      for (int i1 = 0; i1 < paramList.size(); i1++)
      {
        kw localkw2 = (kw)paramList.get(i1);
        if ((localkw2.G() <= 0L) || (localkw2.H() <= 0L))
          arrayOfInt[i1] = localkw2.V();
      }
      arrayOfMemoryInfo = this.e.getRamSize(arrayOfInt);
    }
    while ((arrayOfMemoryInfo == null) || (arrayOfMemoryInfo.length <= 0));
    int i2 = 0;
    label98: IMemoryHelper.MemoryInfo localMemoryInfo1;
    label138: IMemoryHelper.MemoryInfo localMemoryInfo2;
    if (i2 < arrayOfMemoryInfo.length)
    {
      localMemoryInfo1 = arrayOfMemoryInfo[i2];
      if ((paramList != null) && (localMemoryInfo1 != null) && (localMemoryInfo1.mPid != 0) && (localMemoryInfo1.mInfo != null))
        break label179;
      localMemoryInfo2 = arrayOfMemoryInfo[i2];
      if ((this.b != null) && (localMemoryInfo2 != null) && (localMemoryInfo2.mPid != 0) && (localMemoryInfo2.mInfo != null))
        break label267;
    }
    while (true)
    {
      i2++;
      break label98;
      break;
      label179: for (int i5 = 0; i5 < paramList.size(); i5++)
      {
        kw localkw1 = (kw)paramList.get(i5);
        if (localkw1.V() == localMemoryInfo1.mPid)
        {
          int i6 = localMemoryInfo1.mInfo.getTotalPss() << 10;
          int i7 = localMemoryInfo1.mInfo.getTotalPrivateDirty() << 10;
          localkw1.d(i6);
          localkw1.e(i7);
        }
      }
      break label138;
      label267: synchronized (this.b)
      {
        Iterator localIterator = this.b.iterator();
        while (localIterator.hasNext())
        {
          mi localmi = (mi)localIterator.next();
          if (((localmi.b <= 0L) || (localmi.c <= 0L)) && (localmi.a.mPid == localMemoryInfo2.mPid))
          {
            int i3 = localMemoryInfo2.mInfo.getTotalPss() << 10;
            int i4 = localMemoryInfo2.mInfo.getTotalPrivateDirty() << 10;
            localmi.b = i3;
            localmi.c = i4;
          }
        }
      }
    }
  }

  private boolean c(String paramString)
  {
    try
    {
      PackageInfo localPackageInfo = this.c.getPackageInfo(paramString, 4);
      bool1 = false;
      if (localPackageInfo != null)
      {
        ServiceInfo[] arrayOfServiceInfo1 = localPackageInfo.services;
        bool1 = false;
        if (arrayOfServiceInfo1 != null);
      }
      else
      {
        return bool1;
      }
      ServiceInfo[] arrayOfServiceInfo2 = localPackageInfo.services;
      int i1 = arrayOfServiceInfo2.length;
      label138: for (int i2 = 0; ; i2++)
      {
        bool1 = false;
        if (i2 >= i1)
          break;
        ServiceInfo localServiceInfo = arrayOfServiceInfo2[i2];
        String[] arrayOfString = this.q;
        int i3 = arrayOfString.length;
        for (int i4 = 0; ; i4++)
        {
          if (i4 >= i3)
            break label138;
          String str = arrayOfString[i4];
          if (localServiceInfo.permission != null)
          {
            boolean bool2 = localServiceInfo.permission.equals(str);
            if (bool2)
            {
              bool1 = true;
              break;
            }
          }
        }
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
      {
        localNameNotFoundException.printStackTrace();
        boolean bool1 = false;
      }
    }
    finally
    {
    }
  }

  private static void d(List<kw> paramList)
  {
    if ((paramList == null) || (paramList.size() < 2))
      return;
    Iterator localIterator1 = paramList.iterator();
    label22: label164: 
    while (true)
    {
      if (localIterator1.hasNext())
      {
        kw localkw1 = (kw)localIterator1.next();
        Iterator localIterator2 = paramList.iterator();
        while (localIterator2.hasNext())
        {
          kw localkw2 = (kw)localIterator2.next();
          if (localkw2 != localkw1)
            if ((localkw2 != null) && (localkw1 != null) && (localkw2.getPackageName() != null) && (localkw1.getPackageName() != null) && (localkw1.getPackageName().compareTo(localkw2.getPackageName()) == 0))
            {
              localkw2.d(localkw2.G() + localkw1.G());
              localkw2.e(localkw2.H() + localkw1.H());
            }
        }
      }
      for (int i1 = 1; ; i1 = 0)
      {
        if (i1 == 0)
          break label164;
        localIterator1.remove();
        break label22;
        break;
      }
    }
  }

  public static boolean d(kw paramkw)
  {
    if (paramkw.J() >= 0);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private boolean f(kw paramkw)
  {
    boolean bool;
    if (paramkw == null)
      bool = true;
    while (true)
    {
      return bool;
      if (paramkw.getPackageName().equals(new hg().a))
      {
        bool = false;
      }
      else if (j(paramkw) >= 0)
      {
        if (!i(paramkw))
          bool = true;
        else
          bool = false;
      }
      else if ((this.l != null) && (this.l.equals(paramkw.getPackageName())))
      {
        bool = false;
      }
      else if (h(paramkw))
      {
        bool = false;
      }
      else if (c(paramkw.getPackageName()))
      {
        bool = false;
      }
      else
      {
        int i1;
        if ((this.s == null) || (this.s.length <= 0))
          i1 = 0;
        while (true)
        {
          if (i1 == 0)
            break label203;
          bool = false;
          break;
          String[] arrayOfString2 = this.s;
          int i6 = arrayOfString2.length;
          for (int i7 = 0; ; i7++)
          {
            if (i7 >= i6)
              break label198;
            String str3 = arrayOfString2[i7];
            if ((paramkw.E() != null) && (paramkw.E().equals(str3)))
            {
              i1 = 1;
              break;
            }
          }
          label198: i1 = 0;
        }
        label203: if (add.a == null)
          add.a = new add();
        add localadd = add.a;
        String str1 = paramkw.getPackageName();
        if (localadd.c == null)
          localadd.c = localadd.b.loadAppList(SoftListType.NOTKILLLIST_KILL_PROCESSES);
        SoftList localSoftList = localadd.c;
        if (localSoftList != null)
        {
          Iterator localIterator = localSoftList.vctSofts.iterator();
          SoftElementInfo localSoftElementInfo;
          do
          {
            if (!localIterator.hasNext())
              break;
            localSoftElementInfo = (SoftElementInfo)localIterator.next();
          }
          while ((!localSoftElementInfo.pkgname.equals(str1)) || (localSoftElementInfo.softsize != 0) || ((localSoftElementInfo.cert != null) && (localSoftElementInfo.cert.length() != 0) && (!localadd.a(str1, localSoftElementInfo.cert))));
        }
        for (int i2 = 1; ; i2 = 0)
        {
          if (i2 == 0)
            break label372;
          bool = false;
          break;
        }
        label372: String str2 = paramkw.E();
        int i5;
        if (str2 != null)
        {
          String[] arrayOfString1 = this.o;
          int i4 = arrayOfString1.length;
          i5 = 0;
          label397: if (i5 < i4)
            if (!str2.equals(arrayOfString1[i5]));
        }
        for (int i3 = 1; ; i3 = 0)
        {
          if (i3 == 0)
            break label442;
          bool = false;
          break;
          i5++;
          break label397;
        }
        label442: bool = true;
      }
    }
  }

  private boolean g(kw paramkw)
  {
    String str = paramkw.E();
    boolean bool = false;
    String[] arrayOfString;
    int i1;
    if (str != null)
    {
      arrayOfString = this.n;
      i1 = arrayOfString.length;
    }
    for (int i2 = 0; ; i2++)
    {
      bool = false;
      if (i2 < i1)
      {
        if (str.contains(arrayOfString[i2]))
          bool = true;
      }
      else
        return bool;
    }
  }

  private boolean h(kw paramkw)
  {
    boolean bool;
    if (this.t != null)
      if (this.t.activityInfo.packageName.equals(paramkw.getPackageName()))
        bool = true;
    while (true)
    {
      return bool;
      bool = false;
      continue;
      if (this.r == null)
      {
        bool = false;
      }
      else
      {
        Iterator localIterator = this.r.iterator();
        while (true)
          if (localIterator.hasNext())
            if (((ResolveInfo)localIterator.next()).activityInfo.packageName.equals(paramkw.getPackageName()))
            {
              bool = true;
              break;
            }
        bool = false;
      }
    }
  }

  private boolean i(kw paramkw)
  {
    int i1 = j(paramkw);
    boolean bool1 = false;
    if (i1 < 0);
    while (true)
    {
      return bool1;
      String str = this.i.substring(i1);
      boolean bool2 = "1".equals(str.substring(1 + str.indexOf(","), str.indexOf(";")).trim());
      bool1 = false;
      if (bool2)
        bool1 = true;
    }
  }

  private int j(kw paramkw)
  {
    int i1 = -1;
    if (this.i == null);
    while (true)
    {
      return i1;
      int i2 = this.i.indexOf(paramkw.getPackageName());
      String str1 = this.i;
      int i3 = i2;
      String str2;
      for (Object localObject = str1; i3 != i1; localObject = str2)
      {
        int i4 = i3 + paramkw.getPackageName().length();
        if (((i3 == 0) || (this.i.substring(i3 - 1, i3).equals(";"))) && ((i3 == -1 + this.i.length()) || (this.i.substring(i4, i4 + 1).equals(","))))
          break;
        str2 = ((String)localObject).substring(i4);
        i3 = str2.indexOf(paramkw.getPackageName());
      }
      i1 = i3;
    }
  }

  public static boolean l()
  {
    List localList = ((ActivityManager)QQPimApplication.a().getSystemService("activity")).getRunningTasks(1);
    if ((localList.size() > 0) && (((ActivityManager.RunningTaskInfo)localList.get(0)).topActivity.getPackageName().equals(TMSApplication.getApplicaionContext().getPackageName())));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private void m()
  {
    if (this.g);
    while (true)
    {
      return;
      List localList1 = this.b;
      ArrayList localArrayList1 = ((OptimizeManager)ManagerCreator.getManager(OptimizeManager.class)).getAllRunningProcess(true);
      ArrayList localArrayList2 = new ArrayList();
      Iterator localIterator = localArrayList1.iterator();
      while (localIterator.hasNext())
      {
        ProcessEntity localProcessEntity = (ProcessEntity)localIterator.next();
        mi localmi = new mi();
        localmi.a = localProcessEntity;
        localArrayList2.add(localmi);
      }
      synchronized (this.b)
      {
        this.b = localArrayList2;
        a(localList1, localArrayList2);
      }
    }
  }

  private void n()
  {
    synchronized (this.r)
    {
      if (this.u == null)
      {
        this.u = new Intent("android.intent.action.MAIN");
        this.u.addCategory("android.intent.category.HOME");
      }
      this.r.clear();
      this.r = this.c.queryIntentActivities(this.u, 0);
      this.s = o();
      return;
    }
  }

  private String[] o()
  {
    if ((this.r == null) || (this.r.size() <= 0));
    String[] arrayOfString;
    for (Object localObject = null; ; localObject = arrayOfString)
    {
      return localObject;
      arrayOfString = new String[this.r.size()];
      int i1 = 0;
      while (true)
        if (i1 < this.r.size())
          try
          {
            arrayOfString[i1] = this.c.getPackageInfo(((ResolveInfo)this.r.get(i1)).activityInfo.packageName, 1).sharedUserId;
            i1++;
          }
          catch (PackageManager.NameNotFoundException localNameNotFoundException)
          {
            while (true)
              localNameNotFoundException.printStackTrace();
          }
    }
  }

  public final long a(int paramInt)
  {
    int[] arrayOfInt = { paramInt };
    IMemoryHelper.MemoryInfo[] arrayOfMemoryInfo = this.e.getRamSize(arrayOfInt);
    Object localObject = null;
    if (arrayOfMemoryInfo != null)
    {
      int i1 = arrayOfMemoryInfo.length;
      localObject = null;
      if (i1 > 0)
      {
        Debug.MemoryInfo[] arrayOfMemoryInfo1 = new Debug.MemoryInfo[arrayOfMemoryInfo.length];
        for (int i2 = 0; i2 < arrayOfMemoryInfo.length; i2++)
          arrayOfMemoryInfo1[i2] = arrayOfMemoryInfo[i2].mInfo;
        localObject = arrayOfMemoryInfo1;
      }
    }
    if ((localObject != null) && (localObject.length > 0) && (localObject[0] != null));
    for (long l1 = localObject[0].getTotalPrivateDirty() << 10; ; l1 = 0L)
      return l1;
  }

  public final List<kw> a(boolean paramBoolean)
  {
    List localList = b(paramBoolean);
    if (localList != null)
    {
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
        if (((kw)localIterator.next()).getPackageName().equals(this.f.getPackageName()))
          localIterator.remove();
    }
    return localList;
  }

  public final void a(String paramString)
  {
    this.l = paramString;
  }

  public final void a(List<kw> paramList)
  {
    d(paramList);
    int i1 = this.k;
    while (true)
    {
      synchronized (this.b)
      {
        Iterator localIterator1 = this.b.iterator();
        if (localIterator1.hasNext())
        {
          mi localmi = (mi)localIterator1.next();
          if (localmi == null)
            continue;
          ProcessEntity localProcessEntity = localmi.a;
          Iterator localIterator2 = paramList.iterator();
          if (!localIterator2.hasNext())
            break label170;
          localkw = (kw)localIterator2.next();
          if (!localkw.getPackageName().equals(localProcessEntity.mPackageName))
            continue;
          if (localkw == null)
            continue;
          localIterator1.remove();
        }
      }
      h();
      if (i1 != this.k)
      {
        Message localMessage = this.m.obtainMessage(1);
        this.m.sendMessage(localMessage);
      }
      this.g = true;
      return;
      label170: kw localkw = null;
    }
  }

  public final void a(kw paramkw)
  {
    int i2;
    for (int i1 = 0; ; i1 = i2)
    {
      synchronized (this.b)
      {
        Iterator localIterator = this.b.iterator();
        if (localIterator.hasNext())
        {
          mi localmi = (mi)localIterator.next();
          if ((localmi != null) && (paramkw.getPackageName().equals(localmi.a.mPackageName)))
          {
            localIterator.remove();
            this.g = true;
            i2 = 1;
            continue;
          }
        }
        else
        {
          if (i1 != 0)
          {
            this.k = (-1 + this.k);
            Message localMessage = this.m.obtainMessage(1);
            this.m.sendMessage(localMessage);
          }
          return;
        }
      }
      i2 = i1;
    }
  }

  public final void a(kw paramkw, boolean paramBoolean)
  {
    while (true)
    {
      StringBuffer localStringBuffer1;
      try
      {
        String str1 = paramkw.getPackageName();
        localStringBuffer1 = new StringBuffer();
        if (!paramBoolean)
        {
          localStringBuffer1.append(str1).append(",0");
          int i1 = j(paramkw);
          if (-1 != i1)
          {
            String str2 = this.i.substring(i1);
            String str3 = str2.substring(0, str2.indexOf(";"));
            this.i = this.i.replace(str3, localStringBuffer1.toString());
            this.j.h(this.i);
          }
        }
        else
        {
          localStringBuffer1.append(str1).append(",1");
          continue;
        }
      }
      finally
      {
      }
      StringBuffer localStringBuffer2 = new StringBuffer(this.i);
      localStringBuffer2.append(localStringBuffer1.append(";"));
      this.i = localStringBuffer2.toString();
    }
  }

  public final void a(zo.a parama)
  {
    this.h.a(parama);
  }

  public final boolean a(ComponentName paramComponentName)
  {
    n();
    Iterator localIterator = this.r.iterator();
    while (localIterator.hasNext())
    {
      ResolveInfo localResolveInfo = (ResolveInfo)localIterator.next();
      if ((localResolveInfo.activityInfo.packageName.equals(paramComponentName.getPackageName())) && (localResolveInfo.activityInfo.name.equals(paramComponentName.getClassName())))
        this.t = localResolveInfo;
    }
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int b(List<kw> paramList)
  {
    Iterator localIterator = paramList.iterator();
    int i1 = 0;
    if (localIterator.hasNext())
      if (!c((kw)localIterator.next()))
        break label47;
    label47: for (int i2 = i1 + 1; ; i2 = i1)
    {
      i1 = i2;
      break;
      return i1;
    }
  }

  public final void b(zo.a parama)
  {
    this.h.b(parama);
  }

  public final boolean b(kw paramkw)
  {
    boolean bool1 = true;
    try
    {
      if (this.l != null)
      {
        boolean bool4 = this.l.equals(paramkw.getPackageName());
        if (!bool4);
      }
      label163: 
      while (true)
      {
        return bool1;
        String str = paramkw.getPackageName();
        if (this.d.contains(str, SoftListType.BLACKLIST_KILL_PROCESSES))
        {
          bool1 = false;
        }
        else if ((!paramkw.getPackageName().equals(new hg().a)) && (!h(paramkw)) && (!c(paramkw.getPackageName())) && (!this.d.contains(paramkw.getPackageName(), SoftListType.WHITELIST_KILL_PROCESS)))
        {
          if (paramkw.K() > 2);
          for (boolean bool2 = bool1; ; bool2 = false)
          {
            if ((!bool2) || (g(paramkw)))
              break label163;
            boolean bool3 = b(paramkw.F());
            if (bool3)
              break;
            bool1 = false;
            break;
          }
        }
      }
    }
    finally
    {
    }
  }

  public final void c()
  {
    this.g = false;
  }

  public final boolean c(kw paramkw)
  {
    boolean bool;
    if (!f(paramkw))
      bool = false;
    while (true)
    {
      return bool;
      String str1 = paramkw.getPackageName();
      if (j(paramkw) >= 0)
      {
        if (!i(paramkw))
          bool = true;
        else
          bool = false;
      }
      else
        label294: if (this.d.contains(str1, SoftListType.BLACKLIST_KILL_PROCESSES))
        {
          bool = true;
        }
        else
        {
          if (paramkw.K() > 2);
          for (int i1 = 1; ; i1 = 0)
          {
            if (i1 != 0)
              break label92;
            bool = false;
            break;
          }
          label92: if (g(paramkw))
          {
            bool = false;
          }
          else if (b(paramkw.F()))
          {
            bool = false;
          }
          else
          {
            if (add.a == null)
              add.a = new add();
            add localadd = add.a;
            String str2 = paramkw.getPackageName();
            if (localadd.c == null)
              localadd.c = localadd.b.loadAppList(SoftListType.NOTKILLLIST_KILL_PROCESSES);
            SoftList localSoftList = localadd.c;
            if (localSoftList != null)
            {
              Iterator localIterator = localSoftList.vctSofts.iterator();
              SoftElementInfo localSoftElementInfo;
              do
              {
                if (!localIterator.hasNext())
                  break;
                localSoftElementInfo = (SoftElementInfo)localIterator.next();
              }
              while ((!localSoftElementInfo.pkgname.equals(str2)) || (localSoftElementInfo.softsize != 1) || ((localSoftElementInfo.cert != null) && (localSoftElementInfo.cert.length() != 0) && (!localadd.a(str2, localSoftElementInfo.cert))));
            }
            for (int i2 = 1; ; i2 = 0)
            {
              if (i2 == 0)
                break label294;
              bool = false;
              break;
            }
            bool = true;
          }
        }
    }
  }

  public final boolean d()
  {
    return this.g;
  }

  public final void e()
  {
    m();
  }

  public final boolean e(kw paramkw)
  {
    if (paramkw.getPackageName().equals(new hg().a));
    for (boolean bool = true; ; bool = i(paramkw))
      return bool;
  }

  public final void f()
  {
    h();
  }

  public final int g()
  {
    if (this.b.size() <= 0)
      m();
    if (this.k <= 0)
      h();
    return this.k;
  }

  public final List<kw> h()
  {
    List localList = a(false);
    int i1 = -1 + localList.size();
    if (i1 >= 0)
    {
      kw localkw = (kw)localList.get(i1);
      if (localkw.J() >= 0);
      for (int i2 = 1; ; i2 = 0)
      {
        if (i2 == 0)
          localList.remove(localkw);
        i1--;
        break;
      }
    }
    this.k = localList.size();
    return localList;
  }

  public final List<kw> i()
  {
    return a(true);
  }

  public final List<kw> j()
  {
    List localList = a(false);
    ArrayList localArrayList1 = new ArrayList();
    if (localList == null);
    for (ArrayList localArrayList2 = localArrayList1; ; localArrayList2 = localArrayList1)
    {
      return localArrayList2;
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
      {
        kw localkw = (kw)localIterator.next();
        if (f(localkw))
          localArrayList1.add(localkw);
      }
      c(localArrayList1);
    }
  }

  public final boolean k()
  {
    List localList = ((ActivityManager)QQPimApplication.a().getSystemService("activity")).getRunningTasks(1);
    if (localList.size() > 0);
    for (boolean bool = a(((ActivityManager.RunningTaskInfo)localList.get(0)).topActivity); ; bool = false)
      return bool;
  }

  public static abstract interface a
  {
    public abstract void RunningProcessListChange();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     zo
 * JD-Core Version:    0.6.2
 */