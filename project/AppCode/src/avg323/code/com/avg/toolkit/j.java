package com.avg.toolkit;

import android.os.Handler;
import android.os.Looper;
import java.lang.ref.WeakReference;

public class j extends Handler
{
  boolean a = false;
  WeakReference b;

  public j(f paramf, Looper paramLooper)
  {
    super(paramLooper);
    this.b = new WeakReference(paramf);
  }

  // ERROR //
  public void handleMessage(android.os.Message paramMessage)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 22	com/avg/toolkit/j:b	Ljava/lang/ref/WeakReference;
    //   4: invokevirtual 30	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   7: checkcast 32	com/avg/toolkit/f
    //   10: astore_2
    //   11: aload_2
    //   12: ifnonnull +4 -> 16
    //   15: return
    //   16: aload_1
    //   17: ifnull +218 -> 235
    //   20: aload_1
    //   21: getfield 38	android/os/Message:obj	Ljava/lang/Object;
    //   24: checkcast 40	android/os/Bundle
    //   27: astore 4
    //   29: aload 4
    //   31: ifnull -16 -> 15
    //   34: aload 4
    //   36: ldc 42
    //   38: iconst_m1
    //   39: invokevirtual 46	android/os/Bundle:getInt	(Ljava/lang/String;I)I
    //   42: istore 9
    //   44: iload 9
    //   46: istore_3
    //   47: aload_0
    //   48: getfield 15	com/avg/toolkit/j:a	Z
    //   51: ifne +85 -> 136
    //   54: iload_3
    //   55: sipush 1000
    //   58: if_icmpne +48 -> 106
    //   61: aload 4
    //   63: ldc 48
    //   65: iconst_m1
    //   66: invokevirtual 46	android/os/Bundle:getInt	(Ljava/lang/String;I)I
    //   69: sipush 1001
    //   72: if_icmpne +34 -> 106
    //   75: aload_2
    //   76: invokevirtual 52	com/avg/toolkit/f:a_	()V
    //   79: aload_0
    //   80: iconst_1
    //   81: putfield 15	com/avg/toolkit/j:a	Z
    //   84: goto -69 -> 15
    //   87: astore 7
    //   89: aconst_null
    //   90: astore 4
    //   92: aload 7
    //   94: astore 8
    //   96: aload 8
    //   98: invokestatic 57	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   101: iconst_m1
    //   102: istore_3
    //   103: goto -56 -> 47
    //   106: iload_3
    //   107: sipush 1000
    //   110: if_icmpne +17 -> 127
    //   113: aload 4
    //   115: ldc 48
    //   117: iconst_m1
    //   118: invokevirtual 46	android/os/Bundle:getInt	(Ljava/lang/String;I)I
    //   121: sipush 1001
    //   124: if_icmpeq +12 -> 136
    //   127: ldc 59
    //   129: invokestatic 62	com/avg/toolkit/f/a:a	(Ljava/lang/String;)V
    //   132: aload_2
    //   133: invokevirtual 52	com/avg/toolkit/f:a_	()V
    //   136: iload_3
    //   137: lookupswitch	default:+27->164, -1:+37->174, 1000:+84->221
    //   165: aload 4
    //   167: iload_3
    //   168: invokevirtual 65	com/avg/toolkit/f:a	(Landroid/os/Bundle;I)V
    //   171: goto -156 -> 15
    //   174: new 67	java/lang/StringBuilder
    //   177: dup
    //   178: invokespecial 69	java/lang/StringBuilder:<init>	()V
    //   181: ldc 71
    //   183: invokevirtual 75	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   186: astore 5
    //   188: aload_1
    //   189: ifnonnull +23 -> 212
    //   192: ldc 77
    //   194: astore 6
    //   196: aload 5
    //   198: aload 6
    //   200: invokevirtual 75	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   203: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   206: invokestatic 62	com/avg/toolkit/f/a:a	(Ljava/lang/String;)V
    //   209: goto -194 -> 15
    //   212: aload_1
    //   213: invokevirtual 82	android/os/Message:toString	()Ljava/lang/String;
    //   216: astore 6
    //   218: goto -22 -> 196
    //   221: aload_2
    //   222: aload 4
    //   224: invokevirtual 85	com/avg/toolkit/f:b	(Landroid/os/Bundle;)V
    //   227: goto -212 -> 15
    //   230: astore 8
    //   232: goto -136 -> 96
    //   235: iconst_m1
    //   236: istore_3
    //   237: aconst_null
    //   238: astore 4
    //   240: goto -193 -> 47
    //
    // Exception table:
    //   from	to	target	type
    //   20	29	87	java/lang/Exception
    //   34	44	230	java/lang/Exception
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.toolkit.j
 * JD-Core Version:    0.6.2
 */