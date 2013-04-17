import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.aresengine.AresEngineManager;
import com.tencent.tmsecure.module.optimize.OptimizeManager;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class so
{
  private static so a = null;
  private AresEngineManager b;
  private OptimizeManager c;
  private List<String> d;
  private String[] e = { "com.tencent.qqphonebook", "com.qq.AppService" };
  private so.a f = so.a.a();

  private so()
  {
    ho.a();
    this.b = ((AresEngineManager)ManagerCreator.getManager(AresEngineManager.class));
    this.c = ((OptimizeManager)ManagerCreator.getManager(OptimizeManager.class));
    c();
  }

  public static so a()
  {
    try
    {
      if (a == null)
        a = new so();
      so localso = a;
      return localso;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void c()
  {
    Set localSet1 = this.f.b();
    for (int i = 0; i < this.e.length; i++)
      localSet1.add(this.e[i]);
    Set localSet2 = this.f.c();
    Context localContext = TMSApplication.getApplicaionContext();
    ArrayList localArrayList1 = new ArrayList();
    Intent localIntent = new Intent();
    localIntent.setAction("android.intent.action.MAIN");
    localIntent.addCategory("android.intent.category.HOME");
    List localList = localContext.getPackageManager().queryIntentActivities(localIntent, 0);
    int k;
    if (localList != null)
    {
      int j = localList.size();
      k = 0;
      if (j > 0)
        break label153;
    }
    for (ArrayList localArrayList2 = localArrayList1; ; localArrayList2 = localArrayList1)
    {
      localSet2.addAll(localArrayList2);
      this.f.d().addAll(a.b(TMSApplication.getApplicaionContext()));
      return;
      label153: 
      while (k < localList.size())
      {
        localArrayList1.add(((ResolveInfo)localList.get(k)).activityInfo.packageName);
        k++;
      }
    }
  }

  public final void b()
  {
    this.d = this.b.findAheadProcess();
    if (this.d == null);
    while (true)
    {
      return;
      if (this.d.size() > 0)
      {
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = this.d.toString();
        arrayOfObject[1] = this.f.toString();
        String.format("before filterWhiteList, aheadProcessList:%s, need filter:%s", arrayOfObject);
        if ((this.d != null) && (this.d.size() > 0))
        {
          Set localSet1 = this.f.b();
          HashSet localHashSet1 = new HashSet();
          Iterator localIterator1 = this.d.iterator();
          while (localIterator1.hasNext())
          {
            String str6 = (String)localIterator1.next();
            if (localSet1.contains(str6))
              localHashSet1.add(str6);
          }
          Iterator localIterator2 = localHashSet1.iterator();
          while (localIterator2.hasNext())
          {
            String str5 = (String)localIterator2.next();
            this.d.remove(str5);
          }
          Set localSet2 = this.f.c();
          HashSet localHashSet2 = new HashSet();
          Iterator localIterator3 = this.d.iterator();
          while (localIterator3.hasNext())
          {
            String str4 = (String)localIterator3.next();
            if (localSet2.contains(str4))
              localHashSet2.add(str4);
          }
          Iterator localIterator4 = localHashSet2.iterator();
          while (localIterator4.hasNext())
          {
            String str3 = (String)localIterator4.next();
            this.d.remove(str3);
          }
          Set localSet3 = this.f.d();
          HashSet localHashSet3 = new HashSet();
          Iterator localIterator5 = this.d.iterator();
          while (localIterator5.hasNext())
          {
            String str2 = (String)localIterator5.next();
            if (localSet3.contains(str2))
              localHashSet3.add(str2);
          }
          Iterator localIterator6 = localHashSet3.iterator();
          while (localIterator6.hasNext())
          {
            String str1 = (String)localIterator6.next();
            this.d.remove(str1);
          }
        }
        new StringBuilder("after filterWhiteList, aheadProcessList:").append(this.d.toString()).toString();
        if ((this.d.size() > 0) && (this.d != null) && (this.d.size() > 0))
          new sp(this).start();
      }
    }
  }

  static final class a
  {
    private static a a = null;
    private Set<String> b = Collections.synchronizedSet(new HashSet());
    private Set<String> c = Collections.synchronizedSet(new HashSet());
    private Set<String> d = Collections.synchronizedSet(new HashSet());
    private Set<String> e = Collections.synchronizedSet(new HashSet());

    public static a a()
    {
      try
      {
        if (a == null)
          a = new a();
        a locala = a;
        return locala;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public final Set<String> b()
    {
      return this.b;
    }

    public final Set<String> c()
    {
      return this.d;
    }

    public final Set<String> d()
    {
      return this.e;
    }

    public final String toString()
    {
      return "WhiteListContainer [innerSet=" + this.b + ", canNotKillSet=" + this.c + ", launchers=" + this.d + ", inputMethods=" + this.e + "]";
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     so
 * JD-Core Version:    0.6.2
 */