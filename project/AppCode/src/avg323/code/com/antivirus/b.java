package com.antivirus;

import android.os.Handler;
import android.os.Looper;
import java.lang.ref.WeakReference;

public class b extends Handler
{
  WeakReference a;

  public b(AVService paramAVService, Looper paramLooper)
  {
    super(paramLooper);
    this.a = new WeakReference(paramAVService);
  }

  // ERROR //
  public void handleMessage(android.os.Message paramMessage)
  {
    // Byte code:
    //   0: iconst_m1
    //   1: istore_2
    //   2: aload_0
    //   3: getfield 18	com/antivirus/b:a	Ljava/lang/ref/WeakReference;
    //   6: invokevirtual 26	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   9: checkcast 28	com/antivirus/AVService
    //   12: astore_3
    //   13: aload_3
    //   14: ifnonnull +4 -> 18
    //   17: return
    //   18: aconst_null
    //   19: astore 4
    //   21: aload_1
    //   22: ifnull +244 -> 266
    //   25: aload_1
    //   26: getfield 34	android/os/Message:obj	Ljava/lang/Object;
    //   29: checkcast 36	android/os/Bundle
    //   32: astore 6
    //   34: aload 6
    //   36: ifnull -19 -> 17
    //   39: aload 6
    //   41: ldc 38
    //   43: iconst_m1
    //   44: invokevirtual 42	android/os/Bundle:getInt	(Ljava/lang/String;I)I
    //   47: istore 11
    //   49: iload 11
    //   51: istore 5
    //   53: iload 5
    //   55: istore_2
    //   56: aload 6
    //   58: astore 4
    //   60: iload_2
    //   61: lookupswitch	default:+59->120, -1:+86->147, 1000:+133->194, 7000:+182->243, 17000:+157->218, 19000:+172->233, 25000:+142->203
    //   121: invokevirtual 46	com/antivirus/AVService:c	()Z
    //   124: ifeq -107 -> 17
    //   127: aload_3
    //   128: aload 4
    //   130: iload_2
    //   131: invokevirtual 49	com/antivirus/AVService:a	(Landroid/os/Bundle;I)V
    //   134: goto -117 -> 17
    //   137: astore 9
    //   139: aload 9
    //   141: invokestatic 54	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   144: goto -84 -> 60
    //   147: new 56	java/lang/StringBuilder
    //   150: dup
    //   151: invokespecial 59	java/lang/StringBuilder:<init>	()V
    //   154: ldc 61
    //   156: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   159: astore 7
    //   161: aload_1
    //   162: ifnonnull +23 -> 185
    //   165: ldc 67
    //   167: astore 8
    //   169: aload 7
    //   171: aload 8
    //   173: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   176: invokevirtual 71	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   179: invokestatic 74	com/avg/toolkit/f/a:a	(Ljava/lang/String;)V
    //   182: goto -165 -> 17
    //   185: aload_1
    //   186: invokevirtual 75	android/os/Message:toString	()Ljava/lang/String;
    //   189: astore 8
    //   191: goto -22 -> 169
    //   194: aload_3
    //   195: aload 4
    //   197: invokevirtual 79	com/antivirus/AVService:b	(Landroid/os/Bundle;)V
    //   200: goto -183 -> 17
    //   203: aload_3
    //   204: iload_2
    //   205: invokevirtual 82	com/antivirus/AVService:a	(I)Lcom/avg/toolkit/e;
    //   208: aload 4
    //   210: invokeinterface 85 2 0
    //   215: goto -198 -> 17
    //   218: aload_3
    //   219: iload_2
    //   220: invokevirtual 82	com/antivirus/AVService:a	(I)Lcom/avg/toolkit/e;
    //   223: aload 4
    //   225: invokeinterface 85 2 0
    //   230: goto -213 -> 17
    //   233: aload_3
    //   234: aload 4
    //   236: iload_2
    //   237: invokevirtual 49	com/antivirus/AVService:a	(Landroid/os/Bundle;I)V
    //   240: goto -223 -> 17
    //   243: aload_3
    //   244: aload 4
    //   246: iload_2
    //   247: invokevirtual 49	com/antivirus/AVService:a	(Landroid/os/Bundle;I)V
    //   250: goto -233 -> 17
    //   253: astore 10
    //   255: aload 6
    //   257: astore 4
    //   259: aload 10
    //   261: astore 9
    //   263: goto -124 -> 139
    //   266: iload_2
    //   267: istore 5
    //   269: aconst_null
    //   270: astore 6
    //   272: goto -219 -> 53
    //
    // Exception table:
    //   from	to	target	type
    //   25	34	137	java/lang/Exception
    //   39	49	253	java/lang/Exception
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.b
 * JD-Core Version:    0.6.2
 */