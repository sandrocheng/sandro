import com.tencent.powermanager.PowerManagerApplication;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class an
{
  private static an a = null;
  private String[] b;
  private int[] c;
  private int d;
  private int e;
  private int f;

  public static an a()
  {
    try
    {
      if (a == null)
      {
        PowerManagerApplication.a();
        a = new an();
      }
      an localan = a;
      return localan;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void a(int paramInt, boolean paramBoolean)
    throws IllegalArgumentException
  {
    int j;
    if (paramBoolean)
    {
      int[] arrayOfInt = i();
      int i = arrayOfInt.length;
      j = 0;
      if (j >= i)
        break label191;
      if (arrayOfInt[j] != paramInt);
    }
    label145: label158: label191: for (int k = 1; ; k = 0)
    {
      if (k == 0)
      {
        throw new IllegalArgumentException("the freq is not available!");
        j++;
        break;
      }
      String str1 = bj.a("/sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq").trim();
      int m;
      String str2;
      if ((str1 == null) || (str1.length() == 0))
      {
        m = 0;
        if (paramInt >= m)
        {
          str2 = bj.a("/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq").trim();
          if ((str2 != null) && (str2.length() != 0))
            break label145;
        }
      }
      for (int n = 0; ; n = Integer.valueOf(str2).intValue())
      {
        if (paramInt <= n)
          break label158;
        throw new IllegalArgumentException("the freq should not be smaller than the min freq and not be larger than the max freq!");
        m = Integer.valueOf(str1).intValue();
        break;
      }
      gl.a(new String[] { "echo " + paramInt + " > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed" });
      return;
    }
  }

  private boolean b(String paramString)
  {
    String[] arrayOfString = b();
    boolean bool = false;
    if (arrayOfString != null)
    {
      int i = arrayOfString.length;
      bool = false;
      if (i != 0);
    }
    else
    {
      return bool;
    }
    int j = arrayOfString.length;
    for (int k = 0; ; k++)
    {
      bool = false;
      if (k >= j)
        break;
      if (arrayOfString[k].equals(paramString))
      {
        bool = true;
        break;
      }
    }
  }

  public static int c()
  {
    String str = bj.a("/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq").trim();
    if ((str == null) || (str.length() == 0));
    for (int i = 0; ; i = Integer.valueOf(str).intValue())
      return i;
  }

  public static String d()
  {
    String str = bj.a("/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor").trim();
    if ((str == null) || (str.length() == 0))
      str = null;
    return str;
  }

  public static int e()
  {
    String str = bj.a("/sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq").trim();
    if ((str == null) || (str.length() == 0));
    for (int i = 0; ; i = Integer.valueOf(str).intValue())
      return i;
  }

  public static String[] g()
  {
    String str1 = bj.a("/sys/devices/system/cpu/online").trim();
    String[] arrayOfString = null;
    if (str1 != null)
    {
      int i = str1.length();
      arrayOfString = null;
      if (i > 0)
      {
        int j = str1.indexOf("-");
        Object localObject = str1;
        while (j != -1)
        {
          int k = Integer.parseInt(((String)localObject).substring(j + 1, j + 2));
          int m = Integer.parseInt(((String)localObject).substring(j - 1, j));
          StringBuffer localStringBuffer = new StringBuffer(m + ",");
          int n = m;
          while (true)
          {
            n++;
            if (n >= k)
              break;
            localStringBuffer.append(n + ",");
          }
          localStringBuffer.append(k);
          String str2 = ((String)localObject).replaceFirst(m + "-" + k, localStringBuffer.toString());
          int i1 = str2.indexOf("-");
          localObject = str2;
          j = i1;
        }
        arrayOfString = ((String)localObject).split(",");
      }
    }
    return arrayOfString;
  }

  public static void h()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add("chmod 666 /sys/devices/system/cpu/kernel_max");
    localArrayList.add("chmod 666 /sys/devices/system/cpu/online");
    localArrayList.add("chmod 777 /sys/devices/system/cpu/cpu0/cpufreq/");
    localArrayList.add("chmod 666 /sys/devices/system/cpu/cpu0/cpufreq/*");
    localArrayList.add("chmod 777 /sys/devices/system/cpu/cpu0/cpufreq/stats/");
    localArrayList.add("chmod 666 /sys/devices/system/cpu/cpu0/cpufreq/stats/*");
    gl.a(localArrayList);
  }

  private int[] i()
  {
    int i = 0;
    while (true)
    {
      int j;
      int k;
      String str3;
      String str4;
      int i6;
      try
      {
        String str2;
        if (this.c == null)
        {
          String str1 = bj.a("/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies").trim();
          String[] arrayOfString1;
          if (str1.length() > 0)
          {
            String[] arrayOfString2 = str1.split(" ");
            this.c = new int[arrayOfString2.length];
            if (i < arrayOfString2.length)
            {
              this.c[i] = Integer.valueOf(arrayOfString2[i]).intValue();
              i++;
              continue;
            }
          }
          else
          {
            arrayOfString1 = bj.b("/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state");
            if ((arrayOfString1 != null) && (arrayOfString1.length > 0))
            {
              this.c = new int[arrayOfString1.length];
              if (i < arrayOfString1.length)
              {
                this.c[i] = Integer.valueOf(arrayOfString1[i].split(" ")[0]).intValue();
                i++;
                continue;
              }
            }
            else
            {
              if (this.e == 0)
              {
                String str7 = bj.a("/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq").trim();
                if ((str7 != null) && (str7.length() > 0))
                  this.e = Integer.valueOf(str7).intValue();
              }
              j = this.e;
              if (this.d == 0)
              {
                String str6 = bj.a("/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq").trim();
                if ((str6 != null) && (str6.length() > 0))
                  this.d = Integer.valueOf(str6).intValue();
              }
              k = this.d;
              str2 = bj.a("/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq").trim();
              if (str2 == null)
                break label719;
              if (str2.length() != 0)
                continue;
              break label719;
              this.c = localObject2;
            }
          }
        }
        int[] arrayOfInt1 = this.c;
        return arrayOfInt1;
        m = Integer.valueOf(str2).intValue();
        break label722;
        ArrayList localArrayList = new ArrayList(6);
        localArrayList.add(Integer.valueOf(j));
        localArrayList.add(Integer.valueOf(k));
        if ((m != j) && (m != k))
          localArrayList.add(Integer.valueOf(m));
        str3 = bj.a("/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor").trim();
        if (str3 == null)
          break label749;
        if (str3.length() != 0)
          break label712;
        break label749;
        if ((!"userspace".equals(localObject3)) && (b() != null) && (b("userspace")))
          a("userspace");
        str4 = bj.a("/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor").trim();
        localObject4 = null;
        if (str4 != null)
        {
          int i9 = str4.length();
          localObject4 = null;
          if (i9 != 0)
            break label705;
        }
        if ("userspace".equals(localObject4))
        {
          int i1 = (k + j) / 2;
          int i2 = 1;
          int i3 = i1;
          int i4 = 0;
          int i5 = i4 + 1;
          if (i4 < 3)
          {
            a(i3, false);
            String str5 = bj.a("/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq").trim();
            if (str5 == null)
              break label755;
            if (str5.length() == 0)
            {
              break label755;
              Iterator localIterator = localArrayList.iterator();
              if (!localIterator.hasNext())
                break label699;
              if (((Integer)localIterator.next()).intValue() != i6)
                continue;
              i7 = 1;
              if (i7 == 0)
                localArrayList.add(Integer.valueOf(i6));
              if (i2 == 0)
                continue;
              i3 = (k + i6) / 2;
              i4 = i5;
              i2 = 0;
              continue;
            }
            i6 = Integer.valueOf(str5).intValue();
            continue;
            int i8 = (j + i6) / 2;
            i2 = 1;
            i3 = i8;
            i4 = i5;
            continue;
          }
          a((String)localObject3);
        }
        else
        {
          int n = localArrayList.size();
          int[] arrayOfInt2 = new int[n];
          if (i < n)
          {
            arrayOfInt2[i] = ((Integer)localArrayList.get(i)).intValue();
            i++;
            continue;
          }
          localObject2 = arrayOfInt2;
          continue;
        }
      }
      finally
      {
      }
      label699: int i7 = 0;
      continue;
      label705: Object localObject4 = str4;
      continue;
      label712: Object localObject3 = str3;
      continue;
      label719: int m = 0;
      label722: Object localObject2 = null;
      if (j != 0)
      {
        localObject2 = null;
        if (k != 0)
          if (m == 0)
          {
            localObject2 = null;
            continue;
            label749: localObject3 = null;
            continue;
            label755: i6 = 0;
          }
      }
    }
  }

  public final void a(int paramInt)
    throws IllegalArgumentException
  {
    a(paramInt, true);
  }

  public final void a(String paramString)
    throws IllegalArgumentException
  {
    if (this.b == null)
      b();
    if (!b(paramString))
      throw new IllegalArgumentException("the governor is unavailable!");
    gl.a(new String[] { "echo " + paramString + " > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor" });
  }

  public final String[] b()
  {
    try
    {
      if (this.b == null)
      {
        String str = bj.a("/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors").trim();
        if ((str != null) && (str.length() > 0))
          this.b = str.split(" ");
      }
      String[] arrayOfString = this.b;
      return arrayOfString;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final int f()
  {
    if (this.f == 0)
    {
      String str = bj.a("/sys/devices/system/cpu/kernel_max").trim();
      if ((str != null) && (str.length() > 0))
        this.f = (1 + Integer.valueOf(str).intValue());
    }
    return this.f;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     an
 * JD-Core Version:    0.6.2
 */