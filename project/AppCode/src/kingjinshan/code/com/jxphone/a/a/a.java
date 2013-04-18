package com.jxphone.a.a;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import com.keniu.security.util.at;
import java.io.File;
import java.util.concurrent.ThreadPoolExecutor;

public final class a
  implements f
{
  private final File a;
  private final String b;
  private boolean c = true;
  private ThreadPoolExecutor d;
  private final NetworkInfo[] e;
  private Context f;

  private a(Context paramContext, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder(32);
    localStringBuilder.append("http://").append(paramString);
    if (!paramString.endsWith("/"))
      localStringBuilder.append('/');
    localStringBuilder.append("kmbg.gif?");
    this.b = localStringBuilder.toString();
    this.a = new File(paramContext.getCacheDir().getAbsolutePath() + File.separatorChar + "cache.data");
    this.f = paramContext.getApplicationContext();
    this.e = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getAllNetworkInfo();
  }

  public static a a(Context paramContext, String paramString)
  {
    return new a(paramContext, paramString);
  }

  private void a(String paramString)
  {
    d locald = new d(this, paramString);
    if (this.d == null)
      locald.start();
    while (true)
    {
      return;
      this.d.submit(locald);
    }
  }

  private static void a(StringBuilder paramStringBuilder, String[][] paramArrayOfString)
  {
    int i = paramArrayOfString.length;
    for (int j = 0; j < i; j++)
    {
      String[] arrayOfString = paramArrayOfString[j];
      if ((arrayOfString != null) && (arrayOfString.length == 2))
        paramStringBuilder.append(arrayOfString[0]).append('=').append(arrayOfString[1]).append('&');
    }
    int k = paramStringBuilder.length();
    paramStringBuilder.delete(k - 1, k);
    int m = paramStringBuilder.length();
    for (int n = 0; n < m; n++)
      if (paramStringBuilder.charAt(n) == ' ')
        paramStringBuilder.setCharAt(n, '+');
  }

  private void a(ThreadPoolExecutor paramThreadPoolExecutor)
  {
    this.d = paramThreadPoolExecutor;
  }

  // ERROR //
  private void b(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: getfield 78	com/jxphone/a/a/a:a	Ljava/io/File;
    //   6: invokevirtual 142	java/io/File:isFile	()Z
    //   9: ifne +16 -> 25
    //   12: aload_0
    //   13: getfield 78	com/jxphone/a/a/a:a	Ljava/io/File;
    //   16: invokevirtual 145	java/io/File:createNewFile	()Z
    //   19: ifne +6 -> 25
    //   22: goto +179 -> 201
    //   25: new 147	java/io/FileOutputStream
    //   28: dup
    //   29: aload_0
    //   30: getfield 78	com/jxphone/a/a/a:a	Ljava/io/File;
    //   33: iconst_1
    //   34: invokespecial 150	java/io/FileOutputStream:<init>	(Ljava/io/File;Z)V
    //   37: astore 4
    //   39: aload 4
    //   41: aload_1
    //   42: invokevirtual 154	java/lang/String:getBytes	()[B
    //   45: invokevirtual 158	java/io/FileOutputStream:write	([B)V
    //   48: aload 4
    //   50: bipush 10
    //   52: invokevirtual 160	java/io/FileOutputStream:write	(I)V
    //   55: aload_0
    //   56: invokevirtual 164	java/lang/Object:getClass	()Ljava/lang/Class;
    //   59: invokevirtual 169	java/lang/Class:getName	()Ljava/lang/String;
    //   62: ldc 171
    //   64: invokestatic 177	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   67: pop
    //   68: aload 4
    //   70: invokevirtual 180	java/io/FileOutputStream:close	()V
    //   73: goto +128 -> 201
    //   76: astore 15
    //   78: aload_0
    //   79: invokevirtual 164	java/lang/Object:getClass	()Ljava/lang/Class;
    //   82: invokevirtual 169	java/lang/Class:getName	()Ljava/lang/String;
    //   85: ldc 182
    //   87: invokestatic 184	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   90: pop
    //   91: goto +110 -> 201
    //   94: astore 8
    //   96: aload_0
    //   97: invokevirtual 164	java/lang/Object:getClass	()Ljava/lang/Class;
    //   100: invokevirtual 169	java/lang/Class:getName	()Ljava/lang/String;
    //   103: ldc 186
    //   105: invokestatic 184	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   108: pop
    //   109: aload_2
    //   110: ifnull +91 -> 201
    //   113: aload_2
    //   114: invokevirtual 180	java/io/FileOutputStream:close	()V
    //   117: goto +84 -> 201
    //   120: astore 11
    //   122: aload_0
    //   123: invokevirtual 164	java/lang/Object:getClass	()Ljava/lang/Class;
    //   126: invokevirtual 169	java/lang/Class:getName	()Ljava/lang/String;
    //   129: ldc 182
    //   131: invokestatic 184	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   134: pop
    //   135: goto +66 -> 201
    //   138: astore_3
    //   139: aconst_null
    //   140: astore 4
    //   142: aload_3
    //   143: astore 5
    //   145: aload 4
    //   147: ifnull +8 -> 155
    //   150: aload 4
    //   152: invokevirtual 180	java/io/FileOutputStream:close	()V
    //   155: aload 5
    //   157: athrow
    //   158: astore 6
    //   160: aload_0
    //   161: invokevirtual 164	java/lang/Object:getClass	()Ljava/lang/Class;
    //   164: invokevirtual 169	java/lang/Class:getName	()Ljava/lang/String;
    //   167: ldc 182
    //   169: invokestatic 184	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   172: pop
    //   173: goto -18 -> 155
    //   176: astore 5
    //   178: goto -33 -> 145
    //   181: astore 9
    //   183: aload_2
    //   184: astore 4
    //   186: aload 9
    //   188: astore 5
    //   190: goto -45 -> 145
    //   193: astore 13
    //   195: aload 4
    //   197: astore_2
    //   198: goto -102 -> 96
    //   201: return
    //
    // Exception table:
    //   from	to	target	type
    //   68	73	76	java/io/IOException
    //   2	39	94	java/io/IOException
    //   113	117	120	java/io/IOException
    //   2	39	138	finally
    //   150	155	158	java/io/IOException
    //   39	68	176	finally
    //   96	109	181	finally
    //   39	68	193	java/io/IOException
  }

  private boolean b()
  {
    NetworkInfo[] arrayOfNetworkInfo = this.e;
    int i = arrayOfNetworkInfo.length;
    int j = 0;
    if (j < i)
      if (arrayOfNetworkInfo[j].getState() != NetworkInfo.State.CONNECTED);
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      j++;
      break;
    }
  }

  public final void a(boolean paramBoolean)
  {
    this.c = paramBoolean;
  }

  public final void a(byte[] paramArrayOfByte, h paramh, g paramg, String paramString)
  {
    c localc = new c(this, paramArrayOfByte, paramh, paramg, paramString);
    if (this.d == null)
      localc.start();
    while (true)
    {
      return;
      this.d.submit(localc);
    }
  }

  public final void a(String[][] paramArrayOfString)
  {
    a(paramArrayOfString, false);
  }

  public final void a(String[][] paramArrayOfString, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    a(localStringBuilder, paramArrayOfString);
    String str = localStringBuilder.toString();
    if (paramBoolean)
      if (b())
        a(str);
    while (true)
    {
      return;
      if (at.b(this.f))
        a(str);
    }
  }

  public final boolean a()
  {
    return this.c;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.a.a.a
 * JD-Core Version:    0.6.2
 */