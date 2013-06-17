package com.google.a.a.a;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;

public class aj
  implements bi
{
  private static aj i;
  private j a;
  private Context b;
  private bf c;
  private a d;
  private volatile String e;
  private volatile Boolean f;
  private final Map g = new HashMap();
  private String h;

  aj()
  {
  }

  private aj(Context paramContext)
  {
    this(paramContext, ac.a(paramContext));
  }

  private aj(Context paramContext, j paramj)
  {
    if (paramContext == null)
      throw new IllegalArgumentException("context cannot be null");
    this.b = paramContext.getApplicationContext();
    this.a = paramj;
    this.d = new a();
    this.a.a(new ak(this));
    this.a.a(new al(this));
  }

  public static aj a(Context paramContext)
  {
    try
    {
      if (i == null)
        i = new aj(paramContext);
      aj localaj = i;
      return localaj;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public bf a()
  {
    try
    {
      ah.a().a(ai.O);
      bf localbf = this.c;
      return localbf;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  // ERROR //
  public bf a(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: ifnonnull +20 -> 23
    //   6: new 43	java/lang/IllegalArgumentException
    //   9: dup
    //   10: ldc 110
    //   12: invokespecial 48	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   15: athrow
    //   16: astore 4
    //   18: aload_0
    //   19: monitorexit
    //   20: aload 4
    //   22: athrow
    //   23: aload_0
    //   24: getfield 32	com/google/a/a/a/aj:g	Ljava/util/Map;
    //   27: aload_1
    //   28: invokeinterface 116 2 0
    //   33: checkcast 118	com/google/a/a/a/bf
    //   36: astore_2
    //   37: aload_2
    //   38: ifnonnull +37 -> 75
    //   41: new 118	com/google/a/a/a/bf
    //   44: dup
    //   45: aload_1
    //   46: aload_0
    //   47: invokespecial 121	com/google/a/a/a/bf:<init>	(Ljava/lang/String;Lcom/google/a/a/a/bi;)V
    //   50: astore_2
    //   51: aload_0
    //   52: getfield 32	com/google/a/a/a/aj:g	Ljava/util/Map;
    //   55: aload_1
    //   56: aload_2
    //   57: invokeinterface 125 3 0
    //   62: pop
    //   63: aload_0
    //   64: getfield 107	com/google/a/a/a/aj:c	Lcom/google/a/a/a/bf;
    //   67: ifnonnull +8 -> 75
    //   70: aload_0
    //   71: aload_2
    //   72: putfield 107	com/google/a/a/a/aj:c	Lcom/google/a/a/a/bf;
    //   75: invokestatic 96	com/google/a/a/a/ah:a	()Lcom/google/a/a/a/ah;
    //   78: getstatic 128	com/google/a/a/a/ai:N	Lcom/google/a/a/a/ai;
    //   81: invokevirtual 105	com/google/a/a/a/ah:a	(Lcom/google/a/a/a/ai;)V
    //   84: aload_0
    //   85: monitorexit
    //   86: aload_2
    //   87: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   6	20	16	finally
    //   23	86	16	finally
  }

  // ERROR //
  public void a(Map paramMap)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: ifnonnull +20 -> 23
    //   6: new 43	java/lang/IllegalArgumentException
    //   9: dup
    //   10: ldc 131
    //   12: invokespecial 48	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   15: athrow
    //   16: astore 7
    //   18: aload_0
    //   19: monitorexit
    //   20: aload 7
    //   22: athrow
    //   23: aload_1
    //   24: ldc 133
    //   26: invokestatic 139	java/util/Locale:getDefault	()Ljava/util/Locale;
    //   29: invokestatic 144	com/google/a/a/a/bj:a	(Ljava/util/Locale;)Ljava/lang/String;
    //   32: invokeinterface 125 3 0
    //   37: pop
    //   38: aload_1
    //   39: ldc 146
    //   41: aload_0
    //   42: getfield 63	com/google/a/a/a/aj:d	Lcom/google/a/a/a/a;
    //   45: invokevirtual 149	com/google/a/a/a/a:a	()I
    //   48: invokestatic 155	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   51: invokeinterface 125 3 0
    //   56: pop
    //   57: aload_1
    //   58: ldc 157
    //   60: new 159	java/lang/StringBuilder
    //   63: dup
    //   64: invokespecial 160	java/lang/StringBuilder:<init>	()V
    //   67: aload_0
    //   68: getfield 56	com/google/a/a/a/aj:b	Landroid/content/Context;
    //   71: invokevirtual 164	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   74: invokevirtual 170	android/content/res/Resources:getDisplayMetrics	()Landroid/util/DisplayMetrics;
    //   77: getfield 176	android/util/DisplayMetrics:widthPixels	I
    //   80: invokevirtual 180	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   83: ldc 182
    //   85: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   88: aload_0
    //   89: getfield 56	com/google/a/a/a/aj:b	Landroid/content/Context;
    //   92: invokevirtual 164	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   95: invokevirtual 170	android/content/res/Resources:getDisplayMetrics	()Landroid/util/DisplayMetrics;
    //   98: getfield 188	android/util/DisplayMetrics:heightPixels	I
    //   101: invokevirtual 180	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   104: invokevirtual 191	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   107: invokeinterface 125 3 0
    //   112: pop
    //   113: aload_1
    //   114: ldc 193
    //   116: invokestatic 96	com/google/a/a/a/ah:a	()Lcom/google/a/a/a/ah;
    //   119: invokevirtual 195	com/google/a/a/a/ah:c	()Ljava/lang/String;
    //   122: invokeinterface 125 3 0
    //   127: pop
    //   128: invokestatic 96	com/google/a/a/a/ah:a	()Lcom/google/a/a/a/ah;
    //   131: invokevirtual 197	com/google/a/a/a/ah:b	()Ljava/lang/String;
    //   134: pop
    //   135: aload_0
    //   136: getfield 58	com/google/a/a/a/aj:a	Lcom/google/a/a/a/j;
    //   139: aload_1
    //   140: invokeinterface 199 2 0
    //   145: aload_0
    //   146: aload_1
    //   147: ldc 201
    //   149: invokeinterface 116 2 0
    //   154: checkcast 203	java/lang/String
    //   157: putfield 205	com/google/a/a/a/aj:h	Ljava/lang/String;
    //   160: aload_0
    //   161: monitorexit
    //   162: return
    //
    // Exception table:
    //   from	to	target	type
    //   6	20	16	finally
    //   23	162	16	finally
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.a.aj
 * JD-Core Version:    0.6.2
 */