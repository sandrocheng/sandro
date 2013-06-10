package org.antivirus.core.b;

import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.android.vending.licensing.ObfuscatedSharedPreferences;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class h
{
  g a;
  private final String b;

  public h(Context paramContext)
  {
    this.a = new g(paramContext);
    Display localDisplay = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    localDisplay.getMetrics(localDisplayMetrics);
    String str;
    if ((localDisplayMetrics.ydpi <= 0.0F) || (localDisplayMetrics.xdpi <= 0.0F))
      str = "U";
    while (true)
    {
      this.b = ("AVGMOBILATION-DRO" + str + Build.VERSION.SDK);
      return;
      float f1 = localDisplayMetrics.heightPixels / localDisplayMetrics.ydpi;
      float f2 = localDisplayMetrics.widthPixels / localDisplayMetrics.xdpi;
      if (f1 * f1 + f2 * f2 >= 36.0F)
        str = "T";
      else
        str = "P";
    }
  }

  private String a(Map paramMap)
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramMap.keySet().iterator();
    if (localIterator.hasNext())
    {
      String str5 = (String)localIterator.next();
      if (str5 == null);
      for (Object localObject = null; ; localObject = str5.toLowerCase())
      {
        localHashMap.put(localObject, paramMap.get(str5));
        break;
      }
    }
    List localList1 = (List)localHashMap.get("x-avg-id");
    String str1;
    String str2;
    label158: List localList3;
    if (localList1 != null)
    {
      str1 = (String)localList1.get(0);
      if (str1 != null)
        str1.equals(this.a.d());
      List localList2 = (List)localHashMap.get("x-avg-newid");
      if (localList2 == null)
        break label235;
      str2 = (String)localList2.get(0);
      if (str2 != null)
        this.a.a.putString("id", str2).commit();
      localList3 = (List)localHashMap.get("x-avg-newlic");
      if (localList3 == null)
        break label241;
    }
    label235: label241: for (String str3 = (String)localList3.get(0); ; str3 = null)
    {
      String str4 = null;
      if (str3 != null)
        str4 = str3;
      return str4;
      str1 = null;
      break;
      str2 = null;
      break label158;
    }
  }

  // ERROR //
  final String a(a parama, String paramString)
  {
    // Byte code:
    //   0: new 165	java/net/URL
    //   3: dup
    //   4: ldc 167
    //   6: invokespecial 168	java/net/URL:<init>	(Ljava/lang/String;)V
    //   9: invokevirtual 172	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   12: checkcast 174	java/net/HttpURLConnection
    //   15: astore 4
    //   17: aload 4
    //   19: ldc 176
    //   21: invokevirtual 179	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   24: aload 4
    //   26: iconst_0
    //   27: invokevirtual 183	java/net/HttpURLConnection:setUseCaches	(Z)V
    //   30: aload 4
    //   32: sipush 10000
    //   35: invokevirtual 187	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   38: aload 4
    //   40: sipush 15000
    //   43: invokevirtual 190	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   46: ldc 192
    //   48: ldc 194
    //   50: ldc 196
    //   52: invokevirtual 200	java/lang/String:replaceAll	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   55: astore 5
    //   57: aload 5
    //   59: ldc 196
    //   61: invokevirtual 138	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   64: ifeq +257 -> 321
    //   67: ldc 202
    //   69: astore 5
    //   71: aload_1
    //   72: ifnull +32 -> 104
    //   75: aload_1
    //   76: invokevirtual 206	org/antivirus/core/b/a:b	()Z
    //   79: ifeq +25 -> 104
    //   82: new 53	java/lang/StringBuilder
    //   85: dup
    //   86: invokespecial 207	java/lang/StringBuilder:<init>	()V
    //   89: aload 5
    //   91: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   94: ldc 209
    //   96: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   99: invokevirtual 71	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   102: astore 5
    //   104: aload_0
    //   105: getfield 19	org/antivirus/core/b/h:a	Lorg/antivirus/core/b/g;
    //   108: invokevirtual 212	org/antivirus/core/b/g:c	()Ljava/lang/String;
    //   111: astore 6
    //   113: aload 6
    //   115: invokevirtual 216	java/lang/String:length	()I
    //   118: iconst_4
    //   119: if_icmple +19 -> 138
    //   122: aload 6
    //   124: iconst_0
    //   125: bipush 252
    //   127: aload 6
    //   129: invokevirtual 216	java/lang/String:length	()I
    //   132: iadd
    //   133: invokevirtual 220	java/lang/String:substring	(II)Ljava/lang/String;
    //   136: astore 6
    //   138: iconst_4
    //   139: anewarray 4	java/lang/Object
    //   142: astore 7
    //   144: aload 7
    //   146: iconst_0
    //   147: aload_0
    //   148: getfield 73	org/antivirus/core/b/h:b	Ljava/lang/String;
    //   151: aastore
    //   152: aload 7
    //   154: iconst_1
    //   155: aload 5
    //   157: aastore
    //   158: aload 7
    //   160: iconst_2
    //   161: ldc 222
    //   163: aastore
    //   164: aload 7
    //   166: iconst_3
    //   167: aload 6
    //   169: aastore
    //   170: aload 4
    //   172: ldc 224
    //   174: aconst_null
    //   175: ldc 226
    //   177: aload 7
    //   179: invokestatic 230	java/lang/String:format	(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   182: invokevirtual 234	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   185: aload 4
    //   187: ldc 236
    //   189: ldc 238
    //   191: invokevirtual 234	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   194: aload 4
    //   196: ldc 240
    //   198: aload_2
    //   199: invokevirtual 234	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   202: aload 4
    //   204: ldc 242
    //   206: ldc 244
    //   208: invokevirtual 234	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   211: aload 4
    //   213: ldc 246
    //   215: ldc 244
    //   217: invokevirtual 234	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   220: aload 4
    //   222: ldc 248
    //   224: ldc 250
    //   226: invokevirtual 234	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   229: aload 4
    //   231: invokevirtual 253	java/net/HttpURLConnection:connect	()V
    //   234: aload 4
    //   236: invokevirtual 256	java/net/HttpURLConnection:getResponseCode	()I
    //   239: istore 11
    //   241: iload 11
    //   243: sipush 200
    //   246: if_icmpeq +107 -> 353
    //   249: new 258	org/antivirus/core/b/i
    //   252: dup
    //   253: aload_0
    //   254: new 53	java/lang/StringBuilder
    //   257: dup
    //   258: ldc_w 260
    //   261: invokespecial 58	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   264: iload 11
    //   266: invokevirtual 263	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   269: invokevirtual 71	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   272: invokespecial 266	org/antivirus/core/b/i:<init>	(Lorg/antivirus/core/b/h;Ljava/lang/String;)V
    //   275: athrow
    //   276: astore 10
    //   278: aload 10
    //   280: invokestatic 272	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   283: new 258	org/antivirus/core/b/i
    //   286: dup
    //   287: aload_0
    //   288: aload 10
    //   290: iconst_1
    //   291: invokespecial 275	org/antivirus/core/b/i:<init>	(Lorg/antivirus/core/b/h;Ljava/lang/Exception;Z)V
    //   294: athrow
    //   295: astore 9
    //   297: aload 4
    //   299: invokevirtual 278	java/net/HttpURLConnection:disconnect	()V
    //   302: aload 9
    //   304: athrow
    //   305: astore_3
    //   306: aload_3
    //   307: invokestatic 272	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   310: new 258	org/antivirus/core/b/i
    //   313: dup
    //   314: aload_0
    //   315: aload_3
    //   316: iconst_1
    //   317: invokespecial 275	org/antivirus/core/b/i:<init>	(Lorg/antivirus/core/b/h;Ljava/lang/Exception;Z)V
    //   320: athrow
    //   321: aload 5
    //   323: invokevirtual 216	java/lang/String:length	()I
    //   326: iconst_2
    //   327: if_icmpge -256 -> 71
    //   330: new 53	java/lang/StringBuilder
    //   333: dup
    //   334: ldc_w 280
    //   337: invokespecial 58	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   340: aload 5
    //   342: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   345: invokevirtual 71	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   348: astore 5
    //   350: goto -279 -> 71
    //   353: aload_0
    //   354: aload 4
    //   356: invokevirtual 284	java/net/HttpURLConnection:getHeaderFields	()Ljava/util/Map;
    //   359: invokespecial 286	org/antivirus/core/b/h:a	(Ljava/util/Map;)Ljava/lang/String;
    //   362: astore 12
    //   364: aload 4
    //   366: invokevirtual 278	java/net/HttpURLConnection:disconnect	()V
    //   369: aload 12
    //   371: areturn
    //   372: astore 8
    //   374: aload 8
    //   376: invokestatic 272	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   379: new 258	org/antivirus/core/b/i
    //   382: dup
    //   383: aload_0
    //   384: aload 8
    //   386: iconst_0
    //   387: invokespecial 275	org/antivirus/core/b/i:<init>	(Lorg/antivirus/core/b/h;Ljava/lang/Exception;Z)V
    //   390: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   229	276	276	java/io/IOException
    //   353	364	276	java/io/IOException
    //   229	276	295	finally
    //   278	295	295	finally
    //   353	364	295	finally
    //   374	391	295	finally
    //   0	24	305	java/lang/Exception
    //   229	276	372	java/lang/Exception
    //   353	364	372	java/lang/Exception
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.b.h
 * JD-Core Version:    0.6.2
 */