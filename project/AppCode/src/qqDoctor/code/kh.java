import com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class kh
  implements cb
{
  private hq a = new hq(0);
  private hq b = new hq(1);

  private static lf c(cc paramcc)
  {
    if (paramcc != null)
    {
      if (paramcc.c.size() <= 0)
        break label32;
      paramcc.d = Integer.valueOf(0);
    }
    label32: for (int i = 1; i == 0; i = 0)
    {
      locallf = null;
      return locallf;
    }
    lf locallf = new lf();
    label45: int j;
    label64: cp localcp;
    while (paramcc.d.intValue() < paramcc.c.size())
    {
      j = 0;
      if (j != 0)
        break label133;
      localcp = paramcc.b();
      if (localcp != null)
      {
        if (!"TEL".equals(localcp.a[0].toString()))
          break label135;
        locallf.phonenum = localcp.a[2].toString();
      }
    }
    while (true)
    {
      paramcc.d = Integer.valueOf(1 + paramcc.d.intValue());
      break label45;
      j = 1;
      break label64;
      label133: break;
      label135: if ("N".equals(localcp.a[0].toString()))
      {
        locallf.name = localcp.a[2].toString();
      }
      else if ("STATUS".equals(localcp.a[0].toString()))
      {
        String str2 = localcp.a[2].toString();
        if (str2 != null)
          switch (Integer.valueOf(str2).intValue())
          {
          default:
            break;
          case 0:
            locallf.enableForCalling = false;
            locallf.enableForSMS = false;
            break;
          case 1:
            locallf.enableForCalling = true;
            locallf.enableForSMS = false;
            break;
          case 2:
            locallf.enableForCalling = false;
            locallf.enableForSMS = true;
            break;
          case 3:
            locallf.enableForCalling = true;
            locallf.enableForSMS = true;
            break;
          }
      }
      else if ("TYPE".equals(localcp.a[0].toString()))
      {
        String str1 = localcp.a[2].toString();
        if (str1 != null)
          locallf.b = Integer.valueOf(str1).intValue();
      }
    }
  }

  public final int a()
  {
    return this.a.c() + this.b.c();
  }

  public final cb.a a(String paramString)
  {
    cb.a locala;
    if (paramString == null)
      locala = cb.a.a;
    while (true)
    {
      return locala;
      boolean bool = this.a.c(this.a.a(Integer.valueOf(paramString).intValue()));
      if (!bool)
        this.b.c(this.b.a(Integer.valueOf(paramString).intValue()));
      if (bool)
        locala = cb.a.b;
      else
        locala = cb.a.a;
    }
  }

  public final String a(cc paramcc)
  {
    String str = null;
    if (paramcc != null)
    {
      int i = paramcc.c.size();
      int j = 0;
      if (i > 0)
      {
        paramcc.d = Integer.valueOf(0);
        j = 1;
      }
      str = null;
      if (j != 0)
        break label41;
    }
    label41: lf locallf;
    do
    {
      return str;
      locallf = c(paramcc);
      str = null;
    }
    while (locallf == null);
    long l = 0L;
    if (locallf.b == 0)
      l = this.a.a(locallf);
    while (true)
    {
      str = String.valueOf(l);
      break;
      if (locallf.b == 1)
        l = this.b.a(locallf);
    }
  }

  public final List<String> a(String[] paramArrayOfString, boolean paramBoolean)
  {
    ArrayList localArrayList = new ArrayList();
    List localList1 = this.a.a();
    if (localList1 != null)
    {
      Iterator localIterator2 = localList1.iterator();
      while (localIterator2.hasNext())
        localArrayList.add(String.valueOf(((lf)localIterator2.next()).id));
    }
    List localList2 = this.b.a();
    if (localList2 != null)
    {
      Iterator localIterator1 = localList2.iterator();
      while (localIterator1.hasNext())
        localArrayList.add(String.valueOf(((lf)localIterator1.next()).id));
    }
    return localArrayList;
  }

  public final boolean a(ArrayList<cc> paramArrayList, ArrayList<String> paramArrayList1, int[] paramArrayOfInt)
  {
    int i = paramArrayList.size();
    int j = 0;
    if (j < i)
    {
      String str = a((cc)paramArrayList.get(j));
      paramArrayList1.add(str);
      if (str == null)
        paramArrayOfInt[j] = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED.toInt();
      while (true)
      {
        j++;
        break;
        paramArrayOfInt[j] = ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_NONE.toInt();
      }
    }
    return true;
  }

  public final cb.a b(cc paramcc)
  {
    lf locallf = c(paramcc);
    cb.a locala;
    if (locallf != null)
    {
      boolean bool = this.a.b(locallf);
      if (!bool)
        bool = this.b.b(locallf);
      if (bool)
        locala = cb.a.b;
    }
    while (true)
    {
      return locala;
      locala = cb.a.a;
      continue;
      locala = cb.a.a;
    }
  }

  public final boolean b(String paramString)
  {
    lf locallf = this.a.a(Integer.valueOf(paramString).intValue());
    if (locallf == null)
      locallf = this.b.a(Integer.valueOf(paramString).intValue());
    if (locallf != null);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final cc c(String paramString)
  {
    int i = 1;
    lf locallf1 = this.a.a(Integer.valueOf(paramString).intValue());
    if (locallf1 == null);
    for (lf locallf2 = this.b.a(Integer.valueOf(paramString).intValue()); ; locallf2 = locallf1)
    {
      Object localObject = null;
      if (locallf2 != null)
      {
        localObject = null;
        if (locallf2 != null);
      }
      else
      {
        return localObject;
      }
      cm localcm = new cm();
      localcm.b = String.valueOf(locallf2.id);
      String str1 = locallf2.phonenum;
      if (str1 != null)
      {
        cp localcp1 = new cp();
        localcp1.a[0].append("TEL");
        if (str1 != null)
          localcp1.a[2].append(str1);
        if (localcp1 != null)
          localcm.c.add(localcp1);
      }
      String str2 = locallf2.name;
      if (str2 != null)
      {
        cp localcp2 = new cp();
        localcp2.a[0].append("N");
        if (str2 != null)
          localcp2.a[2].append(str2);
        if (localcp2 != null)
          localcm.c.add(localcp2);
      }
      int j;
      if (locallf2.enableForCalling)
      {
        j = i;
        label225: if (!locallf2.enableForSMS)
          break label389;
      }
      while (true)
      {
        String str3 = String.valueOf(j + i * 2);
        if (str3 != null)
        {
          cp localcp3 = new cp();
          localcp3.a[0].append("STATUS");
          if (str3 != null)
            localcp3.a[2].append(str3);
          if (localcp3 != null)
            localcm.c.add(localcp3);
        }
        String str4 = String.valueOf(locallf2.b);
        if (str4 != null)
        {
          cp localcp4 = new cp();
          localcp4.a[0].append("TYPE");
          if (str4 != null)
            localcp4.a[2].append(str4);
          if (localcp4 != null)
            localcm.c.add(localcp4);
        }
        localObject = localcm;
        break;
        j = 0;
        break label225;
        label389: i = 0;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     kh
 * JD-Core Version:    0.6.2
 */