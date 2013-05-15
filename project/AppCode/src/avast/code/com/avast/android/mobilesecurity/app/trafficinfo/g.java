package com.avast.android.mobilesecurity.app.trafficinfo;

import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.database.MatrixCursor.RowBuilder;
import com.avast.android.mobilesecurity.app.manager.a.a.e;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class g extends e
{
  public static String A = "totalTxWifi";
  public static String B = "totalRxRoaming";
  public static String C = "totalTxRoaming";
  public static String f = "totalRx";
  public static String g = "totalTx";
  public static String h = "totalRx3G";
  public static String y = "totalTx3G";
  public static String z = "totalRxWifi";
  private HashMap D;
  private int E;
  private int F;

  public g(Context paramContext, int paramInt1, int paramInt2)
  {
    super(paramContext);
    this.E = paramInt1;
    this.F = paramInt2;
  }

  // ERROR //
  private void D()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 67	com/avast/android/mobilesecurity/app/trafficinfo/g:j	()Landroid/content/Context;
    //   4: invokevirtual 73	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   7: invokestatic 79	com/avast/android/mobilesecurity/r:a	()Landroid/net/Uri;
    //   10: getstatic 82	com/avast/android/mobilesecurity/r:a	[Ljava/lang/String;
    //   13: aconst_null
    //   14: aconst_null
    //   15: aconst_null
    //   16: invokevirtual 88	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   19: astore_1
    //   20: aload_1
    //   21: ifnull +48 -> 69
    //   24: aload_1
    //   25: invokeinterface 94 1 0
    //   30: istore 4
    //   32: iload 4
    //   34: ifeq +25 -> 59
    //   37: aload_1
    //   38: aload_0
    //   39: getfield 96	com/avast/android/mobilesecurity/app/trafficinfo/g:D	Ljava/util/HashMap;
    //   42: invokestatic 101	com/avast/android/mobilesecurity/app/trafficinfo/a:a	(Landroid/database/Cursor;Ljava/util/HashMap;)Lcom/avast/android/mobilesecurity/app/trafficinfo/a;
    //   45: pop
    //   46: aload_1
    //   47: invokeinterface 104 1 0
    //   52: istore 7
    //   54: iload 7
    //   56: ifne -19 -> 37
    //   59: aload_1
    //   60: ifnull +9 -> 69
    //   63: aload_1
    //   64: invokeinterface 107 1 0
    //   69: return
    //   70: astore 6
    //   72: ldc 109
    //   74: ldc 111
    //   76: aload 6
    //   78: invokestatic 116	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   81: goto -35 -> 46
    //   84: astore_2
    //   85: aload_1
    //   86: ifnull +9 -> 95
    //   89: aload_1
    //   90: invokeinterface 107 1 0
    //   95: aload_2
    //   96: athrow
    //   97: astore_3
    //   98: goto -3 -> 95
    //   101: astore 5
    //   103: goto -34 -> 69
    //
    // Exception table:
    //   from	to	target	type
    //   37	46	70	java/lang/Exception
    //   24	32	84	finally
    //   37	46	84	finally
    //   46	54	84	finally
    //   72	81	84	finally
    //   89	95	97	java/lang/Exception
    //   63	69	101	java/lang/Exception
  }

  protected List a(List paramList)
  {
    this.D = new HashMap();
    D();
    return super.a(paramList);
  }

  protected void a(h paramh)
  {
    Long localLong = Long.valueOf(paramh.e);
    a locala;
    b localb;
    if (this.D.containsKey(localLong))
    {
      locala = (a)this.D.get(localLong);
      if (this.F == 11)
      {
        localb = locala.d;
        paramh.a = localb.i;
        paramh.b = localb.h;
        paramh.c = localb.c;
        paramh.o = localb.b;
        paramh.p = localb.e;
        paramh.q = localb.d;
        paramh.r = localb.g;
      }
    }
    for (paramh.s = localb.f; ; paramh.s = 0L)
    {
      return;
      if (this.F == 12)
      {
        localb = locala.e;
        break;
      }
      localb = locala.f;
      break;
      paramh.a = 0L;
      paramh.b = 0L;
      paramh.c = 0L;
      paramh.o = 0L;
      paramh.p = 0L;
      paramh.q = 0L;
      paramh.r = 0L;
    }
  }

  protected Cursor b(List paramList)
  {
    String[] arrayOfString = new String[17];
    arrayOfString[0] = "_id";
    arrayOfString[1] = i;
    arrayOfString[2] = k;
    arrayOfString[3] = l;
    arrayOfString[4] = t;
    arrayOfString[5] = j;
    arrayOfString[6] = v;
    arrayOfString[7] = w;
    arrayOfString[8] = x;
    arrayOfString[9] = f;
    arrayOfString[10] = g;
    arrayOfString[11] = h;
    arrayOfString[12] = y;
    arrayOfString[13] = z;
    arrayOfString[14] = A;
    arrayOfString[15] = B;
    arrayOfString[16] = C;
    MatrixCursor localMatrixCursor = new MatrixCursor(arrayOfString);
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      h localh = (h)localIterator.next();
      localMatrixCursor.newRow().add(Long.valueOf(localh.d)).add(localh.h).add(localh.i).add(Integer.valueOf(localh.f)).add(Long.valueOf(localh.j)).add(localh.g).add(Integer.valueOf(localh.e)).add(localh.m).add(Integer.valueOf(localh.n)).add(Long.valueOf(localh.a)).add(Long.valueOf(localh.b)).add(Long.valueOf(localh.c)).add(Long.valueOf(localh.o)).add(Long.valueOf(localh.p)).add(Long.valueOf(localh.q)).add(Long.valueOf(localh.r)).add(Long.valueOf(localh.s));
    }
    return localMatrixCursor;
  }

  protected Comparator c_()
  {
    return new i(this.E);
  }

  protected h x()
  {
    return new h();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.trafficinfo.g
 * JD-Core Version:    0.6.2
 */