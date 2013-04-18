package com.jxphone.mosecurity.logic;

import java.io.File;
import java.io.IOException;

public final class g extends Throwable
{
  private static final long a = 1L;
  private static g b;
  private static final String e = "/sdcard/mosecurity/debug.txt";
  private File c;
  private Class d;

  private g(Class paramClass)
  {
    this.d = paramClass;
    this.c = new File("/sdcard/mosecurity/debug.txt");
  }

  private static g a(Class paramClass)
  {
    if (b == null)
      b = new g(paramClass);
    return b;
  }

  // ERROR //
  private void a(java.lang.Object paramObject)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 43	com/jxphone/mosecurity/logic/g:a	()Z
    //   4: ifne +4 -> 8
    //   7: return
    //   8: new 45	java/text/SimpleDateFormat
    //   11: dup
    //   12: ldc 47
    //   14: invokespecial 48	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;)V
    //   17: new 50	java/util/Date
    //   20: dup
    //   21: invokespecial 51	java/util/Date:<init>	()V
    //   24: invokevirtual 55	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   27: astore_2
    //   28: aload_0
    //   29: getfield 32	com/jxphone/mosecurity/logic/g:c	Ljava/io/File;
    //   32: ifnull -25 -> 7
    //   35: aconst_null
    //   36: astore_3
    //   37: new 57	java/io/FileWriter
    //   40: dup
    //   41: aload_0
    //   42: getfield 32	com/jxphone/mosecurity/logic/g:c	Ljava/io/File;
    //   45: iconst_1
    //   46: invokespecial 60	java/io/FileWriter:<init>	(Ljava/io/File;Z)V
    //   49: astore 4
    //   51: aload 4
    //   53: new 62	java/lang/StringBuilder
    //   56: dup
    //   57: invokespecial 63	java/lang/StringBuilder:<init>	()V
    //   60: ldc 65
    //   62: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   65: aload_2
    //   66: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   69: ldc 71
    //   71: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   74: aload_0
    //   75: getfield 25	com/jxphone/mosecurity/logic/g:d	Ljava/lang/Class;
    //   78: invokevirtual 77	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   81: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   84: ldc 79
    //   86: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   89: aload_1
    //   90: invokevirtual 84	java/lang/Object:toString	()Ljava/lang/String;
    //   93: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   96: ldc 86
    //   98: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   101: invokevirtual 87	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   104: invokevirtual 90	java/io/FileWriter:write	(Ljava/lang/String;)V
    //   107: aload 4
    //   109: invokevirtual 93	java/io/FileWriter:close	()V
    //   112: goto -105 -> 7
    //   115: astore 9
    //   117: aload 9
    //   119: invokevirtual 96	java/io/IOException:printStackTrace	()V
    //   122: goto -115 -> 7
    //   125: astore 5
    //   127: aload 5
    //   129: invokevirtual 96	java/io/IOException:printStackTrace	()V
    //   132: aload_3
    //   133: ifnull -126 -> 7
    //   136: aload_3
    //   137: invokevirtual 93	java/io/FileWriter:close	()V
    //   140: goto -133 -> 7
    //   143: astore 8
    //   145: aload 8
    //   147: invokevirtual 96	java/io/IOException:printStackTrace	()V
    //   150: goto -143 -> 7
    //   153: astore 6
    //   155: aload_3
    //   156: ifnull +7 -> 163
    //   159: aload_3
    //   160: invokevirtual 93	java/io/FileWriter:close	()V
    //   163: aload 6
    //   165: athrow
    //   166: astore 7
    //   168: aload 7
    //   170: invokevirtual 96	java/io/IOException:printStackTrace	()V
    //   173: goto -10 -> 163
    //   176: astore 6
    //   178: aload 4
    //   180: astore_3
    //   181: goto -26 -> 155
    //   184: astore 5
    //   186: aload 4
    //   188: astore_3
    //   189: goto -62 -> 127
    //
    // Exception table:
    //   from	to	target	type
    //   107	112	115	java/io/IOException
    //   37	51	125	java/io/IOException
    //   136	140	143	java/io/IOException
    //   37	51	153	finally
    //   127	132	153	finally
    //   159	163	166	java/io/IOException
    //   51	107	176	finally
    //   51	107	184	java/io/IOException
  }

  // ERROR //
  private void a(java.lang.Object paramObject1, java.lang.Object paramObject2)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 43	com/jxphone/mosecurity/logic/g:a	()Z
    //   4: ifne +4 -> 8
    //   7: return
    //   8: new 45	java/text/SimpleDateFormat
    //   11: dup
    //   12: ldc 47
    //   14: invokespecial 48	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;)V
    //   17: new 50	java/util/Date
    //   20: dup
    //   21: invokespecial 51	java/util/Date:<init>	()V
    //   24: invokevirtual 55	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   27: astore_3
    //   28: aload_0
    //   29: getfield 32	com/jxphone/mosecurity/logic/g:c	Ljava/io/File;
    //   32: ifnull -25 -> 7
    //   35: aconst_null
    //   36: astore 4
    //   38: new 57	java/io/FileWriter
    //   41: dup
    //   42: aload_0
    //   43: getfield 32	com/jxphone/mosecurity/logic/g:c	Ljava/io/File;
    //   46: iconst_1
    //   47: invokespecial 60	java/io/FileWriter:<init>	(Ljava/io/File;Z)V
    //   50: astore 5
    //   52: aload 5
    //   54: new 62	java/lang/StringBuilder
    //   57: dup
    //   58: invokespecial 63	java/lang/StringBuilder:<init>	()V
    //   61: ldc 65
    //   63: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   66: aload_3
    //   67: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   70: ldc 71
    //   72: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   75: aload_1
    //   76: invokevirtual 84	java/lang/Object:toString	()Ljava/lang/String;
    //   79: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   82: ldc 79
    //   84: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   87: aload_2
    //   88: invokevirtual 84	java/lang/Object:toString	()Ljava/lang/String;
    //   91: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   94: ldc 86
    //   96: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   99: invokevirtual 87	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   102: invokevirtual 90	java/io/FileWriter:write	(Ljava/lang/String;)V
    //   105: aload 5
    //   107: invokevirtual 93	java/io/FileWriter:close	()V
    //   110: goto -103 -> 7
    //   113: astore 10
    //   115: aload 10
    //   117: invokevirtual 96	java/io/IOException:printStackTrace	()V
    //   120: goto -113 -> 7
    //   123: astore 6
    //   125: aload 6
    //   127: invokevirtual 96	java/io/IOException:printStackTrace	()V
    //   130: aload 4
    //   132: ifnull -125 -> 7
    //   135: aload 4
    //   137: invokevirtual 93	java/io/FileWriter:close	()V
    //   140: goto -133 -> 7
    //   143: astore 9
    //   145: aload 9
    //   147: invokevirtual 96	java/io/IOException:printStackTrace	()V
    //   150: goto -143 -> 7
    //   153: astore 7
    //   155: aload 4
    //   157: ifnull +8 -> 165
    //   160: aload 4
    //   162: invokevirtual 93	java/io/FileWriter:close	()V
    //   165: aload 7
    //   167: athrow
    //   168: astore 8
    //   170: aload 8
    //   172: invokevirtual 96	java/io/IOException:printStackTrace	()V
    //   175: goto -10 -> 165
    //   178: astore 7
    //   180: aload 5
    //   182: astore 4
    //   184: goto -29 -> 155
    //   187: astore 6
    //   189: aload 5
    //   191: astore 4
    //   193: goto -68 -> 125
    //
    // Exception table:
    //   from	to	target	type
    //   105	110	113	java/io/IOException
    //   38	52	123	java/io/IOException
    //   135	140	143	java/io/IOException
    //   38	52	153	finally
    //   125	130	153	finally
    //   160	165	168	java/io/IOException
    //   52	105	178	finally
    //   52	105	187	java/io/IOException
  }

  private boolean a()
  {
    if (!this.c.exists());
    try
    {
      this.c.createNewFile();
      if ((this.c.exists()) && (this.c.canWrite()))
      {
        bool = true;
        return bool;
      }
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        localIOException.printStackTrace();
        continue;
        boolean bool = false;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.logic.g
 * JD-Core Version:    0.6.2
 */