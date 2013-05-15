package com.avast.android.generic.notification;

import android.content.Context;
import android.database.Cursor;
import com.avast.android.generic.ad;
import com.avast.android.generic.b;

public class t extends b
{
  private j f;

  public t(Context paramContext)
  {
    super(paramContext);
    this.f = ((j)ad.a(paramContext, j.class));
  }

  // ERROR //
  private Cursor w()
  {
    // Byte code:
    //   0: new 24	android/database/MatrixCursor
    //   3: dup
    //   4: bipush 14
    //   6: anewarray 26	java/lang/String
    //   9: dup
    //   10: iconst_0
    //   11: ldc 28
    //   13: aastore
    //   14: dup
    //   15: iconst_1
    //   16: ldc 30
    //   18: aastore
    //   19: dup
    //   20: iconst_2
    //   21: ldc 32
    //   23: aastore
    //   24: dup
    //   25: iconst_3
    //   26: ldc 34
    //   28: aastore
    //   29: dup
    //   30: iconst_4
    //   31: ldc 36
    //   33: aastore
    //   34: dup
    //   35: iconst_5
    //   36: ldc 38
    //   38: aastore
    //   39: dup
    //   40: bipush 6
    //   42: ldc 40
    //   44: aastore
    //   45: dup
    //   46: bipush 7
    //   48: ldc 42
    //   50: aastore
    //   51: dup
    //   52: bipush 8
    //   54: ldc 44
    //   56: aastore
    //   57: dup
    //   58: bipush 9
    //   60: ldc 46
    //   62: aastore
    //   63: dup
    //   64: bipush 10
    //   66: ldc 48
    //   68: aastore
    //   69: dup
    //   70: bipush 11
    //   72: ldc 50
    //   74: aastore
    //   75: dup
    //   76: bipush 12
    //   78: ldc 52
    //   80: aastore
    //   81: dup
    //   82: bipush 13
    //   84: ldc 54
    //   86: aastore
    //   87: invokespecial 57	android/database/MatrixCursor:<init>	([Ljava/lang/String;)V
    //   90: astore_1
    //   91: aload_0
    //   92: getfield 20	com/avast/android/generic/notification/t:f	Lcom/avast/android/generic/notification/j;
    //   95: astore_2
    //   96: aload_2
    //   97: monitorenter
    //   98: aload_0
    //   99: getfield 20	com/avast/android/generic/notification/t:f	Lcom/avast/android/generic/notification/j;
    //   102: invokevirtual 61	com/avast/android/generic/notification/j:d	()Ljava/util/List;
    //   105: invokeinterface 67 1 0
    //   110: astore 4
    //   112: aload 4
    //   114: invokeinterface 73 1 0
    //   119: ifeq +253 -> 372
    //   122: aload 4
    //   124: invokeinterface 77 1 0
    //   129: checkcast 79	com/avast/android/generic/notification/a
    //   132: astore 5
    //   134: iconst_2
    //   135: aload 5
    //   137: getfield 82	com/avast/android/generic/notification/a:f	I
    //   140: iand
    //   141: ifle -29 -> 112
    //   144: bipush 14
    //   146: anewarray 84	java/lang/Object
    //   149: astore 6
    //   151: aload 6
    //   153: iconst_0
    //   154: aload 5
    //   156: getfield 87	com/avast/android/generic/notification/a:a	J
    //   159: invokestatic 93	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   162: aastore
    //   163: aload 6
    //   165: iconst_1
    //   166: aload 5
    //   168: getfield 97	com/avast/android/generic/notification/a:j	Ljava/lang/CharSequence;
    //   171: aastore
    //   172: aload 6
    //   174: iconst_2
    //   175: aload 5
    //   177: getfield 100	com/avast/android/generic/notification/a:i	Ljava/lang/CharSequence;
    //   180: aastore
    //   181: aload 6
    //   183: iconst_3
    //   184: aload 5
    //   186: getfield 82	com/avast/android/generic/notification/a:f	I
    //   189: invokestatic 105	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   192: aastore
    //   193: aload 6
    //   195: iconst_4
    //   196: aload 5
    //   198: getfield 108	com/avast/android/generic/notification/a:e	I
    //   201: invokestatic 105	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   204: aastore
    //   205: aload 6
    //   207: iconst_5
    //   208: iconst_1
    //   209: invokestatic 105	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   212: aastore
    //   213: aload 6
    //   215: bipush 6
    //   217: aload 5
    //   219: getfield 112	com/avast/android/generic/notification/a:g	Lcom/avast/android/generic/notification/AvastPendingIntent;
    //   222: getfield 117	com/avast/android/generic/notification/AvastPendingIntent:a	Ljava/lang/String;
    //   225: aastore
    //   226: aload 6
    //   228: bipush 7
    //   230: aload 5
    //   232: getfield 112	com/avast/android/generic/notification/a:g	Lcom/avast/android/generic/notification/AvastPendingIntent;
    //   235: getfield 120	com/avast/android/generic/notification/AvastPendingIntent:c	Ljava/lang/String;
    //   238: aastore
    //   239: aload 5
    //   241: getfield 112	com/avast/android/generic/notification/a:g	Lcom/avast/android/generic/notification/AvastPendingIntent;
    //   244: getfield 124	com/avast/android/generic/notification/AvastPendingIntent:b	Landroid/net/Uri;
    //   247: ifnull +119 -> 366
    //   250: aload 5
    //   252: getfield 112	com/avast/android/generic/notification/a:g	Lcom/avast/android/generic/notification/AvastPendingIntent;
    //   255: getfield 124	com/avast/android/generic/notification/AvastPendingIntent:b	Landroid/net/Uri;
    //   258: invokevirtual 130	android/net/Uri:toString	()Ljava/lang/String;
    //   261: astore 7
    //   263: aload 6
    //   265: bipush 8
    //   267: aload 7
    //   269: aastore
    //   270: aload 6
    //   272: bipush 9
    //   274: aload 5
    //   276: getfield 112	com/avast/android/generic/notification/a:g	Lcom/avast/android/generic/notification/AvastPendingIntent;
    //   279: invokevirtual 132	com/avast/android/generic/notification/AvastPendingIntent:c	()Ljava/lang/String;
    //   282: aastore
    //   283: aload 6
    //   285: bipush 10
    //   287: aload 5
    //   289: getfield 112	com/avast/android/generic/notification/a:g	Lcom/avast/android/generic/notification/AvastPendingIntent;
    //   292: getfield 134	com/avast/android/generic/notification/AvastPendingIntent:d	I
    //   295: invokestatic 105	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   298: aastore
    //   299: aload 6
    //   301: bipush 11
    //   303: aload 5
    //   305: getfield 112	com/avast/android/generic/notification/a:g	Lcom/avast/android/generic/notification/AvastPendingIntent;
    //   308: getfield 137	com/avast/android/generic/notification/AvastPendingIntent:f	Lcom/avast/android/generic/notification/s;
    //   311: invokevirtual 142	com/avast/android/generic/notification/s:name	()Ljava/lang/String;
    //   314: aastore
    //   315: aload 6
    //   317: bipush 12
    //   319: ldc 143
    //   321: aload 5
    //   323: getfield 145	com/avast/android/generic/notification/a:c	J
    //   326: l2f
    //   327: aload 5
    //   329: getfield 147	com/avast/android/generic/notification/a:b	J
    //   332: l2f
    //   333: fdiv
    //   334: fmul
    //   335: invokestatic 152	java/lang/Float:valueOf	(F)Ljava/lang/Float;
    //   338: aastore
    //   339: aload 6
    //   341: bipush 13
    //   343: aload 5
    //   345: getfield 155	com/avast/android/generic/notification/a:h	J
    //   348: invokestatic 93	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   351: aastore
    //   352: aload_1
    //   353: aload 6
    //   355: invokevirtual 159	android/database/MatrixCursor:addRow	([Ljava/lang/Object;)V
    //   358: goto -246 -> 112
    //   361: astore_3
    //   362: aload_2
    //   363: monitorexit
    //   364: aload_3
    //   365: athrow
    //   366: aconst_null
    //   367: astore 7
    //   369: goto -106 -> 263
    //   372: aload_2
    //   373: monitorexit
    //   374: aload_1
    //   375: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   98	364	361	finally
    //   372	374	361	finally
  }

  public Cursor f()
  {
    return w();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.notification.t
 * JD-Core Version:    0.6.2
 */