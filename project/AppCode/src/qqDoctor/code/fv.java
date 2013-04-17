import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.tencent.tmsecure.utils.StringUtil;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class fv
{
  public ji a;
  public ke b;
  public PackageManager c;
  private String d = "PrivacyLockUtil";
  private ho e;
  private Context f;
  private String[] g = { "com.tencent.qqpimsecure", "com.android.settings" };

  public fv(Context paramContext)
  {
    this.f = paramContext;
    this.e = ho.a();
    this.a = new ji();
    this.b = new ke();
    this.c = paramContext.getPackageManager();
  }

  public final void a()
  {
    try
    {
      if (this.e.co())
        sv.a(this.f).b();
      while (true)
      {
        return;
        sv.a(this.f).a();
      }
    }
    finally
    {
    }
  }

  public final void a(List<PackageInfo> paramList)
  {
    if ((paramList == null) || (paramList.size() == 0));
    while (true)
    {
      return;
      ArrayList localArrayList = new ArrayList();
      List localList = this.a.b();
      Iterator localIterator1 = paramList.iterator();
      while (localIterator1.hasNext())
      {
        PackageInfo localPackageInfo = (PackageInfo)localIterator1.next();
        Iterator localIterator2 = localList.iterator();
        while (localIterator2.hasNext())
        {
          mf localmf = (mf)localIterator2.next();
          if (StringUtil.assertNotNullString(localPackageInfo.packageName).equals(StringUtil.assertNotNullString(localmf.a)))
            localArrayList.add(localPackageInfo);
        }
      }
      paramList.removeAll(localArrayList);
    }
  }

  public final void b(List<PackageInfo> paramList)
  {
    if ((paramList == null) || (paramList.size() == 0));
    while (true)
    {
      return;
      ArrayList localArrayList = new ArrayList();
      List localList = Arrays.asList(this.g);
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        PackageInfo localPackageInfo = (PackageInfo)localIterator.next();
        if (localList.contains(StringUtil.assertNotNullString(localPackageInfo.packageName)))
          localArrayList.add(localPackageInfo);
      }
      paramList.removeAll(localArrayList);
    }
  }

  public final void c(List<? extends mf> paramList)
  {
    long l1 = System.currentTimeMillis();
    if ((paramList == null) || (paramList.size() == 0));
    while (true)
    {
      return;
      try
      {
        Collections.sort(paramList, new fv.a((byte)0));
        label31: long l2 = System.currentTimeMillis();
        new StringBuilder().append(l2 - l1).toString();
      }
      catch (Exception localException)
      {
        break label31;
      }
    }
  }

  final class a
    implements Comparator<mf>
  {
    private a()
    {
    }

    private int a(mf parammf1, mf parammf2)
    {
      int i;
      if (parammf1 == null)
        i = -1;
      while (true)
      {
        return i;
        if (parammf2 == null)
        {
          i = 1;
        }
        else
        {
          int j;
          int k;
          try
          {
            String str1 = parammf1.a;
            String str2 = parammf2.a;
            if (sv.b.containsKey(str1))
            {
              if (!sv.b.containsKey(str2))
                break label218;
              j = ((Integer)sv.b.get(str1)).intValue();
              k = ((Integer)sv.b.get(str2)).intValue();
              if (j <= k)
                break label199;
              i = -1;
              continue;
            }
            if (sv.b.containsKey(str2))
            {
              i = 1;
              continue;
            }
            boolean bool1 = fv.a(parammf1.a);
            boolean bool2 = fv.a(parammf2.a);
            if ((bool1) && (!bool2))
            {
              i = -1;
              continue;
            }
            if ((bool2) && (!bool1))
            {
              i = 1;
              continue;
            }
            i = 0;
          }
          catch (Exception localException)
          {
            i = 0;
          }
          continue;
          label199: if (j < k)
          {
            i = 1;
          }
          else
          {
            i = 0;
            continue;
            label218: i = -1;
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     fv
 * JD-Core Version:    0.6.2
 */