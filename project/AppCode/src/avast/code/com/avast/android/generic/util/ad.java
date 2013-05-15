package com.avast.android.generic.util;

import android.os.Environment;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class ad
{
  private boolean a = false;

  private List a(File paramFile)
  {
    int i = 0;
    ArrayList localArrayList = new ArrayList();
    File[] arrayOfFile = paramFile.listFiles();
    if (arrayOfFile == null);
    while (true)
    {
      return localArrayList;
      int j = arrayOfFile.length;
      label100: for (int k = 0; ; k++)
      {
        while (true)
        {
          if (k >= j)
            break label106;
          File localFile2 = arrayOfFile[k];
          if ((!localFile2.isDirectory()) || (!b(localFile2)))
            break label100;
          try
          {
            localArrayList.add(paramFile.getCanonicalPath());
          }
          catch (IOException localIOException)
          {
            m.a("Can't resolve symlinks to external storage dir.", localIOException);
            localArrayList.add(paramFile.getAbsolutePath());
          }
        }
        break;
      }
      label106: int m = arrayOfFile.length;
      while (i < m)
      {
        File localFile1 = arrayOfFile[i];
        if (localFile1.isDirectory())
          localArrayList.addAll(a(localFile1));
        i++;
      }
    }
  }

  private void a(List paramList)
  {
    for (int i = 0; (i < paramList.size()) && (!this.a); i++)
    {
      String str1 = (String)paramList.get(i);
      for (int j = i + 1; j < paramList.size(); j++)
      {
        String str2 = (String)paramList.get(j);
        boolean bool1 = str2.startsWith(str1 + "/");
        boolean bool2 = str2.equals(str1);
        if ((bool1) || (bool2))
        {
          m.c("Found path duplicate: " + str2 + " = " + str1);
          int k = j - 1;
          paramList.remove(j);
          j = k;
        }
      }
    }
  }

  // ERROR //
  private void b(List paramList)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: iload_2
    //   3: aload_1
    //   4: invokeinterface 63 1 0
    //   9: if_icmpge +328 -> 337
    //   12: aload_0
    //   13: getfield 12	com/avast/android/generic/util/ad:a	Z
    //   16: ifne +321 -> 337
    //   19: aload_1
    //   20: iload_2
    //   21: invokeinterface 67 2 0
    //   26: checkcast 69	java/lang/String
    //   29: astore_3
    //   30: invokestatic 107	java/util/UUID:randomUUID	()Ljava/util/UUID;
    //   33: invokevirtual 108	java/util/UUID:toString	()Ljava/lang/String;
    //   36: astore 8
    //   38: new 20	java/io/File
    //   41: dup
    //   42: aload_3
    //   43: aload 8
    //   45: invokespecial 111	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   48: astore 9
    //   50: aload 9
    //   52: invokevirtual 114	java/io/File:isFile	()Z
    //   55: ifne -25 -> 30
    //   58: aload 9
    //   60: invokevirtual 117	java/io/File:createNewFile	()Z
    //   63: pop
    //   64: new 119	java/io/FileOutputStream
    //   67: dup
    //   68: aload 9
    //   70: invokespecial 122	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   73: astore 11
    //   75: aload 11
    //   77: aload 8
    //   79: invokevirtual 126	java/lang/String:getBytes	()[B
    //   82: invokevirtual 130	java/io/FileOutputStream:write	([B)V
    //   85: aload 11
    //   87: invokevirtual 133	java/io/FileOutputStream:flush	()V
    //   90: aload 11
    //   92: invokevirtual 136	java/io/FileOutputStream:close	()V
    //   95: aload 9
    //   97: invokevirtual 114	java/io/File:isFile	()Z
    //   100: ifeq +148 -> 248
    //   103: iload_2
    //   104: iconst_1
    //   105: iadd
    //   106: istore 16
    //   108: iload 16
    //   110: aload_1
    //   111: invokeinterface 63 1 0
    //   116: if_icmpge +123 -> 239
    //   119: aload_1
    //   120: iload 16
    //   122: invokeinterface 67 2 0
    //   127: checkcast 69	java/lang/String
    //   130: astore 18
    //   132: new 20	java/io/File
    //   135: dup
    //   136: aload 18
    //   138: aload 8
    //   140: invokespecial 111	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   143: astore 19
    //   145: aload 19
    //   147: invokevirtual 114	java/io/File:isFile	()Z
    //   150: ifeq +208 -> 358
    //   153: new 138	java/io/BufferedReader
    //   156: dup
    //   157: new 140	java/io/FileReader
    //   160: dup
    //   161: aload 19
    //   163: invokespecial 141	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   166: invokespecial 144	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   169: invokevirtual 147	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   172: aload 8
    //   174: invokevirtual 88	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   177: ifeq +181 -> 358
    //   180: iconst_1
    //   181: istore 20
    //   183: iload 20
    //   185: ifeq +166 -> 351
    //   188: new 71	java/lang/StringBuilder
    //   191: dup
    //   192: invokespecial 72	java/lang/StringBuilder:<init>	()V
    //   195: ldc 149
    //   197: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   200: aload 18
    //   202: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   205: ldc 92
    //   207: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   210: aload_3
    //   211: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   214: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   217: invokestatic 96	com/avast/android/generic/util/m:c	(Ljava/lang/String;)I
    //   220: pop
    //   221: iload 16
    //   223: iconst_1
    //   224: isub
    //   225: istore 21
    //   227: aload_1
    //   228: iload 16
    //   230: invokeinterface 99 2 0
    //   235: pop
    //   236: goto +128 -> 364
    //   239: aload 9
    //   241: invokevirtual 152	java/io/File:delete	()Z
    //   244: pop
    //   245: goto +128 -> 373
    //   248: new 71	java/lang/StringBuilder
    //   251: dup
    //   252: invokespecial 72	java/lang/StringBuilder:<init>	()V
    //   255: ldc 154
    //   257: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   260: aload_3
    //   261: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   264: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   267: invokestatic 157	com/avast/android/generic/util/m:e	(Ljava/lang/String;)I
    //   270: pop
    //   271: iload_2
    //   272: iconst_1
    //   273: isub
    //   274: istore 13
    //   276: aload_1
    //   277: iload_2
    //   278: invokeinterface 99 2 0
    //   283: pop
    //   284: iload 13
    //   286: istore_2
    //   287: goto +86 -> 373
    //   290: astore 4
    //   292: iload_2
    //   293: istore 5
    //   295: new 71	java/lang/StringBuilder
    //   298: dup
    //   299: invokespecial 72	java/lang/StringBuilder:<init>	()V
    //   302: ldc 159
    //   304: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   307: aload_3
    //   308: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   311: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   314: aload 4
    //   316: invokestatic 49	com/avast/android/generic/util/m:a	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   319: pop
    //   320: iload 5
    //   322: iconst_1
    //   323: isub
    //   324: istore_2
    //   325: aload_1
    //   326: iload 5
    //   328: invokeinterface 99 2 0
    //   333: pop
    //   334: goto +39 -> 373
    //   337: return
    //   338: astore 14
    //   340: iload 13
    //   342: istore 5
    //   344: aload 14
    //   346: astore 4
    //   348: goto -53 -> 295
    //   351: iload 16
    //   353: istore 21
    //   355: goto +9 -> 364
    //   358: iconst_0
    //   359: istore 20
    //   361: goto -178 -> 183
    //   364: iload 21
    //   366: iconst_1
    //   367: iadd
    //   368: istore 16
    //   370: goto -262 -> 108
    //   373: iinc 2 1
    //   376: goto -374 -> 2
    //
    // Exception table:
    //   from	to	target	type
    //   30	271	290	java/lang/Exception
    //   276	284	338	java/lang/Exception
  }

  private boolean b(File paramFile)
  {
    if ("LOST.DIR".equals(paramFile.getName()));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  // ERROR //
  private List d()
  {
    // Byte code:
    //   0: new 17	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 18	java/util/ArrayList:<init>	()V
    //   7: astore_1
    //   8: new 172	java/util/Scanner
    //   11: dup
    //   12: new 174	java/io/FileInputStream
    //   15: dup
    //   16: ldc 176
    //   18: invokespecial 179	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   21: ldc 181
    //   23: invokespecial 184	java/util/Scanner:<init>	(Ljava/io/InputStream;Ljava/lang/String;)V
    //   26: astore_2
    //   27: aload_2
    //   28: invokevirtual 187	java/util/Scanner:hasNextLine	()Z
    //   31: ifeq +204 -> 235
    //   34: aload_0
    //   35: getfield 12	com/avast/android/generic/util/ad:a	Z
    //   38: ifne +197 -> 235
    //   41: aload_2
    //   42: invokevirtual 190	java/util/Scanner:nextLine	()Ljava/lang/String;
    //   45: ldc 192
    //   47: invokevirtual 196	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   50: astore 5
    //   52: bipush 253
    //   54: aload 5
    //   56: arraylength
    //   57: iadd
    //   58: iconst_3
    //   59: if_icmpeq +194 -> 253
    //   62: aload 5
    //   64: arraylength
    //   65: istore 12
    //   67: iload 12
    //   69: iconst_1
    //   70: isub
    //   71: istore 13
    //   73: iload 13
    //   75: iconst_m1
    //   76: if_icmple +177 -> 253
    //   79: aload 5
    //   81: iload 13
    //   83: aaload
    //   84: invokestatic 201	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   87: pop
    //   88: iinc 13 255
    //   91: goto -18 -> 73
    //   94: astore 14
    //   96: iload 13
    //   98: istore 6
    //   100: aload 5
    //   102: iload 6
    //   104: aaload
    //   105: ldc 203
    //   107: invokevirtual 196	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   110: astore 7
    //   112: iconst_0
    //   113: istore 8
    //   115: iload 8
    //   117: aload 7
    //   119: arraylength
    //   120: if_icmpge -93 -> 27
    //   123: aload_0
    //   124: getfield 12	com/avast/android/generic/util/ad:a	Z
    //   127: ifne -100 -> 27
    //   130: aload 7
    //   132: iload 8
    //   134: aaload
    //   135: invokevirtual 206	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   138: astore 9
    //   140: ldc 208
    //   142: aload 9
    //   144: invokevirtual 88	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   147: ifeq +31 -> 178
    //   150: aload_1
    //   151: aload_0
    //   152: new 20	java/io/File
    //   155: dup
    //   156: aload 5
    //   158: iload 6
    //   160: iconst_2
    //   161: isub
    //   162: aaload
    //   163: invokespecial 209	java/io/File:<init>	(Ljava/lang/String;)V
    //   166: invokespecial 54	com/avast/android/generic/util/ad:a	(Ljava/io/File;)Ljava/util/List;
    //   169: invokeinterface 58 2 0
    //   174: pop
    //   175: goto +84 -> 259
    //   178: ldc 211
    //   180: aload 9
    //   182: invokevirtual 88	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   185: ifeq +74 -> 259
    //   188: aload_1
    //   189: aload 5
    //   191: iload 6
    //   193: iconst_2
    //   194: isub
    //   195: aaload
    //   196: invokeinterface 42 2 0
    //   201: pop
    //   202: goto +57 -> 259
    //   205: astore 4
    //   207: aload 4
    //   209: invokevirtual 214	java/io/FileNotFoundException:printStackTrace	()V
    //   212: aload_2
    //   213: ifnull +7 -> 220
    //   216: aload_2
    //   217: invokevirtual 215	java/util/Scanner:close	()V
    //   220: aload_1
    //   221: areturn
    //   222: astore_3
    //   223: aconst_null
    //   224: astore_2
    //   225: aload_2
    //   226: ifnull +7 -> 233
    //   229: aload_2
    //   230: invokevirtual 215	java/util/Scanner:close	()V
    //   233: aload_3
    //   234: athrow
    //   235: aload_2
    //   236: ifnull -16 -> 220
    //   239: goto -23 -> 216
    //   242: astore_3
    //   243: goto -18 -> 225
    //   246: astore 4
    //   248: aconst_null
    //   249: astore_2
    //   250: goto -43 -> 207
    //   253: iconst_3
    //   254: istore 6
    //   256: goto -156 -> 100
    //   259: iinc 8 1
    //   262: goto -147 -> 115
    //
    // Exception table:
    //   from	to	target	type
    //   79	88	94	java/lang/NumberFormatException
    //   27	67	205	java/io/FileNotFoundException
    //   79	88	205	java/io/FileNotFoundException
    //   100	202	205	java/io/FileNotFoundException
    //   8	27	222	finally
    //   27	67	242	finally
    //   79	88	242	finally
    //   100	202	242	finally
    //   207	212	242	finally
    //   8	27	246	java/io/FileNotFoundException
  }

  public void a()
  {
    this.a = true;
  }

  public void b()
  {
    this.a = false;
  }

  public List c()
  {
    m.c("Finding SD cards...");
    List localList = d();
    try
    {
      localList.add(Environment.getExternalStorageDirectory().getCanonicalPath());
      m.c("SD cards list before check for dups: " + Arrays.toString(localList.toArray(new String[localList.size()])));
      a(localList);
      b(localList);
      if ((localList.isEmpty()) && ("mounted".equals(Environment.getExternalStorageState())))
        localList.add(Environment.getExternalStorageDirectory().getAbsolutePath());
      m.c("SD cards list: " + Arrays.toString(localList.toArray(new String[localList.size()])));
      return localList;
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        m.a("Can't resolve symlinks to external storage dir.", localIOException);
        localList.add(Environment.getExternalStorageDirectory().getAbsolutePath());
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.util.ad
 * JD-Core Version:    0.6.2
 */