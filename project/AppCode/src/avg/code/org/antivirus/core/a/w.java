package org.antivirus.core.a;

import android.content.Context;
import android.os.Bundle;
import android.os.Message;
import java.io.Serializable;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.TreeMap;
import org.antivirus.core.EngineSettings;
import org.antivirus.core.Logger;
import org.antivirus.core.scanners.e;
import org.antivirus.core.scanners.f;

public final class w extends v
{
  private final String a = "droid.cloud.avg.com";
  private final int b = 100;
  private final int c = 3;
  private final int d = 50000;
  private int e = 0;

  // ERROR //
  private int c(Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_1
    //   3: aload_0
    //   4: getfield 35	org/antivirus/core/a/w:i	Lorg/antivirus/core/EngineSettings;
    //   7: invokestatic 41	org/antivirus/core/telephony/TelephonyInfo:getUniqueId	(Landroid/content/Context;Lorg/antivirus/core/EngineSettings;)Ljava/lang/String;
    //   10: astore 5
    //   12: aload 5
    //   14: invokevirtual 47	java/lang/String:getBytes	()[B
    //   17: invokestatic 52	org/a/a/a/b/a:b	([B)Ljava/lang/String;
    //   20: astore 6
    //   22: aload 6
    //   24: bipush 32
    //   26: invokevirtual 56	java/lang/String:substring	(I)Ljava/lang/String;
    //   29: astore 7
    //   31: aload 6
    //   33: iconst_0
    //   34: bipush 32
    //   36: invokevirtual 59	java/lang/String:substring	(II)Ljava/lang/String;
    //   39: astore 8
    //   41: aload_0
    //   42: getfield 63	org/antivirus/core/a/w:h	Lorg/antivirus/core/b/a;
    //   45: ifnull +610 -> 655
    //   48: aload_0
    //   49: getfield 63	org/antivirus/core/a/w:h	Lorg/antivirus/core/b/a;
    //   52: invokevirtual 68	org/antivirus/core/b/a:b	()Z
    //   55: ifeq +518 -> 573
    //   58: iconst_1
    //   59: istore 39
    //   61: goto +600 -> 661
    //   64: getstatic 73	android/os/Build:MODEL	Ljava/lang/String;
    //   67: ifnull +512 -> 579
    //   70: getstatic 73	android/os/Build:MODEL	Ljava/lang/String;
    //   73: astore 10
    //   75: aload 10
    //   77: ldc 75
    //   79: invokestatic 81	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   82: astore 11
    //   84: ldc 83
    //   86: astore 12
    //   88: getstatic 88	android/os/Build$VERSION:SDK	Ljava/lang/String;
    //   91: invokestatic 94	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   94: iconst_3
    //   95: if_icmple +23 -> 118
    //   98: ldc 70
    //   100: ldc 96
    //   102: invokevirtual 102	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   105: aconst_null
    //   106: invokevirtual 108	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   109: invokevirtual 114	java/lang/Object:toString	()Ljava/lang/String;
    //   112: astore 38
    //   114: aload 38
    //   116: astore 12
    //   118: aload 12
    //   120: ldc 75
    //   122: invokestatic 81	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   125: astore 14
    //   127: new 116	org/antivirus/core/b/g
    //   130: dup
    //   131: aload_1
    //   132: invokespecial 119	org/antivirus/core/b/g:<init>	(Landroid/content/Context;)V
    //   135: invokevirtual 121	org/antivirus/core/b/g:c	()Ljava/lang/String;
    //   138: astore 15
    //   140: aload 15
    //   142: invokevirtual 125	java/lang/String:length	()I
    //   145: iconst_4
    //   146: if_icmple +18 -> 164
    //   149: aload 15
    //   151: iconst_0
    //   152: bipush 252
    //   154: aload 15
    //   156: invokevirtual 125	java/lang/String:length	()I
    //   159: iadd
    //   160: invokevirtual 59	java/lang/String:substring	(II)Ljava/lang/String;
    //   163: pop
    //   164: aload_1
    //   165: ldc 127
    //   167: invokevirtual 133	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   170: checkcast 135	android/telephony/TelephonyManager
    //   173: astore 16
    //   175: aload 16
    //   177: invokevirtual 138	android/telephony/TelephonyManager:getNetworkOperatorName	()Ljava/lang/String;
    //   180: astore 36
    //   182: aload 36
    //   184: astore 18
    //   186: aload 16
    //   188: invokevirtual 141	android/telephony/TelephonyManager:getNetworkCountryIso	()Ljava/lang/String;
    //   191: astore 35
    //   193: aload 35
    //   195: astore 20
    //   197: aload 18
    //   199: ldc 75
    //   201: invokestatic 81	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   204: astore 21
    //   206: aload_0
    //   207: getfield 35	org/antivirus/core/a/w:i	Lorg/antivirus/core/EngineSettings;
    //   210: invokevirtual 146	org/antivirus/core/EngineSettings:getSecurityThreatsCount1	()I
    //   213: aload_0
    //   214: getfield 35	org/antivirus/core/a/w:i	Lorg/antivirus/core/EngineSettings;
    //   217: invokevirtual 149	org/antivirus/core/EngineSettings:getSecurityThreatsCount2	()I
    //   220: iadd
    //   221: istore 22
    //   223: new 151	java/lang/StringBuilder
    //   226: dup
    //   227: aload_0
    //   228: getfield 35	org/antivirus/core/a/w:i	Lorg/antivirus/core/EngineSettings;
    //   231: invokevirtual 154	org/antivirus/core/EngineSettings:getSecurityThreats1	()Ljava/lang/String;
    //   234: invokespecial 157	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   237: astore 23
    //   239: aload_0
    //   240: getfield 35	org/antivirus/core/a/w:i	Lorg/antivirus/core/EngineSettings;
    //   243: invokevirtual 160	org/antivirus/core/EngineSettings:getSecurityThreats2	()Ljava/lang/String;
    //   246: astore 24
    //   248: aload 23
    //   250: invokevirtual 161	java/lang/StringBuilder:length	()I
    //   253: ifle +19 -> 272
    //   256: aload 24
    //   258: invokevirtual 125	java/lang/String:length	()I
    //   261: ifle +11 -> 272
    //   264: aload 23
    //   266: bipush 38
    //   268: invokevirtual 165	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   271: pop
    //   272: aload 23
    //   274: aload 24
    //   276: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   279: pop
    //   280: bipush 14
    //   282: anewarray 110	java/lang/Object
    //   285: astore 26
    //   287: aload 26
    //   289: iconst_0
    //   290: aload 8
    //   292: aastore
    //   293: aload 26
    //   295: iconst_1
    //   296: aload 7
    //   298: aastore
    //   299: aload 26
    //   301: iconst_2
    //   302: aload 5
    //   304: aastore
    //   305: aload 26
    //   307: iconst_3
    //   308: aload 11
    //   310: aastore
    //   311: aload 26
    //   313: iconst_4
    //   314: aload 14
    //   316: aastore
    //   317: aload 26
    //   319: iconst_5
    //   320: getstatic 171	android/os/Build$VERSION:RELEASE	Ljava/lang/String;
    //   323: aastore
    //   324: aload 26
    //   326: bipush 6
    //   328: aload 21
    //   330: aastore
    //   331: aload 26
    //   333: bipush 7
    //   335: iload 9
    //   337: invokestatic 175	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   340: aastore
    //   341: aload 26
    //   343: bipush 8
    //   345: bipush 100
    //   347: invokestatic 175	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   350: aastore
    //   351: aload 26
    //   353: bipush 9
    //   355: ldc 177
    //   357: aastore
    //   358: aload 26
    //   360: bipush 10
    //   362: ldc 179
    //   364: aastore
    //   365: aload 26
    //   367: bipush 11
    //   369: aload 20
    //   371: aastore
    //   372: aload 26
    //   374: bipush 12
    //   376: iload 22
    //   378: invokestatic 175	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   381: aastore
    //   382: aload 26
    //   384: bipush 13
    //   386: aload 23
    //   388: aastore
    //   389: aconst_null
    //   390: ldc 181
    //   392: aload 26
    //   394: invokestatic 185	java/lang/String:format	(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   397: astore 27
    //   399: new 151	java/lang/StringBuilder
    //   402: dup
    //   403: invokespecial 186	java/lang/StringBuilder:<init>	()V
    //   406: aload 27
    //   408: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   411: ldc 188
    //   413: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   416: invokevirtual 189	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   419: invokevirtual 47	java/lang/String:getBytes	()[B
    //   422: invokestatic 191	org/a/a/a/b/a:c	([B)Ljava/lang/String;
    //   425: astore 28
    //   427: new 193	java/net/URL
    //   430: dup
    //   431: ldc 195
    //   433: invokespecial 196	java/net/URL:<init>	(Ljava/lang/String;)V
    //   436: invokevirtual 200	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   439: checkcast 202	java/net/HttpURLConnection
    //   442: astore 29
    //   444: aload 29
    //   446: iconst_0
    //   447: invokevirtual 206	java/net/HttpURLConnection:setUseCaches	(Z)V
    //   450: aload 29
    //   452: ldc 208
    //   454: ldc 210
    //   456: invokevirtual 214	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   459: aload 29
    //   461: ldc 216
    //   463: ldc 210
    //   465: invokevirtual 214	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   468: aload 29
    //   470: ldc 218
    //   472: invokevirtual 221	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   475: aload 29
    //   477: ldc 223
    //   479: ldc 17
    //   481: invokevirtual 214	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   484: aload 29
    //   486: iconst_1
    //   487: invokevirtual 226	java/net/HttpURLConnection:setDoInput	(Z)V
    //   490: aload 29
    //   492: iconst_1
    //   493: invokevirtual 229	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   496: aload 29
    //   498: invokevirtual 232	java/net/HttpURLConnection:connect	()V
    //   501: new 234	java/io/DataOutputStream
    //   504: dup
    //   505: aload 29
    //   507: invokevirtual 238	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   510: invokespecial 241	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   513: astore 31
    //   515: aload 31
    //   517: aload 27
    //   519: invokevirtual 244	java/io/DataOutputStream:writeBytes	(Ljava/lang/String;)V
    //   522: aload 31
    //   524: ldc 246
    //   526: invokevirtual 244	java/io/DataOutputStream:writeBytes	(Ljava/lang/String;)V
    //   529: aload 31
    //   531: aload 28
    //   533: invokevirtual 244	java/io/DataOutputStream:writeBytes	(Ljava/lang/String;)V
    //   536: aload 31
    //   538: invokevirtual 249	java/io/DataOutputStream:flush	()V
    //   541: aload 31
    //   543: invokevirtual 252	java/io/DataOutputStream:close	()V
    //   546: aload 29
    //   548: invokevirtual 255	java/net/HttpURLConnection:getResponseCode	()I
    //   551: istore 32
    //   553: aload 29
    //   555: invokevirtual 258	java/net/HttpURLConnection:getContentLength	()I
    //   558: pop
    //   559: iload 32
    //   561: sipush 200
    //   564: if_icmpeq +69 -> 633
    //   567: iconst_2
    //   568: istore 4
    //   570: iload 4
    //   572: ireturn
    //   573: iconst_3
    //   574: istore 39
    //   576: goto +85 -> 661
    //   579: ldc 83
    //   581: astore 10
    //   583: goto -508 -> 75
    //   586: astore 17
    //   588: aload 17
    //   590: invokestatic 264	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   593: ldc 83
    //   595: astore 18
    //   597: goto -411 -> 186
    //   600: astore 19
    //   602: aload 19
    //   604: invokestatic 264	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   607: ldc 83
    //   609: astore 20
    //   611: goto -414 -> 197
    //   614: astore_3
    //   615: aload_2
    //   616: ifnull +7 -> 623
    //   619: aload_2
    //   620: invokevirtual 267	java/net/HttpURLConnection:disconnect	()V
    //   623: aload_3
    //   624: invokestatic 264	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   627: iconst_1
    //   628: istore 4
    //   630: goto -60 -> 570
    //   633: iconst_0
    //   634: istore 4
    //   636: goto -66 -> 570
    //   639: astore 30
    //   641: aload 29
    //   643: astore_2
    //   644: aload 30
    //   646: astore_3
    //   647: goto -32 -> 615
    //   650: astore 13
    //   652: goto -534 -> 118
    //   655: iconst_0
    //   656: istore 9
    //   658: goto -594 -> 64
    //   661: iload 39
    //   663: istore 9
    //   665: goto -601 -> 64
    //
    // Exception table:
    //   from	to	target	type
    //   175	182	586	java/lang/Exception
    //   186	193	600	java/lang/Exception
    //   2	88	614	java/lang/Exception
    //   118	175	614	java/lang/Exception
    //   197	444	614	java/lang/Exception
    //   579	607	614	java/lang/Exception
    //   444	559	639	java/lang/Exception
    //   88	114	650	java/lang/Exception
  }

  public final boolean a()
  {
    if ((this.i.getSecurityThreatsCount1() > 0) || (this.i.getSecurityThreatsCount2() > 0));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean a(Context paramContext)
  {
    int i = c(paramContext);
    boolean bool = false;
    if (i == 1);
    while (true)
    {
      return bool;
      if (i == 2)
      {
        this.e = (1 + this.e);
        int j = this.e;
        bool = false;
        if (j < 3);
      }
      else
      {
        this.e = 0;
        this.i.setSecurityThreats1("");
        this.i.setSecurityThreatsCount1(0);
        this.i.setSecurityThreats2("");
        this.i.setSecurityThreatsCount2(0);
        bool = true;
      }
    }
  }

  public final boolean a(Context paramContext, Message paramMessage)
  {
    Bundle localBundle = (Bundle)paramMessage.obj;
    ArrayList localArrayList = localBundle.getStringArrayList("basenames");
    Serializable localSerializable = localBundle.getSerializable("detection_info");
    boolean bool;
    if ((localArrayList == null) || (localSerializable == null))
    {
      Logger.errorBadAgrument();
      bool = false;
    }
    TreeMap localTreeMap;
    while (true)
    {
      return bool;
      if (!(localSerializable instanceof TreeMap))
      {
        Logger.errorBadAgrument();
        bool = false;
      }
      else
      {
        localTreeMap = (TreeMap)localSerializable;
        if (localTreeMap.size() <= 0)
        {
          Logger.errorBadAgrument();
          bool = false;
        }
        else
        {
          Object localObject = localTreeMap.firstKey();
          if ((!(localObject instanceof String)) || (!(localTreeMap.get(localObject) instanceof e)))
          {
            Logger.errorBadAgrument();
            bool = false;
          }
          else if ((localArrayList.size() == 0) || (localArrayList.size() != localTreeMap.size()))
          {
            Logger.errorBadAgrument();
            bool = false;
          }
          else
          {
            Iterator localIterator = localTreeMap.values().iterator();
            e locale;
            do
            {
              if (!localIterator.hasNext())
                break;
              locale = (e)localIterator.next();
            }
            while (((locale.a.equals("")) || (locale.a.matches("[0-9a-fA-F]{40}"))) && ((locale.b.equals("")) || (locale.b.matches("[0-9a-fA-F]{40}"))));
            Logger.errorBadAgrument();
            bool = false;
          }
        }
      }
    }
    while (true)
    {
      StringBuilder localStringBuilder;
      String str2;
      try
      {
        localStringBuilder = new StringBuilder();
        int i = 0;
        if (i < localArrayList.size())
        {
          String str3 = (String)localArrayList.get(i);
          localStringBuilder.append("dex=").append(((e)localTreeMap.get(str3)).a).append("&man=").append(((e)localTreeMap.get(str3)).b).append("&base=");
          localStringBuilder.append(URLEncoder.encode(str3, "UTF-8")).append("&sig=").append(URLEncoder.encode(((e)localTreeMap.get(str3)).c, "UTF-8"));
          localStringBuilder.append("&loc=").append(((e)localTreeMap.get(str3)).d.a()).append("&cat=").append(((e)localTreeMap.get(str3)).e).append('&');
          i++;
          continue;
        }
        j = this.i.getSecurityThreatsCurrentLog();
        String str1 = this.i.getSecurityThreats1();
        str2 = this.i.getSecurityThreats2();
        int k;
        if (j == 0)
        {
          k = str1.length();
          if (k + localStringBuilder.length() > 50000)
          {
            if (j != 0)
              break label732;
            j = 1;
            this.i.setSecurityThreatsCurrentLog(j);
            if (j == 0)
            {
              this.i.setSecurityThreats1("");
              this.i.setSecurityThreatsCount1(0);
            }
          }
          else
          {
            if (j != 0)
              break label653;
            if (str1.equals(""))
              localStringBuilder.deleteCharAt(-1 + localStringBuilder.length());
            this.i.setSecurityThreats1(localStringBuilder.toString() + str1);
            this.i.setSecurityThreatsCount1(this.i.getSecurityThreatsCount1() + localArrayList.size());
            break label726;
          }
        }
        else
        {
          k = str2.length();
          continue;
        }
        this.i.setSecurityThreats2("");
        this.i.setSecurityThreatsCount2(0);
        continue;
      }
      catch (Exception localException)
      {
        Logger.log(localException);
        bool = false;
      }
      break;
      label653: if (str2.equals(""))
        localStringBuilder.deleteCharAt(-1 + localStringBuilder.length());
      this.i.setSecurityThreats2(localStringBuilder.toString() + str2);
      this.i.setSecurityThreatsCount2(this.i.getSecurityThreatsCount2() + localArrayList.size());
      label726: bool = true;
      break;
      label732: int j = 0;
    }
  }

  public final boolean a(Context paramContext, Object paramObject)
  {
    return true;
  }

  public final q b()
  {
    return q.b;
  }

  public final int c()
  {
    return 1065;
  }

  public final String d()
  {
    return null;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.a.w
 * JD-Core Version:    0.6.2
 */