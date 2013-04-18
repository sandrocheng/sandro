package com.c.a.a;

import android.os.SystemClock;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.util.zip.DeflaterOutputStream;

public final class s
{
  public static String a = "000000000000001";
  public static String b = "";
  public static int c;
  public static int d;
  public static int e;
  public static String f = "";
  public static long g;
  public static int h;
  public static int i;
  public static int j;
  public static String k = "";
  public static String l = "";
  public static int m;
  public static boolean n = true;
  public static int o;
  public static int p;
  public static int q;
  public static int r;
  public static int s;
  public static int t;
  public static int u;
  public static String v;
  public static String w = "";
  private static MessageDigest x;

  static
  {
    try
    {
      x = MessageDigest.getInstance("MD5");
      label42: return;
    }
    catch (Exception localException)
    {
      break label42;
    }
  }

  static String a()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    long l1 = (SystemClock.elapsedRealtime() - g) / 1000L;
    if ("wd".equals(f))
    {
      if (l1 > 5L)
      {
        c = 0;
        d = 0;
        e = 0;
        h = 0;
        i = 0;
        j = 0;
        l1 = 0L;
      }
      localStringBuilder.append(c).append(",").append(d).append(",").append(e).append(",").append(l1).append(",").append(h).append(",").append(i).append(",").append(j).append(";");
      if (!n)
        break label417;
      localStringBuilder.append(k).append(",").append(l).append(",").append(t).append(",").append(u).append(",").append(m).append("|").append(v).append(";");
      if ((!h.a(k)) || (t < 0) || (u < 0))
        break label560;
    }
    label417: label560: for (int i1 = 1; ; i1 = 0)
      while (true)
      {
        label240: if (h.a(w))
        {
          localStringBuilder.append(w).append(";");
          i1 = 1;
        }
        String str2;
        if (i1 != 0)
        {
          new StringBuilder().append("maptag = ").append(localStringBuilder.toString()).toString();
          p.a();
          str2 = a(localStringBuilder.toString());
        }
        try
        {
          String str3 = c.a(b(localStringBuilder.toString()), "iso-8859-1");
          localObject = str3;
        }
        catch (Exception localException1)
        {
          try
          {
            String str4 = ((String)localObject).replaceAll("\n", "").replaceAll("\r", "");
            for (Object localObject = str4; ; localObject = "")
            {
              label345: for (String str1 = "[Android][" + str2 + "]" + (String)localObject; ; str1 = new String())
              {
                return str1;
                if (l1 <= 60L)
                  break;
                c = 0;
                d = 0;
                e = 0;
                h = 0;
                i = 0;
                j = 0;
                l1 = 0L;
                break;
                localStringBuilder.append(k).append(",").append(l).append(",").append(o).append(",").append(p).append(",").append(q).append(",").append(r).append(",").append(s).append(",").append(m).append(";");
                if ((!h.a(k)) || (o < 0) || (p < 0))
                  break label560;
                i1 = 1;
                break label240;
              }
              localException1 = localException1;
            }
          }
          catch (Exception localException2)
          {
            break label345;
          }
        }
      }
  }

  // ERROR //
  public static String a(android.content.Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_0
    //   4: ldc 183
    //   6: iconst_0
    //   7: invokevirtual 189	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   10: astore 4
    //   12: aload 4
    //   14: ldc 191
    //   16: lconst_0
    //   17: invokeinterface 197 4 0
    //   22: lstore 5
    //   24: lload 5
    //   26: aload 4
    //   28: ldc 199
    //   30: lconst_0
    //   31: invokeinterface 197 4 0
    //   36: lcmp
    //   37: ifge +107 -> 144
    //   40: aload 4
    //   42: invokeinterface 203 1 0
    //   47: astore 7
    //   49: aload 4
    //   51: new 71	java/lang/StringBuilder
    //   54: dup
    //   55: invokespecial 72	java/lang/StringBuilder:<init>	()V
    //   58: ldc 205
    //   60: invokevirtual 113	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   63: lload 5
    //   65: ldc2_w 206
    //   68: lrem
    //   69: invokevirtual 116	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   72: invokevirtual 138	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   75: aconst_null
    //   76: invokeinterface 210 3 0
    //   81: astore 8
    //   83: aload 8
    //   85: astore_2
    //   86: lload 5
    //   88: lconst_1
    //   89: ladd
    //   90: lstore 9
    //   92: lload 9
    //   94: lconst_0
    //   95: lcmp
    //   96: ifge +6 -> 102
    //   99: lconst_0
    //   100: lstore 9
    //   102: aload 7
    //   104: ldc 191
    //   106: lload 9
    //   108: invokeinterface 216 4 0
    //   113: pop
    //   114: aload 7
    //   116: invokeinterface 220 1 0
    //   121: pop
    //   122: ldc 2
    //   124: monitorexit
    //   125: aload_2
    //   126: areturn
    //   127: astore_3
    //   128: ldc 2
    //   130: monitorexit
    //   131: aload_3
    //   132: athrow
    //   133: astore_1
    //   134: aconst_null
    //   135: astore_2
    //   136: goto -14 -> 122
    //   139: astore 11
    //   141: goto -19 -> 122
    //   144: aconst_null
    //   145: astore_2
    //   146: goto -24 -> 122
    //
    // Exception table:
    //   from	to	target	type
    //   3	83	127	finally
    //   102	122	127	finally
    //   3	83	133	java/lang/Exception
    //   102	122	139	java/lang/Exception
  }

  // ERROR //
  private static String a(String paramString)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: new 86	java/lang/String
    //   6: dup
    //   7: invokespecial 180	java/lang/String:<init>	()V
    //   10: astore_1
    //   11: getstatic 65	com/c/a/a/s:x	Ljava/security/MessageDigest;
    //   14: ifnull +55 -> 69
    //   17: getstatic 65	com/c/a/a/s:x	Ljava/security/MessageDigest;
    //   20: new 71	java/lang/StringBuilder
    //   23: dup
    //   24: invokespecial 72	java/lang/StringBuilder:<init>	()V
    //   27: ldc 222
    //   29: invokevirtual 113	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: aload_0
    //   33: invokevirtual 113	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   36: ldc 224
    //   38: invokevirtual 113	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   41: invokevirtual 138	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   44: invokevirtual 228	java/lang/String:getBytes	()[B
    //   47: invokevirtual 232	java/security/MessageDigest:digest	([B)[B
    //   50: astore 4
    //   52: aload 4
    //   54: ifnull +15 -> 69
    //   57: aload 4
    //   59: ldc 150
    //   61: invokestatic 155	com/c/a/a/c:a	([BLjava/lang/String;)Ljava/lang/String;
    //   64: astore 5
    //   66: aload 5
    //   68: astore_1
    //   69: ldc 2
    //   71: monitorexit
    //   72: aload_1
    //   73: areturn
    //   74: astore_3
    //   75: ldc 2
    //   77: monitorexit
    //   78: aload_3
    //   79: athrow
    //   80: astore_2
    //   81: goto -12 -> 69
    //
    // Exception table:
    //   from	to	target	type
    //   3	11	74	finally
    //   11	66	74	finally
    //   11	66	80	java/lang/Exception
  }

  // ERROR //
  public static void a(android.content.Context paramContext, String paramString)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_1
    //   4: invokestatic 133	com/c/a/a/h:a	(Ljava/lang/String;)Z
    //   7: istore 4
    //   9: iload 4
    //   11: ifne +7 -> 18
    //   14: ldc 2
    //   16: monitorexit
    //   17: return
    //   18: aload_0
    //   19: ldc 183
    //   21: iconst_0
    //   22: invokevirtual 189	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   25: astore 5
    //   27: aload 5
    //   29: ldc 199
    //   31: lconst_0
    //   32: invokeinterface 197 4 0
    //   37: lstore 6
    //   39: aload 5
    //   41: invokeinterface 203 1 0
    //   46: astore 8
    //   48: aload 8
    //   50: new 71	java/lang/StringBuilder
    //   53: dup
    //   54: invokespecial 72	java/lang/StringBuilder:<init>	()V
    //   57: ldc 205
    //   59: invokevirtual 113	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   62: lload 6
    //   64: ldc2_w 206
    //   67: lrem
    //   68: invokevirtual 116	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   71: invokevirtual 138	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   74: aload_1
    //   75: invokeinterface 237 3 0
    //   80: pop
    //   81: lload 6
    //   83: lconst_1
    //   84: ladd
    //   85: lstore 10
    //   87: lload 10
    //   89: lconst_0
    //   90: lcmp
    //   91: ifge +36 -> 127
    //   94: aload 8
    //   96: ldc 199
    //   98: lconst_0
    //   99: invokeinterface 216 4 0
    //   104: pop
    //   105: aload 8
    //   107: ldc 191
    //   109: lconst_0
    //   110: invokeinterface 216 4 0
    //   115: pop
    //   116: aload 8
    //   118: invokeinterface 220 1 0
    //   123: pop
    //   124: goto -110 -> 14
    //   127: aload 8
    //   129: ldc 199
    //   131: lload 10
    //   133: invokeinterface 216 4 0
    //   138: pop
    //   139: goto -23 -> 116
    //   142: astore_2
    //   143: ldc 2
    //   145: monitorexit
    //   146: aload_2
    //   147: athrow
    //   148: astore_3
    //   149: goto -135 -> 14
    //
    // Exception table:
    //   from	to	target	type
    //   3	9	142	finally
    //   18	139	142	finally
    //   3	9	148	java/lang/Exception
    //   18	139	148	java/lang/Exception
  }

  private static byte[] b(String paramString)
  {
    try
    {
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      DeflaterOutputStream localDeflaterOutputStream = new DeflaterOutputStream(localByteArrayOutputStream);
      localDeflaterOutputStream.write(paramString.getBytes());
      localDeflaterOutputStream.close();
      try
      {
        localByteArrayOutputStream.close();
        label33: byte[] arrayOfByte2 = localByteArrayOutputStream.toByteArray();
        arrayOfByte1 = arrayOfByte2;
        return arrayOfByte1;
      }
      catch (IOException localIOException)
      {
        break label33;
      }
    }
    catch (Exception localException)
    {
      while (true)
        byte[] arrayOfByte1 = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.c.a.a.s
 * JD-Core Version:    0.6.2
 */