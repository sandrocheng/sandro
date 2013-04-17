package com.tencent.lbsapi.core;

import android.os.Environment;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import java.io.File;
import java.security.MessageDigest;
import java.util.Calendar;

public class b
{
  public static long a()
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.set(1970, 0, 1, 8, 0, 0);
    return (Calendar.getInstance().getTimeInMillis() - localCalendar.getTimeInMillis()) / 1000L;
  }

  // ERROR //
  public static Object a(byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: new 32	java/io/ByteArrayInputStream
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 35	java/io/ByteArrayInputStream:<init>	([B)V
    //   8: astore_1
    //   9: new 37	java/io/ObjectInputStream
    //   12: dup
    //   13: aload_1
    //   14: invokespecial 40	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   17: astore_2
    //   18: aload_2
    //   19: invokevirtual 44	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   22: astore 10
    //   24: aload 10
    //   26: astore 7
    //   28: aload_1
    //   29: ifnull +7 -> 36
    //   32: aload_1
    //   33: invokevirtual 47	java/io/ByteArrayInputStream:close	()V
    //   36: aload_2
    //   37: ifnull +7 -> 44
    //   40: aload_2
    //   41: invokevirtual 48	java/io/ObjectInputStream:close	()V
    //   44: aload 7
    //   46: areturn
    //   47: astore_3
    //   48: aconst_null
    //   49: astore_2
    //   50: aload_3
    //   51: invokevirtual 51	java/lang/Exception:printStackTrace	()V
    //   54: aload_1
    //   55: ifnull +7 -> 62
    //   58: aload_1
    //   59: invokevirtual 47	java/io/ByteArrayInputStream:close	()V
    //   62: aconst_null
    //   63: astore 7
    //   65: aload_2
    //   66: ifnull -22 -> 44
    //   69: aload_2
    //   70: invokevirtual 48	java/io/ObjectInputStream:close	()V
    //   73: aconst_null
    //   74: astore 7
    //   76: goto -32 -> 44
    //   79: astore 8
    //   81: aconst_null
    //   82: astore 7
    //   84: goto -40 -> 44
    //   87: astore 13
    //   89: aconst_null
    //   90: astore_2
    //   91: aload 13
    //   93: astore 4
    //   95: aload_1
    //   96: ifnull +7 -> 103
    //   99: aload_1
    //   100: invokevirtual 47	java/io/ByteArrayInputStream:close	()V
    //   103: aload_2
    //   104: ifnull +7 -> 111
    //   107: aload_2
    //   108: invokevirtual 48	java/io/ObjectInputStream:close	()V
    //   111: aload 4
    //   113: athrow
    //   114: astore 12
    //   116: goto -80 -> 36
    //   119: astore 11
    //   121: goto -77 -> 44
    //   124: astore 9
    //   126: goto -64 -> 62
    //   129: astore 6
    //   131: goto -28 -> 103
    //   134: astore 5
    //   136: goto -25 -> 111
    //   139: astore 4
    //   141: goto -46 -> 95
    //   144: astore_3
    //   145: goto -95 -> 50
    //
    // Exception table:
    //   from	to	target	type
    //   9	18	47	java/lang/Exception
    //   69	73	79	java/io/IOException
    //   9	18	87	finally
    //   32	36	114	java/io/IOException
    //   40	44	119	java/io/IOException
    //   58	62	124	java/io/IOException
    //   99	103	129	java/io/IOException
    //   107	111	134	java/io/IOException
    //   18	24	139	finally
    //   50	54	139	finally
    //   18	24	144	java/lang/Exception
  }

  // ERROR //
  public static void a(String paramString, byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 54	java/io/FileOutputStream
    //   5: dup
    //   6: new 56	java/lang/StringBuilder
    //   9: dup
    //   10: invokespecial 57	java/lang/StringBuilder:<init>	()V
    //   13: invokestatic 63	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   16: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   19: ldc 69
    //   21: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   24: aload_0
    //   25: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   28: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   31: invokespecial 79	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   34: astore_3
    //   35: aload_3
    //   36: aload_1
    //   37: invokevirtual 82	java/io/FileOutputStream:write	([B)V
    //   40: aload_3
    //   41: ifnull +7 -> 48
    //   44: aload_3
    //   45: invokevirtual 83	java/io/FileOutputStream:close	()V
    //   48: return
    //   49: astore 8
    //   51: aload 8
    //   53: invokevirtual 84	java/io/IOException:printStackTrace	()V
    //   56: goto -8 -> 48
    //   59: astore 4
    //   61: aconst_null
    //   62: astore_3
    //   63: aload 4
    //   65: invokevirtual 51	java/lang/Exception:printStackTrace	()V
    //   68: aload_3
    //   69: ifnull -21 -> 48
    //   72: aload_3
    //   73: invokevirtual 83	java/io/FileOutputStream:close	()V
    //   76: goto -28 -> 48
    //   79: astore 7
    //   81: aload 7
    //   83: invokevirtual 84	java/io/IOException:printStackTrace	()V
    //   86: goto -38 -> 48
    //   89: astore 5
    //   91: aload_2
    //   92: ifnull +7 -> 99
    //   95: aload_2
    //   96: invokevirtual 83	java/io/FileOutputStream:close	()V
    //   99: aload 5
    //   101: athrow
    //   102: astore 6
    //   104: aload 6
    //   106: invokevirtual 84	java/io/IOException:printStackTrace	()V
    //   109: goto -10 -> 99
    //   112: astore 5
    //   114: aload_3
    //   115: astore_2
    //   116: goto -25 -> 91
    //   119: astore 4
    //   121: goto -58 -> 63
    //
    // Exception table:
    //   from	to	target	type
    //   44	48	49	java/io/IOException
    //   2	35	59	java/lang/Exception
    //   72	76	79	java/io/IOException
    //   2	35	89	finally
    //   95	99	102	java/io/IOException
    //   35	40	112	finally
    //   63	68	112	finally
    //   35	40	119	java/lang/Exception
  }

  public static byte[] a(JceStruct paramJceStruct)
  {
    JceOutputStream localJceOutputStream = new JceOutputStream();
    paramJceStruct.writeTo(localJceOutputStream);
    return localJceOutputStream.toByteArray();
  }

  // ERROR //
  public static byte[] a(Object paramObject)
  {
    // Byte code:
    //   0: new 101	java/io/ByteArrayOutputStream
    //   3: dup
    //   4: sipush 4096
    //   7: invokespecial 104	java/io/ByteArrayOutputStream:<init>	(I)V
    //   10: astore_1
    //   11: new 106	java/io/ObjectOutputStream
    //   14: dup
    //   15: aload_1
    //   16: invokespecial 109	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   19: astore_2
    //   20: aload_2
    //   21: aload_0
    //   22: invokevirtual 113	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   25: aload_1
    //   26: invokevirtual 114	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   29: astore 10
    //   31: aload 10
    //   33: astore 7
    //   35: aload_1
    //   36: ifnull +7 -> 43
    //   39: aload_1
    //   40: invokevirtual 115	java/io/ByteArrayOutputStream:close	()V
    //   43: aload_2
    //   44: ifnull +7 -> 51
    //   47: aload_2
    //   48: invokevirtual 116	java/io/ObjectOutputStream:close	()V
    //   51: aload 7
    //   53: areturn
    //   54: astore_3
    //   55: aconst_null
    //   56: astore_2
    //   57: aload_3
    //   58: invokevirtual 84	java/io/IOException:printStackTrace	()V
    //   61: aload_1
    //   62: ifnull +7 -> 69
    //   65: aload_1
    //   66: invokevirtual 115	java/io/ByteArrayOutputStream:close	()V
    //   69: aconst_null
    //   70: astore 7
    //   72: aload_2
    //   73: ifnull -22 -> 51
    //   76: aload_2
    //   77: invokevirtual 116	java/io/ObjectOutputStream:close	()V
    //   80: aconst_null
    //   81: astore 7
    //   83: goto -32 -> 51
    //   86: astore 8
    //   88: aconst_null
    //   89: astore 7
    //   91: goto -40 -> 51
    //   94: astore 13
    //   96: aconst_null
    //   97: astore_2
    //   98: aload 13
    //   100: astore 4
    //   102: aload_1
    //   103: ifnull +7 -> 110
    //   106: aload_1
    //   107: invokevirtual 115	java/io/ByteArrayOutputStream:close	()V
    //   110: aload_2
    //   111: ifnull +7 -> 118
    //   114: aload_2
    //   115: invokevirtual 116	java/io/ObjectOutputStream:close	()V
    //   118: aload 4
    //   120: athrow
    //   121: astore 12
    //   123: goto -80 -> 43
    //   126: astore 11
    //   128: goto -77 -> 51
    //   131: astore 9
    //   133: goto -64 -> 69
    //   136: astore 6
    //   138: goto -28 -> 110
    //   141: astore 5
    //   143: goto -25 -> 118
    //   146: astore 4
    //   148: goto -46 -> 102
    //   151: astore_3
    //   152: goto -95 -> 57
    //
    // Exception table:
    //   from	to	target	type
    //   11	20	54	java/io/IOException
    //   76	80	86	java/io/IOException
    //   11	20	94	finally
    //   39	43	121	java/io/IOException
    //   47	51	126	java/io/IOException
    //   65	69	131	java/io/IOException
    //   106	110	136	java/io/IOException
    //   114	118	141	java/io/IOException
    //   20	31	146	finally
    //   57	61	146	finally
    //   20	31	151	java/io/IOException
  }

  // ERROR //
  public static byte[] a(String paramString)
  {
    // Byte code:
    //   0: new 119	java/io/File
    //   3: dup
    //   4: new 56	java/lang/StringBuilder
    //   7: dup
    //   8: invokespecial 57	java/lang/StringBuilder:<init>	()V
    //   11: invokestatic 63	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   14: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   17: ldc 69
    //   19: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   22: aload_0
    //   23: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   26: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   29: invokespecial 120	java/io/File:<init>	(Ljava/lang/String;)V
    //   32: astore_1
    //   33: aload_1
    //   34: invokevirtual 124	java/io/File:exists	()Z
    //   37: istore_2
    //   38: aconst_null
    //   39: astore_3
    //   40: iload_2
    //   41: ifne +5 -> 46
    //   44: aload_3
    //   45: areturn
    //   46: ldc2_w 125
    //   49: aload_1
    //   50: invokevirtual 129	java/io/File:length	()J
    //   53: ladd
    //   54: l2i
    //   55: newarray byte
    //   57: astore 4
    //   59: new 131	java/io/FileInputStream
    //   62: dup
    //   63: aload_1
    //   64: invokespecial 134	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   67: astore 5
    //   69: aload 5
    //   71: aload 4
    //   73: invokevirtual 138	java/io/FileInputStream:read	([B)I
    //   76: pop
    //   77: aload 5
    //   79: ifnull +8 -> 87
    //   82: aload 5
    //   84: invokevirtual 139	java/io/FileInputStream:close	()V
    //   87: aload 4
    //   89: astore_3
    //   90: goto -46 -> 44
    //   93: astore 11
    //   95: aload 11
    //   97: invokevirtual 84	java/io/IOException:printStackTrace	()V
    //   100: goto -13 -> 87
    //   103: astore 6
    //   105: aconst_null
    //   106: astore 5
    //   108: aload 6
    //   110: invokevirtual 51	java/lang/Exception:printStackTrace	()V
    //   113: aconst_null
    //   114: astore_3
    //   115: aload 5
    //   117: ifnull -73 -> 44
    //   120: aload 5
    //   122: invokevirtual 139	java/io/FileInputStream:close	()V
    //   125: aconst_null
    //   126: astore_3
    //   127: goto -83 -> 44
    //   130: astore 9
    //   132: aload 9
    //   134: invokevirtual 84	java/io/IOException:printStackTrace	()V
    //   137: aconst_null
    //   138: astore_3
    //   139: goto -95 -> 44
    //   142: astore 12
    //   144: aconst_null
    //   145: astore 5
    //   147: aload 12
    //   149: astore 7
    //   151: aload 5
    //   153: ifnull +8 -> 161
    //   156: aload 5
    //   158: invokevirtual 139	java/io/FileInputStream:close	()V
    //   161: aload 7
    //   163: athrow
    //   164: astore 8
    //   166: aload 8
    //   168: invokevirtual 84	java/io/IOException:printStackTrace	()V
    //   171: goto -10 -> 161
    //   174: astore 7
    //   176: goto -25 -> 151
    //   179: astore 6
    //   181: goto -73 -> 108
    //
    // Exception table:
    //   from	to	target	type
    //   82	87	93	java/io/IOException
    //   59	69	103	java/lang/Exception
    //   120	125	130	java/io/IOException
    //   59	69	142	finally
    //   156	161	164	java/io/IOException
    //   69	77	174	finally
    //   108	113	174	finally
    //   69	77	179	java/lang/Exception
  }

  public static byte[] a(byte[] paramArrayOfByte, String paramString1, String paramString2)
  {
    int i = 0;
    String str1 = c(paramString2);
    String str2 = paramString1 + str1;
    byte[] arrayOfByte2;
    byte[] arrayOfByte1;
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(str2.getBytes());
      arrayOfByte2 = localMessageDigest.digest();
      char[] arrayOfChar1 = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };
      int j = arrayOfByte2.length;
      char[] arrayOfChar2 = new char[j * 2];
      int k = 0;
      while (i < j)
      {
        int m = arrayOfByte2[i];
        int n = k + 1;
        arrayOfChar2[k] = arrayOfChar1[(0xF & m >> 4)];
        k = n + 1;
        arrayOfChar2[n] = arrayOfChar1[(m & 0xF)];
        i++;
      }
    }
    catch (Exception localException)
    {
      arrayOfByte1 = null;
    }
    while (true)
    {
      return arrayOfByte1;
      arrayOfByte1 = new a().b(paramArrayOfByte, arrayOfByte2);
    }
  }

  public static void b(String paramString)
  {
    File localFile = new File(Environment.getExternalStorageDirectory() + "//" + paramString);
    if (localFile.exists())
      localFile.delete();
  }

  public static byte[] b(byte[] paramArrayOfByte, String paramString1, String paramString2)
  {
    int i = 0;
    String str1 = c(paramString2);
    String str2 = paramString1 + str1;
    byte[] arrayOfByte2;
    byte[] arrayOfByte1;
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(str2.getBytes());
      arrayOfByte2 = localMessageDigest.digest();
      char[] arrayOfChar1 = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };
      int j = arrayOfByte2.length;
      char[] arrayOfChar2 = new char[j * 2];
      int k = 0;
      while (i < j)
      {
        int m = arrayOfByte2[i];
        int n = k + 1;
        arrayOfChar2[k] = arrayOfChar1[(0xF & m >> 4)];
        k = n + 1;
        arrayOfChar2[n] = arrayOfChar1[(m & 0xF)];
        i++;
      }
    }
    catch (Exception localException)
    {
      arrayOfByte1 = null;
    }
    while (true)
    {
      return arrayOfByte1;
      arrayOfByte1 = new a().a(paramArrayOfByte, arrayOfByte2);
    }
  }

  public static String c(String paramString)
  {
    int i = 0;
    char[] arrayOfChar1 = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };
    try
    {
      byte[] arrayOfByte1 = paramString.getBytes();
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(arrayOfByte1);
      byte[] arrayOfByte2 = localMessageDigest.digest();
      int j = arrayOfByte2.length;
      char[] arrayOfChar2 = new char[j * 2];
      int k = 0;
      while (i < j)
      {
        int m = arrayOfByte2[i];
        int n = k + 1;
        arrayOfChar2[k] = arrayOfChar1[(0xF & m >> 4)];
        k = n + 1;
        arrayOfChar2[n] = arrayOfChar1[(m & 0xF)];
        i++;
      }
      str = new String(arrayOfChar2);
      return str;
    }
    catch (Exception localException)
    {
      while (true)
        String str = "";
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.lbsapi.core.b
 * JD-Core Version:    0.6.2
 */