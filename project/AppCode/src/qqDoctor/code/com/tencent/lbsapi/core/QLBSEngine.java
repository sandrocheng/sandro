package com.tencent.lbsapi.core;

import LBSAPIProtocol.Cell;
import LBSAPIProtocol.GPS;
import LBSAPIProtocol.Measure;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings.System;
import android.telephony.CellLocation;
import android.telephony.NeighboringCellInfo;
import android.telephony.TelephonyManager;
import android.telephony.gsm.GsmCellLocation;
import android.text.TextUtils;
import com.tencent.lbsapi.QLBSNotification;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;

public class QLBSEngine
{
  private static final String c = "com.tencent.lbsapi.GPS_SINGLE";
  private static final int d = 5;
  private static final int e = 10;
  private static final int f = 900000000;
  private static final int g = 900000000;
  private static ArrayList h = new ArrayList();
  private int A;
  private int B;
  private String C = null;
  private String D = null;
  private ArrayList E = null;
  private ArrayList F = null;
  private boolean G = false;
  private float H = 0.0F;
  private int I = 5;
  private int J = 10;
  protected Runnable a = new g(this);
  protected Runnable b = new h(this);
  private String i;
  private Context j;
  private QLBSNotification k;
  private Handler l = new Handler(Looper.getMainLooper());
  private TelephonyManager m = null;
  private LocationManager n = null;
  private LocationListener o = null;
  private LocationListener p = null;
  private WifiManager q = null;
  private BroadcastReceiver r = null;
  private boolean s = false;
  private boolean t = false;
  private boolean u = false;
  private boolean v = true;
  private int w;
  private int x;
  private int y;
  private int z;

  static
  {
    h.add("GT-I9100");
  }

  public QLBSEngine(Context paramContext, QLBSNotification paramQLBSNotification)
  {
    this.j = paramContext;
    this.k = paramQLBSNotification;
    this.i = Build.MODEL;
    x();
  }

  private void A()
  {
    if (this.n == null)
    {
      this.n = ((LocationManager)this.j.getSystemService("location"));
      if (this.n != null);
    }
    while (true)
    {
      return;
      if (B())
      {
        if (this.o == null)
          this.o = new e(this);
        l.a("----开始网络定位");
        this.n.requestLocationUpdates("network", 2000L, 5.0F, this.o);
        this.t = true;
      }
      if (C())
      {
        if (this.p == null)
          this.p = new f(this);
        if (this.u)
        {
          this.n.removeUpdates(this.p);
          this.l.removeCallbacks(this.b);
        }
        l.a("----开始gps定位");
        this.n.requestLocationUpdates("gps", 2000L, 5.0F, this.p);
        this.l.postDelayed(this.b, 1000 * this.J);
        this.u = true;
      }
    }
  }

  private boolean B()
  {
    if (this.n == null)
      this.n = ((LocationManager)this.j.getSystemService("location"));
    try
    {
      boolean bool2 = this.n.isProviderEnabled("network");
      bool1 = bool2;
      return bool1;
    }
    catch (Exception localException)
    {
      while (true)
        boolean bool1 = false;
    }
  }

  private boolean C()
  {
    if (this.n == null)
      this.n = ((LocationManager)this.j.getSystemService("location"));
    try
    {
      boolean bool2 = this.n.isProviderEnabled("gps");
      bool1 = bool2;
      return bool1;
    }
    catch (Exception localException)
    {
      while (true)
        boolean bool1 = false;
    }
  }

  private boolean D()
  {
    if (this.z != 0);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private boolean E()
  {
    if ((this.F != null) && (this.F.size() > 0));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private boolean F()
  {
    if ((this.A != 900000000) || (this.B != 900000000));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private static long a(byte[] paramArrayOfByte)
  {
    long l1 = 0xFF & paramArrayOfByte[0];
    long l2 = 0xFF & paramArrayOfByte[1];
    long l3 = 0xFF & paramArrayOfByte[2];
    long l4 = 0xFF & paramArrayOfByte[3];
    long l5 = 0xFF & paramArrayOfByte[4];
    long l6 = 0xFF & paramArrayOfByte[5];
    long l7 = 0xFF & paramArrayOfByte[6];
    long l8 = 0xFF & paramArrayOfByte[7];
    long l9 = l2 << 8;
    long l10 = l3 << 16;
    long l11 = l4 << 24;
    long l12 = l5 << 32;
    long l13 = l6 << 40;
    long l14 = l7 << 48;
    return l8 << 56 | (l14 | (l13 | (l12 | (l11 | (l10 | (l1 | l9))))));
  }

  // ERROR //
  private void a(ArrayList paramArrayList)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_1
    //   3: ifnull +10 -> 13
    //   6: aload_1
    //   7: invokevirtual 213	java/util/ArrayList:size	()I
    //   10: ifne +4 -> 14
    //   13: return
    //   14: aload_0
    //   15: getfield 137	com/tencent/lbsapi/core/QLBSEngine:j	Landroid/content/Context;
    //   18: ldc 231
    //   20: iconst_0
    //   21: invokevirtual 235	android/content/Context:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   24: astore 11
    //   26: aload 11
    //   28: astore 4
    //   30: new 237	java/io/ObjectOutputStream
    //   33: dup
    //   34: aload 4
    //   36: invokespecial 240	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   39: astore 8
    //   41: aload 8
    //   43: aload_1
    //   44: invokevirtual 244	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   47: aload 4
    //   49: ifnull +8 -> 57
    //   52: aload 4
    //   54: invokevirtual 249	java/io/FileOutputStream:close	()V
    //   57: aload 8
    //   59: ifnull -46 -> 13
    //   62: aload 8
    //   64: invokevirtual 250	java/io/ObjectOutputStream:close	()V
    //   67: goto -54 -> 13
    //   70: astore 12
    //   72: aload 12
    //   74: invokevirtual 253	java/io/IOException:printStackTrace	()V
    //   77: goto -64 -> 13
    //   80: astore 13
    //   82: aload 13
    //   84: invokevirtual 253	java/io/IOException:printStackTrace	()V
    //   87: goto -30 -> 57
    //   90: astore 7
    //   92: aconst_null
    //   93: astore 8
    //   95: aload 7
    //   97: invokevirtual 254	java/lang/Exception:printStackTrace	()V
    //   100: aload_2
    //   101: ifnull +7 -> 108
    //   104: aload_2
    //   105: invokevirtual 249	java/io/FileOutputStream:close	()V
    //   108: aload 8
    //   110: ifnull -97 -> 13
    //   113: aload 8
    //   115: invokevirtual 250	java/io/ObjectOutputStream:close	()V
    //   118: goto -105 -> 13
    //   121: astore 9
    //   123: aload 9
    //   125: invokevirtual 253	java/io/IOException:printStackTrace	()V
    //   128: goto -115 -> 13
    //   131: astore 10
    //   133: aload 10
    //   135: invokevirtual 253	java/io/IOException:printStackTrace	()V
    //   138: goto -30 -> 108
    //   141: astore_3
    //   142: aconst_null
    //   143: astore 4
    //   145: aload 4
    //   147: ifnull +8 -> 155
    //   150: aload 4
    //   152: invokevirtual 249	java/io/FileOutputStream:close	()V
    //   155: aload_2
    //   156: ifnull +7 -> 163
    //   159: aload_2
    //   160: invokevirtual 250	java/io/ObjectOutputStream:close	()V
    //   163: aload_3
    //   164: athrow
    //   165: astore 6
    //   167: aload 6
    //   169: invokevirtual 253	java/io/IOException:printStackTrace	()V
    //   172: goto -17 -> 155
    //   175: astore 5
    //   177: aload 5
    //   179: invokevirtual 253	java/io/IOException:printStackTrace	()V
    //   182: goto -19 -> 163
    //   185: astore_3
    //   186: aconst_null
    //   187: astore_2
    //   188: goto -43 -> 145
    //   191: astore_3
    //   192: aload 8
    //   194: astore_2
    //   195: goto -50 -> 145
    //   198: astore_3
    //   199: aload_2
    //   200: astore 4
    //   202: aload 8
    //   204: astore_2
    //   205: goto -60 -> 145
    //   208: astore 7
    //   210: aload 4
    //   212: astore_2
    //   213: aconst_null
    //   214: astore 8
    //   216: goto -121 -> 95
    //   219: astore 7
    //   221: aload 4
    //   223: astore_2
    //   224: goto -129 -> 95
    //
    // Exception table:
    //   from	to	target	type
    //   62	67	70	java/io/IOException
    //   52	57	80	java/io/IOException
    //   14	26	90	java/lang/Exception
    //   113	118	121	java/io/IOException
    //   104	108	131	java/io/IOException
    //   14	26	141	finally
    //   150	155	165	java/io/IOException
    //   159	163	175	java/io/IOException
    //   30	41	185	finally
    //   41	47	191	finally
    //   95	100	198	finally
    //   30	41	208	java/lang/Exception
    //   41	47	219	java/lang/Exception
  }

  private void processReceiveGps(Location paramLocation)
  {
    try
    {
      this.B = ((int)(1000000.0D * paramLocation.getLongitude()));
      this.A = ((int)(1000000.0D * paramLocation.getLatitude()));
      this.G = paramLocation.hasAccuracy();
      if (this.G)
        this.H = paramLocation.getAccuracy();
      l.a("----processReceiveGps lon:" + this.B + " lat:" + this.A + " provider:" + paramLocation.getProvider());
      if (this.u)
      {
        this.n.removeUpdates(this.p);
        if (this.z != 0)
          s();
        this.l.removeCallbacks(this.b);
        this.u = false;
      }
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  private void processReceiveNetWork(Location paramLocation)
  {
    try
    {
      this.B = ((int)(1000000.0D * paramLocation.getLongitude()));
      this.A = ((int)(1000000.0D * paramLocation.getLatitude()));
      this.G = paramLocation.hasAccuracy();
      if (this.G)
        this.H = paramLocation.getAccuracy();
      l.a("----processReceiveNetWork lon:" + this.B + " lat:" + this.A + " provider:" + paramLocation.getProvider());
      if (this.t)
      {
        this.n.removeUpdates(this.o);
        this.t = false;
        if (!this.s)
          w();
      }
      return;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        this.t = false;
        if (!this.s)
          w();
      }
    }
  }

  private void processReceiveWifi()
  {
    try
    {
      if (this.s)
      {
        this.s = false;
        z();
        if (!this.t)
          w();
      }
      return;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        this.s = false;
        if (!this.t)
          w();
      }
    }
  }

  private void readCell()
  {
    if (this.m == null)
      this.m = ((TelephonyManager)this.j.getSystemService("phone"));
    if (this.m != null)
      try
      {
        this.C = this.m.getDeviceId();
        if (this.C == null)
          this.C = "";
        if (this.m.getPhoneType() == 1)
        {
          GsmCellLocation localGsmCellLocation = (GsmCellLocation)this.m.getCellLocation();
          if (localGsmCellLocation != null)
          {
            this.y = localGsmCellLocation.getLac();
            this.z = localGsmCellLocation.getCid();
            if ((this.y <= 0) && (this.z <= 0))
              break label285;
            str2 = this.m.getNetworkOperator();
            if ((TextUtils.isEmpty(str2)) || (str2.length() < 3));
          }
        }
      }
      catch (Exception localException1)
      {
        try
        {
          str2 = str2.split(",")[0];
          this.w = Integer.parseInt(str2.substring(0, 3));
          this.x = Integer.parseInt(str2.substring(3));
          List localList = this.m.getNeighboringCellInfo();
          if (localList != null)
          {
            Iterator localIterator = localList.iterator();
            while (localIterator.hasNext())
            {
              NeighboringCellInfo localNeighboringCellInfo = (NeighboringCellInfo)localIterator.next();
              this.E.add(Integer.valueOf(localNeighboringCellInfo.getCid()));
              continue;
              localException1 = localException1;
              this.C = "";
            }
          }
        }
        catch (Exception localException4)
        {
          String str2;
          this.w = 0;
          this.x = 0;
          this.y = 0;
          this.z = 0;
          this.D = str2;
        }
      }
    while (true)
    {
      return;
      label285: this.y = 0;
      this.z = 0;
      continue;
      if ((Integer.valueOf(Build.VERSION.SDK).intValue() >= 4) && (this.m.getPhoneType() == 2))
        try
        {
          Class localClass = Class.forName("android.telephony.cdma.CdmaCellLocation");
          if (localClass != null)
          {
            localClass.getConstructor(null);
            CellLocation localCellLocation = this.m.getCellLocation();
            Method localMethod1 = localClass.getMethod("getSystemId", new Class[0]);
            if (localMethod1 != null)
              this.x = ((Integer)localMethod1.invoke(localCellLocation, null)).intValue();
            Method localMethod2 = localClass.getMethod("getNetworkId", new Class[0]);
            if (localMethod2 != null)
              this.y = ((Integer)localMethod2.invoke(localCellLocation, null)).intValue();
            Method localMethod3 = localClass.getMethod("getBaseStationId", new Class[0]);
            if (localMethod3 != null)
              this.z = ((Integer)localMethod3.invoke(localCellLocation, null)).intValue();
            String str1 = this.m.getNetworkOperator();
            if (!TextUtils.isEmpty(str1))
            {
              int i1 = str1.length();
              if (i1 >= 3)
                try
                {
                  this.w = Integer.parseInt(str1.substring(0, 3));
                }
                catch (Exception localException3)
                {
                  this.D = str1;
                }
            }
          }
        }
        catch (Exception localException2)
        {
          localException2.printStackTrace();
        }
    }
  }

  public static long v()
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.set(1970, 0, 1, 8, 0, 0);
    return (Calendar.getInstance().getTimeInMillis() - localCalendar.getTimeInMillis()) / 1000L;
  }

  private void w()
  {
    int i1;
    if ((!D()) && (!E()))
    {
      boolean bool = F();
      i1 = 0;
      if (!bool);
    }
    else
    {
      i1 = 1;
    }
    this.l.removeCallbacks(this.a);
    if (this.k != null)
      this.k.onLocationNotification(i1);
  }

  private void x()
  {
    this.w = 0;
    this.x = 0;
    this.y = 0;
    this.z = 0;
    this.A = 900000000;
    this.B = 900000000;
    this.G = false;
    this.H = 0.0F;
    if (this.E == null)
    {
      this.E = new ArrayList();
      if (this.F != null)
        break label94;
      this.F = new ArrayList();
    }
    while (true)
    {
      this.D = null;
      return;
      this.E.clear();
      break;
      label94: this.F.clear();
    }
  }

  private void y()
  {
    try
    {
      if (this.q == null)
        this.q = ((WifiManager)this.j.getSystemService("wifi"));
      z();
      if (this.F.size() == 0)
      {
        l.a("-----如果没读到则进行扫描一次");
        if (this.r == null)
        {
          IntentFilter localIntentFilter = new IntentFilter();
          localIntentFilter.addAction("android.net.wifi.SCAN_RESULTS");
          this.r = new d(this);
          this.j.registerReceiver(this.r, localIntentFilter);
        }
        this.s = this.q.startScan();
      }
      else
      {
        l.a("----直接读到wifi了，不用扫描");
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  private void z()
  {
    List localList = this.q.getScanResults();
    if (this.F == null)
      this.F = new ArrayList();
    for (int i1 = 0; ; i1++)
    {
      if (i1 >= localList.size())
        return;
      String[] arrayOfString = ((ScanResult)localList.get(i1)).BSSID.split(":");
      byte[] arrayOfByte = { 0, 0, 0, 0, 0, 0, 0, 0 };
      int i2 = 0;
      while (true)
        if (i2 < arrayOfString.length)
        {
          int i3 = Integer.parseInt(arrayOfString[i2], 16);
          arrayOfByte[(5 - i2)] = ((byte)i3);
          i2++;
          continue;
          this.F.clear();
          break;
        }
      this.F.add(Long.valueOf(a(arrayOfByte)));
    }
  }

  public void a(int paramInt)
  {
    this.I = paramInt;
  }

  public void a(boolean paramBoolean)
  {
    this.v = paramBoolean;
  }

  public boolean a()
  {
    try
    {
      x();
      b();
      if (Settings.System.getInt(this.j.getContentResolver(), "airplane_mode_on", 0) == 0)
        readCell();
      if (e())
        y();
      if (h.contains(this.i))
        this.v = false;
      if ((this.v) && (c()))
        A();
      this.l.postDelayed(this.a, 1000 * this.I);
      if ((!this.t) && (!this.s))
        w();
      return true;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void b()
  {
    if (this.t)
    {
      this.n.removeUpdates(this.o);
      this.t = false;
    }
    this.s = false;
    this.l.removeCallbacks(this.a);
  }

  public void b(int paramInt)
  {
    this.J = paramInt;
  }

  public boolean c()
  {
    if ((B()) || (C()));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public int d()
  {
    int i1 = 1;
    readCell();
    if ((this.w == 0) && (this.x == 0))
      i1 = -1;
    while (true)
    {
      return i1;
      if ((this.x == 0) || (this.x == 2) || (this.x == 7))
        i1 = 0;
      else if ((this.x != i1) && (this.x != 6))
        if ((this.x == 3) || (this.x == 5))
        {
          i1 = 2;
        }
        else
        {
          if (this.m == null)
            this.m = ((TelephonyManager)this.j.getSystemService("phone"));
          if (this.m.getPhoneType() == 2)
            i1 = 2;
          else
            i1 = -1;
        }
    }
  }

  public boolean e()
  {
    try
    {
      if (this.q == null)
        this.q = ((WifiManager)this.j.getSystemService("wifi"));
      boolean bool2;
      if (this.q != null)
        bool2 = this.q.isWifiEnabled();
      for (bool1 = bool2; ; bool1 = false)
        return bool1;
    }
    catch (Exception localException)
    {
      while (true)
        boolean bool1 = false;
    }
  }

  public void f()
  {
    if (this.r != null);
    try
    {
      this.j.unregisterReceiver(this.r);
      label18: if ((this.n != null) && (this.o != null))
      {
        this.n.removeUpdates(this.o);
        this.o = null;
      }
      if ((this.n != null) && (this.p != null))
      {
        this.n.removeUpdates(this.p);
        this.p = null;
      }
      this.l.removeCallbacks(this.a);
      this.l.removeCallbacks(this.b);
      return;
    }
    catch (Exception localException)
    {
      break label18;
    }
  }

  public int g()
  {
    return this.w;
  }

  public int h()
  {
    return this.x;
  }

  public int i()
  {
    return this.y;
  }

  public int j()
  {
    return this.z;
  }

  public int k()
  {
    return this.A;
  }

  public int l()
  {
    return this.B;
  }

  public ArrayList m()
  {
    return this.F;
  }

  public ArrayList n()
  {
    return this.E;
  }

  public String o()
  {
    if (this.C == null);
    for (String str = ""; ; str = this.C)
      return str;
  }

  public String p()
  {
    if (this.D == null);
    for (String str = ""; ; str = this.D)
      return str;
  }

  public boolean q()
  {
    return this.G;
  }

  public float r()
  {
    return this.H;
  }

  public void s()
  {
    ArrayList localArrayList1 = t();
    if (localArrayList1 == null);
    for (ArrayList localArrayList2 = new ArrayList(); ; localArrayList2 = localArrayList1)
    {
      Measure localMeasure = new Measure();
      localMeasure.setLTime(v());
      localMeasure.setStGps(new GPS(this.A, this.B, -1, 0));
      localMeasure.setVCells(new ArrayList());
      localMeasure.getVCells().add(new Cell((short)this.w, (short)this.x, this.y, this.z));
      Iterator localIterator = this.E.iterator();
      while (localIterator.hasNext())
      {
        int i1 = ((Integer)localIterator.next()).intValue();
        localMeasure.getVCells().add(new Cell((short)this.w, (short)this.x, this.y, i1));
      }
      localMeasure.setVMacs(m());
      localMeasure.setStrExtraInfo(p());
      localArrayList2.add(localMeasure);
      a(localArrayList2);
      return;
    }
  }

  // ERROR //
  public ArrayList t()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aload_0
    //   3: getfield 137	com/tencent/lbsapi/core/QLBSEngine:j	Landroid/content/Context;
    //   6: ldc 231
    //   8: invokevirtual 606	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   11: astore 14
    //   13: aload 14
    //   15: astore_3
    //   16: new 608	java/io/ObjectInputStream
    //   19: dup
    //   20: aload_3
    //   21: invokespecial 611	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   24: astore 15
    //   26: aload 15
    //   28: invokevirtual 614	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   31: checkcast 61	java/util/ArrayList
    //   34: astore 11
    //   36: aload 15
    //   38: ifnull +8 -> 46
    //   41: aload 15
    //   43: invokevirtual 615	java/io/ObjectInputStream:close	()V
    //   46: aload_3
    //   47: ifnull +7 -> 54
    //   50: aload_3
    //   51: invokevirtual 618	java/io/FileInputStream:close	()V
    //   54: aload_0
    //   55: getfield 137	com/tencent/lbsapi/core/QLBSEngine:j	Landroid/content/Context;
    //   58: ldc 231
    //   60: invokevirtual 621	android/content/Context:deleteFile	(Ljava/lang/String;)Z
    //   63: pop
    //   64: aload 11
    //   66: areturn
    //   67: astore 19
    //   69: aload 19
    //   71: invokevirtual 253	java/io/IOException:printStackTrace	()V
    //   74: goto -28 -> 46
    //   77: astore 18
    //   79: aload 18
    //   81: invokevirtual 253	java/io/IOException:printStackTrace	()V
    //   84: goto -30 -> 54
    //   87: astore 7
    //   89: aconst_null
    //   90: astore 8
    //   92: aconst_null
    //   93: astore 9
    //   95: aload 8
    //   97: ifnull +8 -> 105
    //   100: aload 8
    //   102: invokevirtual 615	java/io/ObjectInputStream:close	()V
    //   105: aload 9
    //   107: ifnull +8 -> 115
    //   110: aload 9
    //   112: invokevirtual 618	java/io/FileInputStream:close	()V
    //   115: aload_0
    //   116: getfield 137	com/tencent/lbsapi/core/QLBSEngine:j	Landroid/content/Context;
    //   119: ldc 231
    //   121: invokevirtual 621	android/content/Context:deleteFile	(Ljava/lang/String;)Z
    //   124: pop
    //   125: aconst_null
    //   126: astore 11
    //   128: goto -64 -> 64
    //   131: astore 13
    //   133: aload 13
    //   135: invokevirtual 253	java/io/IOException:printStackTrace	()V
    //   138: goto -33 -> 105
    //   141: astore 12
    //   143: aload 12
    //   145: invokevirtual 253	java/io/IOException:printStackTrace	()V
    //   148: goto -33 -> 115
    //   151: astore_2
    //   152: aconst_null
    //   153: astore_3
    //   154: aload_1
    //   155: ifnull +7 -> 162
    //   158: aload_1
    //   159: invokevirtual 615	java/io/ObjectInputStream:close	()V
    //   162: aload_3
    //   163: ifnull +7 -> 170
    //   166: aload_3
    //   167: invokevirtual 618	java/io/FileInputStream:close	()V
    //   170: aload_0
    //   171: getfield 137	com/tencent/lbsapi/core/QLBSEngine:j	Landroid/content/Context;
    //   174: ldc 231
    //   176: invokevirtual 621	android/content/Context:deleteFile	(Ljava/lang/String;)Z
    //   179: pop
    //   180: aload_2
    //   181: athrow
    //   182: astore 6
    //   184: aload 6
    //   186: invokevirtual 253	java/io/IOException:printStackTrace	()V
    //   189: goto -27 -> 162
    //   192: astore 5
    //   194: aload 5
    //   196: invokevirtual 253	java/io/IOException:printStackTrace	()V
    //   199: goto -29 -> 170
    //   202: astore_2
    //   203: aconst_null
    //   204: astore_1
    //   205: goto -51 -> 154
    //   208: astore_2
    //   209: aload 15
    //   211: astore_1
    //   212: goto -58 -> 154
    //   215: astore 20
    //   217: aload_3
    //   218: astore 9
    //   220: aconst_null
    //   221: astore 8
    //   223: goto -128 -> 95
    //   226: astore 16
    //   228: aload 15
    //   230: astore 8
    //   232: aload_3
    //   233: astore 9
    //   235: goto -140 -> 95
    //
    // Exception table:
    //   from	to	target	type
    //   41	46	67	java/io/IOException
    //   50	54	77	java/io/IOException
    //   2	13	87	java/lang/Exception
    //   100	105	131	java/io/IOException
    //   110	115	141	java/io/IOException
    //   2	13	151	finally
    //   158	162	182	java/io/IOException
    //   166	170	192	java/io/IOException
    //   16	26	202	finally
    //   26	36	208	finally
    //   16	26	215	java/lang/Exception
    //   26	36	226	java/lang/Exception
  }

  public String toString()
  {
    return "mcc=" + this.w + " mnc" + this.x + " cell=" + this.z + "  lat=" + this.A + " wifiNum=" + this.F.size();
  }

  public Cell u()
  {
    readCell();
    return new Cell((short)g(), (short)h(), i(), j());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.lbsapi.core.QLBSEngine
 * JD-Core Version:    0.6.2
 */