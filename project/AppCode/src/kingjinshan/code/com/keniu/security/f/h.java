package com.keniu.security.f;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.Writer;
import java.security.MessageDigest;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;

public final class h
{
  private static final String d = "utf-8";
  private String a;
  private Collection b = new LinkedList();
  private Map c = new HashMap();

  private void a(String paramString1, String paramString2, String paramString3)
  {
    j localj = (j)this.c.get(paramString1);
    if (localj == null)
    {
      this.b.add(paramString1);
      localj = new j();
      this.c.put(paramString1, localj);
    }
    if (localj.b.get(paramString2) == null)
      localj.a.add(paramString2);
    localj.b.put(paramString2, paramString3);
  }

  // ERROR //
  private boolean a(java.io.File paramFile, boolean paramBoolean)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: new 56	java/io/ByteArrayOutputStream
    //   5: dup
    //   6: invokespecial 57	java/io/ByteArrayOutputStream:<init>	()V
    //   9: astore 4
    //   11: aload_0
    //   12: new 59	java/io/OutputStreamWriter
    //   15: dup
    //   16: aload 4
    //   18: ldc 8
    //   20: invokespecial 62	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;Ljava/lang/String;)V
    //   23: invokespecial 65	com/keniu/security/f/h:a	(Ljava/io/Writer;)Z
    //   26: ifne +9 -> 35
    //   29: iconst_0
    //   30: istore 10
    //   32: goto +178 -> 210
    //   35: aload 4
    //   37: invokevirtual 69	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   40: astore 12
    //   42: new 71	java/io/FileOutputStream
    //   45: dup
    //   46: aload_1
    //   47: invokespecial 74	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   50: astore 13
    //   52: iload_2
    //   53: ifeq +64 -> 117
    //   56: ldc 76
    //   58: invokestatic 82	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   61: astore 16
    //   63: aload 16
    //   65: aload 12
    //   67: invokevirtual 86	java/security/MessageDigest:update	([B)V
    //   70: aload_0
    //   71: aload 16
    //   73: invokevirtual 89	java/security/MessageDigest:digest	()[B
    //   76: invokestatic 94	com/keniu/security/f/k:a	([B)Ljava/lang/String;
    //   79: putfield 96	com/keniu/security/f/h:a	Ljava/lang/String;
    //   82: aload 13
    //   84: bipush 35
    //   86: invokevirtual 100	java/io/FileOutputStream:write	(I)V
    //   89: aload 13
    //   91: aload_0
    //   92: getfield 96	com/keniu/security/f/h:a	Ljava/lang/String;
    //   95: ldc 8
    //   97: invokevirtual 106	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   100: invokevirtual 108	java/io/FileOutputStream:write	([B)V
    //   103: aload 13
    //   105: bipush 13
    //   107: invokevirtual 100	java/io/FileOutputStream:write	(I)V
    //   110: aload 13
    //   112: bipush 10
    //   114: invokevirtual 100	java/io/FileOutputStream:write	(I)V
    //   117: aload 13
    //   119: aload 12
    //   121: invokevirtual 108	java/io/FileOutputStream:write	([B)V
    //   124: aload 13
    //   126: invokevirtual 111	java/io/FileOutputStream:flush	()V
    //   129: aload 13
    //   131: invokevirtual 114	java/io/FileOutputStream:close	()V
    //   134: iconst_1
    //   135: istore 10
    //   137: goto +73 -> 210
    //   140: astore 9
    //   142: aload_3
    //   143: ifnull +7 -> 150
    //   146: aload_3
    //   147: invokevirtual 114	java/io/FileOutputStream:close	()V
    //   150: iconst_0
    //   151: istore 10
    //   153: goto +57 -> 210
    //   156: astore 5
    //   158: aconst_null
    //   159: astore 6
    //   161: aload 5
    //   163: astore 7
    //   165: aload 6
    //   167: ifnull +8 -> 175
    //   170: aload 6
    //   172: invokevirtual 114	java/io/FileOutputStream:close	()V
    //   175: aload 7
    //   177: athrow
    //   178: astore 15
    //   180: goto -46 -> 134
    //   183: astore 11
    //   185: goto -35 -> 150
    //   188: astore 8
    //   190: goto -15 -> 175
    //   193: astore 7
    //   195: aload 13
    //   197: astore 6
    //   199: goto -34 -> 165
    //   202: astore 14
    //   204: aload 13
    //   206: astore_3
    //   207: goto -65 -> 142
    //   210: iload 10
    //   212: ireturn
    //
    // Exception table:
    //   from	to	target	type
    //   2	52	140	java/lang/Exception
    //   2	52	156	finally
    //   129	134	178	java/lang/Exception
    //   146	150	183	java/lang/Exception
    //   170	175	188	java/lang/Exception
    //   56	129	193	finally
    //   56	129	202	java/lang/Exception
  }

  private boolean a(Writer paramWriter)
  {
    boolean bool;
    try
    {
      BufferedWriter localBufferedWriter = new BufferedWriter(paramWriter);
      Iterator localIterator1 = this.b.iterator();
      while (localIterator1.hasNext())
      {
        String str1 = (String)localIterator1.next();
        localBufferedWriter.write("[" + str1 + "]");
        localBufferedWriter.newLine();
        j localj = (j)this.c.get(str1);
        Iterator localIterator2 = localj.a.iterator();
        while (localIterator2.hasNext())
        {
          String str2 = (String)localIterator2.next();
          String str3 = (String)localj.b.get(str2);
          localBufferedWriter.write(str2 + "=" + str3);
          localBufferedWriter.newLine();
        }
        localBufferedWriter.newLine();
      }
      localBufferedWriter.flush();
      bool = true;
    }
    catch (Exception localException)
    {
      bool = false;
    }
    return bool;
  }

  private void b()
  {
    this.b.clear();
    this.c.clear();
  }

  public final String a(String paramString1, String paramString2)
  {
    j localj = (j)this.c.get(paramString1);
    if (localj != null);
    for (String str = (String)localj.b.get(paramString2); ; str = null)
      return str;
  }

  public final Collection a()
  {
    return this.b;
  }

  public final Collection a(String paramString)
  {
    j localj = (j)this.c.get(paramString);
    if (localj != null);
    for (Collection localCollection = localj.a; ; localCollection = null)
      return localCollection;
  }

  public final boolean a(h paramh)
  {
    if ((paramh != null) && (!k.a(paramh.a)) && (!k.a(this.a)) && (this.a.equalsIgnoreCase(paramh.a)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  // ERROR //
  public final boolean a(java.io.File paramFile)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 174	java/io/FileInputStream
    //   5: dup
    //   6: aload_1
    //   7: invokespecial 175	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   10: astore_3
    //   11: aload_3
    //   12: invokevirtual 179	java/io/FileInputStream:available	()I
    //   15: newarray byte
    //   17: astore 9
    //   19: aload_3
    //   20: aload 9
    //   22: invokevirtual 183	java/io/FileInputStream:read	([B)I
    //   25: pop
    //   26: aload_0
    //   27: aload 9
    //   29: invokevirtual 186	com/keniu/security/f/h:a	([B)Z
    //   32: istore 11
    //   34: iload 11
    //   36: istore 5
    //   38: aload_3
    //   39: invokevirtual 187	java/io/FileInputStream:close	()V
    //   42: iload 5
    //   44: ireturn
    //   45: astore 14
    //   47: aload_2
    //   48: ifnull +7 -> 55
    //   51: aload_2
    //   52: invokevirtual 187	java/io/FileInputStream:close	()V
    //   55: iconst_0
    //   56: istore 5
    //   58: goto -16 -> 42
    //   61: astore 13
    //   63: aconst_null
    //   64: astore_3
    //   65: aload 13
    //   67: astore 7
    //   69: aload_3
    //   70: ifnull +7 -> 77
    //   73: aload_3
    //   74: invokevirtual 187	java/io/FileInputStream:close	()V
    //   77: aload 7
    //   79: athrow
    //   80: astore 12
    //   82: goto -40 -> 42
    //   85: astore 6
    //   87: goto -32 -> 55
    //   90: astore 8
    //   92: goto -15 -> 77
    //   95: astore 7
    //   97: goto -28 -> 69
    //   100: astore 4
    //   102: aload_3
    //   103: astore_2
    //   104: goto -57 -> 47
    //
    // Exception table:
    //   from	to	target	type
    //   2	11	45	java/lang/Exception
    //   2	11	61	finally
    //   38	42	80	java/lang/Exception
    //   51	55	85	java/lang/Exception
    //   73	77	90	java/lang/Exception
    //   11	34	95	finally
    //   11	34	100	java/lang/Exception
  }

  public final boolean a(Reader paramReader)
  {
    boolean bool;
    try
    {
      this.b.clear();
      this.c.clear();
      Object localObject = null;
      BufferedReader localBufferedReader = new BufferedReader(paramReader);
      while (true)
      {
        String str1 = localBufferedReader.readLine();
        if (str1 == null)
          break;
        if ((str1.length() != 0) && (!str1.matches("\\s")))
        {
          switch (str1.charAt(0))
          {
          case '#':
          case ';':
          default:
            if (localObject == null)
              throw new Exception("not found section name");
            break;
          case '[':
            if ((str1.length() <= 2) || (str1.charAt(str1.length() - 1) != ']'))
              throw new Exception("invalid section name");
            String str2 = str1.substring(1, str1.length() - 1);
            j localj = new j();
            this.b.add(str2);
            this.c.put(str2, localj);
            localObject = localj;
            break;
          }
          int i = str1.indexOf('=');
          if (i == -1)
            throw new Exception("invalid key-value format");
          String str3 = str1.substring(0, i);
          String str4 = str1.substring(i + 1, str1.length());
          localObject.a.add(str3);
          localObject.b.put(str3, str4);
        }
      }
      bool = true;
    }
    catch (Exception localException)
    {
      bool = false;
    }
    return bool;
  }

  public final boolean a(byte[] paramArrayOfByte)
  {
    while (true)
    {
      int i;
      boolean bool1;
      try
      {
        i = paramArrayOfByte.length;
        this.a = null;
        if (paramArrayOfByte[0] == 35)
        {
          MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
          localMessageDigest.update(paramArrayOfByte, 35, paramArrayOfByte.length - 35);
          this.a = new String(paramArrayOfByte, 1, 32, "utf-8");
          String str = k.a(localMessageDigest.digest());
          if (this.a.equalsIgnoreCase(str))
            break label128;
          bool1 = false;
          break label126;
          boolean bool2 = a(new InputStreamReader(new ByteArrayInputStream(paramArrayOfByte, j, i), "utf-8"));
          bool1 = bool2;
        }
      }
      catch (Exception localException)
      {
        bool1 = false;
      }
      int j = 0;
      continue;
      label126: return bool1;
      label128: j = 0 + 35;
      i -= 35;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.f.h
 * JD-Core Version:    0.6.2
 */