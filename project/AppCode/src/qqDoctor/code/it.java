import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.format.Time;
import com.tencent.tmsecure.module.network.INetworkInfoDao;
import com.tencent.tmsecure.module.network.NetDataEntity;
import com.tencent.tmsecure.module.network.NetworkInfoEntity;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class it
  implements INetworkInfoDao
{
  protected SharedPreferences a;
  protected SharedPreferences.Editor b;
  protected Context c;
  protected hs d;

  public it(Context paramContext)
  {
    this.c = paramContext;
    this.a = this.c.getSharedPreferences("DevNetworkData", 0);
    this.b = this.a.edit();
    this.d = hs.a();
  }

  protected static String a(ArrayList<it.a> paramArrayList)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    for (int i = 0; i < paramArrayList.size(); i++)
    {
      it.a locala = (it.a)paramArrayList.get(i);
      localStringBuffer.append(locala.a);
      localStringBuffer.append("&");
      localStringBuffer.append(locala.b);
      localStringBuffer.append("&");
      localStringBuffer.append(locala.c);
      localStringBuffer.append(",");
    }
    if (paramArrayList.size() == 0);
    for (String str = null; ; str = localStringBuffer.toString())
      return str;
  }

  private void a(boolean paramBoolean, String paramString)
  {
    Date localDate = new Date();
    int i = localDate.getYear();
    int j = localDate.getMonth();
    ArrayList localArrayList = a(this.a.getString(paramString, ""));
    for (int k = 0; ; k++)
    {
      int m = localArrayList.size();
      int n = 0;
      if (k < m)
      {
        it.a locala2 = (it.a)localArrayList.get(k);
        if ((locala2.a == i) && (locala2.b == j))
        {
          locala2.c = 0L;
          n = 1;
        }
      }
      else
      {
        if (n == 0)
        {
          it.a locala1 = new it.a();
          locala1.a = i;
          locala1.b = j;
          locala1.c = 0L;
          localArrayList.add(locala1);
        }
        String str = a(localArrayList);
        this.b.putString(paramString, str).commit();
        return;
      }
    }
  }

  private boolean b(String paramString)
  {
    Date localDate = new Date();
    int i = localDate.getYear();
    int j = localDate.getMonth();
    ArrayList localArrayList = a(this.a.getString(paramString, ""));
    int k = 0;
    boolean bool1;
    if (k < localArrayList.size())
    {
      it.a locala = (it.a)localArrayList.get(k);
      if ((locala.a == i) && (locala.b == j))
      {
        boolean bool2 = locala.c < 0L;
        bool1 = false;
        if (bool2);
      }
    }
    while (true)
    {
      return bool1;
      k++;
      break;
      bool1 = true;
    }
  }

  public final int a(int paramInt)
  {
    List localList = b(paramInt);
    if ((localList == null) || (localList.isEmpty()))
    {
      i = 0;
      return i;
    }
    Iterator localIterator = localList.iterator();
    int i = 0;
    label33: int m;
    if (localIterator.hasNext())
    {
      long l = ((Long)localIterator.next()).longValue();
      Time localTime = new Time();
      localTime.set(l);
      int j = localTime.year;
      int k = localTime.month;
      localTime.set(System.currentTimeMillis());
      if ((j != localTime.year) || (k != localTime.month))
        break label135;
      m = 1;
      label119: if (m == 0)
        break label141;
    }
    label135: label141: for (int n = i + 1; ; n = i)
    {
      i = n;
      break label33;
      break;
      m = 0;
      break label119;
    }
  }

  protected ContentValues a(NetworkInfoEntity paramNetworkInfoEntity)
  {
    return null;
  }

  protected final ArrayList<it.a> a(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    if ((paramString == null) || (paramString.equals("")))
    {
      it.a locala1 = new it.a();
      locala1.a = 0L;
      locala1.b = 0L;
      locala1.c = 0L;
      localArrayList.add(locala1);
    }
    while (true)
    {
      return localArrayList;
      int i = paramString.indexOf(",");
      while (i != -1)
      {
        String str1 = paramString.substring(0, i);
        int j = str1.indexOf("&");
        long l1 = Long.parseLong(str1.substring(0, j));
        String str2 = str1.substring(j + 1);
        int k = str2.indexOf("&");
        long l2 = Long.parseLong(str2.substring(0, k));
        long l3 = Long.parseLong(str2.substring(k + 1));
        it.a locala2 = new it.a();
        locala2.a = l1;
        locala2.b = l2;
        locala2.c = l3;
        localArrayList.add(locala2);
        if (i < -1 + paramString.length())
        {
          paramString = paramString.substring(i + 1);
          i = paramString.indexOf(",");
        }
        else
        {
          i = -1;
        }
      }
    }
  }

  public final void a(int paramInt, long paramLong)
  {
    List localList = b(paramInt);
    if (localList.size() == 0)
      this.b.putString("show_tips_times_pre_fix" + paramInt, String.valueOf(paramLong)).commit();
    while (true)
    {
      return;
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(String.valueOf(paramLong));
      for (int i = 0; (i < 4) && (i < localList.size()); i++)
      {
        localStringBuilder.append("|");
        localStringBuilder.append(localList.get(i));
      }
      this.b.putString("show_tips_times_pre_fix" + paramInt, localStringBuilder.toString()).commit();
    }
  }

  public final void a(long paramLong)
  {
    this.b.putLong("lastset_used_for_month_date", paramLong).commit();
  }

  public final void a(boolean paramBoolean)
  {
    this.b.putBoolean("is_force_guide", paramBoolean).commit();
  }

  public final void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    this.b.putString("traffic_limit_is_wrong", paramBoolean1 + "|" + paramBoolean2).commit();
  }

  public final boolean a()
  {
    return b("str_is_warning_month_will");
  }

  public final List<Long> b(int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    String str = this.a.getString("show_tips_times_pre_fix" + paramInt, null);
    ff.a("kfc", "tips times str = " + str);
    if ((str == null) || ("".equals(str)));
    while (true)
    {
      return localArrayList;
      String[] arrayOfString = str.split("\\|");
      int i = arrayOfString.length;
      for (int j = 0; j < i; j++)
        localArrayList.add(Long.valueOf(Long.parseLong(arrayOfString[j])));
    }
  }

  public final void b()
  {
    a(false, "str_is_warning_month_will");
  }

  public final void b(boolean paramBoolean)
  {
    this.b.putBoolean("show_warning_tips", paramBoolean).commit();
  }

  public final void b(boolean paramBoolean1, boolean paramBoolean2)
  {
    this.b.putString("no_sms_from_operator", paramBoolean1 + "|" + paramBoolean2).commit();
  }

  public final void c(boolean paramBoolean)
  {
    this.b.putBoolean("traffic_auto_adjust_used", paramBoolean).commit();
  }

  public final boolean c()
  {
    return b("str_is_warning_month_out");
  }

  public void clearAll()
  {
  }

  public final void d()
  {
    a(false, "str_is_warning_month_out");
  }

  public final void d(boolean paramBoolean)
  {
    this.b.putBoolean("traffic_auto_adjust_flag", paramBoolean).commit();
    if (paramBoolean)
      nd.a().a(26091);
  }

  public final void e(boolean paramBoolean)
  {
    this.b.putBoolean("show_suspession_traffic_window", paramBoolean).commit();
    if (!paramBoolean)
      nd.a().a(201);
    this.b.putBoolean("appear_suspession_traffic_window", true).commit();
  }

  public final boolean e()
  {
    return this.a.getBoolean("network_ever_open", true);
  }

  public final void f()
  {
    this.b.putBoolean("network_ever_open", false).commit();
  }

  public final void f(boolean paramBoolean)
  {
    this.b.putBoolean("appear_suspession_traffic_window", paramBoolean).commit();
  }

  public final void g(boolean paramBoolean)
  {
    this.b.putBoolean("close_network_connection_when_run_out", paramBoolean).commit();
  }

  public final boolean g()
  {
    return this.a.getBoolean("is_force_guide", false);
  }

  public ArrayList<NetworkInfoEntity> getAll()
  {
    return null;
  }

  public int getClosingDayForMonth()
  {
    return this.a.getInt("gprs_closing_date", 1);
  }

  public NetDataEntity getLastNetDataEntity()
  {
    return null;
  }

  public NetworkInfoEntity getSystemTimeChange(Date paramDate)
  {
    return null;
  }

  public NetworkInfoEntity getTodayNetworkInfoEntity()
  {
    return null;
  }

  public long getTotalForMonth()
  {
    return 0L;
  }

  public long getUsedForMonth()
  {
    return 0L;
  }

  public final boolean h()
  {
    return this.a.getBoolean("show_warning_tips", true);
  }

  public final boolean i()
  {
    return this.a.getBoolean("traffic_auto_adjust_used", false);
  }

  public void insert(NetworkInfoEntity paramNetworkInfoEntity)
  {
  }

  public final boolean j()
  {
    return this.a.getBoolean("traffic_auto_adjust_flag", false);
  }

  public final void k()
  {
    this.b.putBoolean("traffic_auto_adjust_upgrade_hint_flag", false).commit();
  }

  public final boolean l()
  {
    return this.a.getBoolean("traffic_auto_adjust_upgrade_hint_flag", true);
  }

  public final boolean m()
  {
    SharedPreferences localSharedPreferences = this.a;
    di.b();
    return localSharedPreferences.getBoolean("show_suspession_traffic_window", false);
  }

  public final boolean n()
  {
    return this.a.getBoolean("appear_suspession_traffic_window", true);
  }

  public final boolean o()
  {
    return this.a.getBoolean("close_network_connection_when_run_out", false);
  }

  public final long p()
  {
    return this.a.getLong("lastset_used_for_month_date", -1L);
  }

  public final void q()
  {
    this.b.putString("show_tips_times_pre_fix1", "").commit();
  }

  public final boolean[] r()
  {
    boolean[] arrayOfBoolean = { 0, 0 };
    String str = this.a.getString("traffic_limit_is_wrong", null);
    if ((str == null) || ("".equals(str)));
    while (true)
    {
      return arrayOfBoolean;
      try
      {
        String[] arrayOfString = str.split("\\|");
        if (arrayOfString.length == 2)
        {
          arrayOfBoolean[0] = Boolean.parseBoolean(arrayOfString[0]);
          arrayOfBoolean[1] = Boolean.parseBoolean(arrayOfString[1]);
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
  }

  public void resetToDayNetworkInfoEntity()
  {
  }

  public final boolean[] s()
  {
    boolean[] arrayOfBoolean = { 0, 0 };
    String str = this.a.getString("no_sms_from_operator", null);
    if ((str == null) || ("".equals(str)));
    while (true)
    {
      return arrayOfBoolean;
      try
      {
        String[] arrayOfString = str.split("\\|");
        if (arrayOfString.length == 2)
        {
          arrayOfBoolean[0] = Boolean.parseBoolean(arrayOfString[0]);
          arrayOfBoolean[1] = Boolean.parseBoolean(arrayOfString[1]);
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
  }

  public void setClosingDayForMonth(int paramInt)
  {
    this.b.putInt("gprs_closing_date", paramInt).commit();
  }

  public void setLastNetDataEntity(NetDataEntity paramNetDataEntity)
  {
  }

  public void setTodayNetworkInfoEntity(NetworkInfoEntity paramNetworkInfoEntity)
  {
  }

  public void setTotalForMonth(long paramLong)
  {
  }

  public void setUsedForMonth(long paramLong)
  {
    ff.a("fuck", "NetworkDao, flows = " + paramLong);
  }

  public final class a
  {
    public long a;
    public long b;
    public long c;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     it
 * JD-Core Version:    0.6.2
 */