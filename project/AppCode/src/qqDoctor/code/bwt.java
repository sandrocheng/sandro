import java.io.File;
import java.lang.reflect.Method;

final class bwt
{
  boolean a;
  boolean b;
  private Method c;
  private Method d;

  public bwt()
  {
    try
    {
      Class localClass = Class.forName("android.net.TrafficStats");
      Class[] arrayOfClass1 = new Class[1];
      arrayOfClass1[0] = Integer.TYPE;
      this.c = localClass.getDeclaredMethod("getUidRxBytes", arrayOfClass1);
      Class[] arrayOfClass2 = new Class[1];
      arrayOfClass2[0] = Integer.TYPE;
      this.d = localClass.getDeclaredMethod("getUidTxBytes", arrayOfClass2);
      this.a = true;
      if (!this.a)
        this.b = new File("/proc/uid_stat").exists();
      return;
    }
    catch (Exception localException)
    {
      while (true)
      {
        this.a = false;
        localException.printStackTrace();
      }
    }
  }

  private static long a(int paramInt, String paramString1, String paramString2)
  {
    long l = -1L;
    File localFile1 = new File("/proc/uid_stat/" + paramInt + "/" + paramString1);
    File localFile2 = new File("/proc/uid_stat/" + paramInt + "/" + paramString2);
    if (localFile1.exists())
    {
      String[] arrayOfString2 = btd.b(localFile1);
      if ((arrayOfString2 != null) && (arrayOfString2.length > 0))
        l = Long.parseLong(arrayOfString2[0]);
    }
    String[] arrayOfString1;
    if (localFile2.exists())
    {
      arrayOfString1 = btd.b(localFile2);
      if ((arrayOfString1 != null) && (arrayOfString1.length > 0))
        if (!localFile1.exists())
          break label152;
    }
    label152: for (l += Long.parseLong(arrayOfString1[0]); ; l = Long.parseLong(arrayOfString1[0]))
      return l;
  }

  public final long a(int paramInt)
  {
    long l1 = -1L;
    if (this.a);
    while (true)
    {
      try
      {
        Method localMethod = this.c;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(paramInt);
        long l2 = Long.valueOf(localMethod.invoke(null, arrayOfObject).toString()).longValue();
        l1 = l2;
        return l1;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        continue;
      }
      if (this.b)
        l1 = a(paramInt, "tcp_rcv", "udp_rcv");
    }
  }

  public final long b(int paramInt)
  {
    long l1 = -1L;
    if (this.a);
    while (true)
    {
      try
      {
        Method localMethod = this.d;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(paramInt);
        long l2 = Long.valueOf(localMethod.invoke(null, arrayOfObject).toString()).longValue();
        l1 = l2;
        return l1;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        continue;
      }
      if (this.b)
        l1 = a(paramInt, "tcp_snd", "udp_snd");
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bwt
 * JD-Core Version:    0.6.2
 */