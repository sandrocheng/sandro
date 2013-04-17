package com.tencent.tmsecure.module.optimize;

import ay;
import btd;
import bwy;
import com.tencent.tmsecure.utils.ScriptHelper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.PriorityQueue;

public class CpuHelperImpl
  implements ICpuHelper
{
  private int a = 0;
  private String[] b;
  private int[] c;
  private int d;
  private int e;
  private int f;

  CpuHelperImpl()
  {
    if (ScriptHelper.providerSupportCpuRelative());
    while (true)
    {
      return;
      ScriptHelper.canRunAtRoot(new bwy());
    }
  }

  private static PriorityQueue<Integer> a(String paramString)
  {
    PriorityQueue localPriorityQueue = new PriorityQueue();
    String[] arrayOfString1 = paramString.split(",");
    if (arrayOfString1 == null)
      return localPriorityQueue;
    int i = arrayOfString1.length;
    int j = 0;
    label27: String[] arrayOfString2;
    if (j < i)
    {
      arrayOfString2 = arrayOfString1[j].split("-");
      if (arrayOfString2 != null)
      {
        if (arrayOfString2.length != 1)
          break label77;
        localPriorityQueue.add(Integer.valueOf(Integer.parseInt(arrayOfString2[0])));
      }
    }
    while (true)
    {
      j++;
      break label27;
      break;
      label77: if (arrayOfString2.length == 2)
      {
        int k = Integer.parseInt(arrayOfString2[0]);
        int m = Integer.parseInt(arrayOfString2[1]);
        while (k <= m)
        {
          localPriorityQueue.add(Integer.valueOf(k));
          k++;
        }
      }
    }
  }

  private boolean a(int paramInt)
  {
    int[] arrayOfInt = getScalingAvaliableFrequencies();
    int i = arrayOfInt.length;
    for (int j = 0; ; j++)
    {
      boolean bool = false;
      if (j >= i);
      while (true)
      {
        return bool;
        if (arrayOfInt[j] != paramInt)
          break;
        bool = true;
      }
    }
  }

  private boolean b(String paramString)
  {
    String[] arrayOfString = getScalingAvaliableGovernors();
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

  public int getAvailableCpus()
  {
    PriorityQueue localPriorityQueue;
    Iterator localIterator;
    int i;
    if (this.a <= 0)
    {
      localPriorityQueue = a(btd.d("/sys/devices/system/cpu/present").trim());
      localIterator = a(btd.d("/sys/devices/system/cpu/possible").trim()).iterator();
      i = 0;
    }
    while (true)
    {
      if (!localIterator.hasNext())
      {
        this.a = i;
        return this.a;
      }
      if (localPriorityQueue.contains(Integer.valueOf(((Integer)localIterator.next()).intValue())))
        i++;
    }
  }

  public int getCpuInfoMaxFreq()
  {
    if (this.d == 0)
      if (!ScriptHelper.providerSupportCpuRelative())
        break label30;
    label30: String str;
    for (this.d = ScriptHelper.provider$24edfebd().c(); ; this.d = Integer.valueOf(str).intValue())
      do
      {
        return this.d;
        str = btd.d("/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq").trim();
      }
      while ((str == null) || (str.length() <= 0));
  }

  public int getCpuInfoMinFreq()
  {
    if (this.e == 0)
      if (!ScriptHelper.providerSupportCpuRelative())
        break label30;
    label30: String str;
    for (this.e = ScriptHelper.provider$24edfebd().c(); ; this.e = Integer.valueOf(str).intValue())
      do
      {
        return this.e;
        str = btd.d("/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq").trim();
      }
      while ((str == null) || (str.length() <= 0));
  }

  public int getKernelMax()
  {
    if (ScriptHelper.providerSupportCpuRelative());
    for (int i = ScriptHelper.provider$24edfebd().f(); ; i = this.f)
    {
      return i;
      if (this.f == 0)
      {
        String str = btd.d("/sys/devices/system/cpu/kernel_max").trim();
        if ((str != null) && (str.length() > 0))
          this.f = (1 + Integer.valueOf(str).intValue());
      }
    }
  }

  public String[] getOnlineCpus()
  {
    String[] arrayOfString;
    if (ScriptHelper.providerSupportCpuRelative())
      arrayOfString = ScriptHelper.provider$24edfebd().e();
    int j;
    Object localObject;
    while (true)
    {
      return arrayOfString;
      String str1 = btd.d("/sys/devices/system/cpu/online").trim();
      arrayOfString = null;
      if (str1 != null)
      {
        int i = str1.length();
        arrayOfString = null;
        if (i > 0)
        {
          j = str1.indexOf("-");
          localObject = str1;
          if (j != -1)
            break;
          arrayOfString = ((String)localObject).split(",");
        }
      }
    }
    int k = Integer.parseInt(((String)localObject).substring(j + 1, j + 2));
    int m = Integer.parseInt(((String)localObject).substring(j - 1, j));
    StringBuffer localStringBuffer = new StringBuffer(m + ",");
    int n = m;
    while (true)
    {
      n++;
      if (n >= k)
      {
        localStringBuffer.append(k);
        String str2 = ((String)localObject).replaceFirst(m + "-" + k, localStringBuffer.toString());
        int i1 = str2.indexOf("-");
        localObject = str2;
        j = i1;
        break;
      }
      localStringBuffer.append(n + ",");
    }
  }

  public int[] getScalingAvaliableFrequencies()
  {
    int i = 0;
    while (true)
    {
      int j;
      int k;
      int m;
      try
      {
        String[] arrayOfString3;
        if (this.c == null)
        {
          if (!ScriptHelper.providerSupportCpuRelative())
            continue;
          arrayOfString3 = ScriptHelper.provider$24edfebd().e();
          this.c = new int[arrayOfString3.length];
          if (i < arrayOfString3.length);
        }
        else
        {
          int[] arrayOfInt1 = this.c;
          return arrayOfInt1;
        }
        this.c[i] = Integer.valueOf(arrayOfString3[i]).intValue();
        i++;
        continue;
        String str1 = btd.d("/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies").trim();
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
          continue;
        }
        String[] arrayOfString1 = btd.e("/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state");
        if ((arrayOfString1 != null) && (arrayOfString1.length > 0))
        {
          this.c = new int[arrayOfString1.length];
          if (i < arrayOfString1.length)
          {
            this.c[i] = Integer.valueOf(arrayOfString1[i].split(" ")[0]).intValue();
            i++;
            continue;
          }
          continue;
        }
        j = getCpuInfoMinFreq();
        k = getCpuInfoMaxFreq();
        m = getScalingCurFreq();
        if ((j == 0) || (k == 0))
          break label574;
        if (m == 0)
        {
          break label574;
          this.c = localObject2;
          continue;
        }
      }
      finally
      {
      }
      ArrayList localArrayList = new ArrayList(6);
      localArrayList.add(Integer.valueOf(j));
      localArrayList.add(Integer.valueOf(k));
      if ((m != j) && (m != k))
        localArrayList.add(Integer.valueOf(m));
      String str2 = getScalingGovernor();
      if ((!"userspace".equals(str2)) && (getScalingAvaliableGovernors() != null) && (b("userspace")))
        setScalingGovernor("userspace");
      int i6;
      int n;
      int[] arrayOfInt2;
      int i1;
      if ("userspace".equals(getScalingGovernor()))
      {
        int i2 = (k + j) / 2;
        i3 = 1;
        i4 = i2;
        i5 = 0;
        i6 = i5 + 1;
        if (i5 >= 3)
          setScalingGovernor(str2);
      }
      else
      {
        n = localArrayList.size();
        arrayOfInt2 = new int[n];
        i1 = 0;
        break label580;
      }
      setScalingFreq(i4, false);
      i7 = getScalingCurFreq();
      localIterator = localArrayList.iterator();
      label446: if (!localIterator.hasNext());
      for (i8 = 0; ; i8 = 1)
      {
        if (i8 == 0)
          localArrayList.add(Integer.valueOf(i7));
        if (i3 == 0)
          break label525;
        i4 = (k + i7) / 2;
        i5 = i6;
        i3 = 0;
        break;
        if (((Integer)localIterator.next()).intValue() != i7)
          break label446;
      }
      label525: i9 = (j + i7) / 2;
      int i3 = 1;
      int i4 = i9;
      int i5 = i6;
      label574: label580: 
      while (i1 < n)
      {
        int i7;
        Iterator localIterator;
        int i8;
        int i9;
        arrayOfInt2[i1] = ((Integer)localArrayList.get(i1)).intValue();
        i1++;
        continue;
        localObject2 = null;
        break;
      }
      Object localObject2 = arrayOfInt2;
    }
  }

  public String[] getScalingAvaliableGovernors()
  {
    try
    {
      if (this.b == null)
        if (!ScriptHelper.providerSupportCpuRelative())
          break label36;
      label36: String str;
      for (this.b = ScriptHelper.provider$24edfebd().e(); ; this.b = str.split(" "))
        do
        {
          String[] arrayOfString = this.b;
          return arrayOfString;
          str = btd.d("/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors").trim();
        }
        while ((str == null) || (str.length() <= 0));
    }
    finally
    {
    }
  }

  public int getScalingCurFreq()
  {
    int i;
    if (ScriptHelper.providerSupportCpuRelative())
      i = ScriptHelper.provider$24edfebd().c();
    while (true)
    {
      return i;
      String str = btd.d("/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq").trim();
      if ((str == null) || (str.length() == 0))
        i = 0;
      else
        i = Integer.valueOf(str).intValue();
    }
  }

  public String getScalingGovernor()
  {
    if (ScriptHelper.providerSupportCpuRelative());
    for (String str = ScriptHelper.provider$24edfebd().d(); ; str = null)
      do
      {
        return str;
        str = btd.d("/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor").trim();
      }
      while ((str != null) && (str.length() != 0));
  }

  public int getScalingMaxFreq()
  {
    int i;
    if (ScriptHelper.providerSupportCpuRelative())
      i = ScriptHelper.provider$24edfebd().c();
    while (true)
    {
      return i;
      String str = btd.d("/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq").trim();
      if ((str == null) || (str.length() == 0))
        i = 0;
      else
        i = Integer.valueOf(str).intValue();
    }
  }

  public int getScalingMinFreq()
  {
    int i;
    if (ScriptHelper.providerSupportCpuRelative())
      i = ScriptHelper.provider$24edfebd().c();
    while (true)
    {
      return i;
      String str = btd.d("/sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq").trim();
      if ((str == null) || (str.length() == 0))
        i = 0;
      else
        i = Integer.valueOf(str).intValue();
    }
  }

  public void setScalingFreq(int paramInt)
    throws IllegalArgumentException
  {
    setScalingFreq(paramInt, true);
  }

  public void setScalingFreq(int paramInt, boolean paramBoolean)
    throws IllegalArgumentException
  {
    if (ScriptHelper.providerSupportCpuRelative())
      ScriptHelper.provider$24edfebd();
    while (true)
    {
      return;
      if (paramBoolean)
      {
        if (!a(paramInt))
          throw new IllegalArgumentException("the freq is not available!");
        if ((paramInt < getScalingMinFreq()) || (paramInt > getScalingMaxFreq()))
          throw new IllegalArgumentException("the freq should not be smaller than the min freq and not be larger than the max freq!");
      }
      ScriptHelper.runScriptAsRoot(new String[] { "echo " + paramInt + " > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed" });
    }
  }

  public void setScalingGovernor(String paramString)
    throws IllegalArgumentException
  {
    while (true)
    {
      try
      {
        if (ScriptHelper.providerSupportCpuRelative())
        {
          ScriptHelper.provider$24edfebd();
          return;
        }
        if (this.b == null)
          getScalingAvaliableGovernors();
        if (!b(paramString))
          throw new IllegalArgumentException("the governor is unavailable!");
      }
      finally
      {
      }
      ScriptHelper.runScriptAsRoot(new String[] { "echo " + paramString + " > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor" });
    }
  }

  public void setScalingMaxFreq(int paramInt)
    throws IllegalArgumentException
  {
    if (ScriptHelper.providerSupportCpuRelative())
      ScriptHelper.provider$24edfebd();
    while (true)
    {
      return;
      if (!a(paramInt))
        throw new IllegalArgumentException("the max freq is not available!");
      if (paramInt < getScalingMinFreq())
        throw new IllegalArgumentException("the max freq can not be smaller than the min freq!");
      ScriptHelper.runScriptAsRoot(new String[] { "echo " + paramInt + " > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq" });
    }
  }

  public void setScalingMinFreq(int paramInt)
    throws IllegalArgumentException
  {
    if (ScriptHelper.providerSupportCpuRelative())
      ScriptHelper.provider$24edfebd();
    while (true)
    {
      return;
      if (!a(paramInt))
        throw new IllegalArgumentException("the min freq is not available!");
      if (paramInt > getScalingMaxFreq())
        throw new IllegalArgumentException("the min freq can not be larger than the max freq!");
      ScriptHelper.runScriptAsRoot(new String[] { "echo " + paramInt + " > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq" });
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.optimize.CpuHelperImpl
 * JD-Core Version:    0.6.2
 */