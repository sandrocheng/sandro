package com.ijinshan.software.recommand;

import android.content.Intent;
import android.content.pm.PackageManager;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.json.JSONObject;

public final class p
{
  private static PackageManager a;
  private static String[] b = { "360手机卫士", "短信拦截", "来电拦截", "垃圾短信过滤", "木马查杀", "安全", "手机杀毒", "流量监控", "流量统计", "软件管理", "进程管理", "系统清理", "电话本备份", "电话防火墙", "手机防盗", "IP拨号", "归属地查询", "快速拨号", "通讯录备份", "QQ手机管家", "QQ安全助手", "安全管家", "安全大师", "安全专家", "优化", "网秦杀毒", "网秦手机卫士", "网秦通讯管家", "网秦", "信安易", "来电通", "友录通讯录", "QQ同步助手", "LBE隐私卫士", "LBE手机安全大师", "LBE", "LBE安全大师", "360宝盒", "360卫士", "360安全", "360浏览器", "360" };

  // ERROR //
  public static java.util.LinkedList a(PackageManager paramPackageManager, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: putstatic 106	com/ijinshan/software/recommand/p:a	Landroid/content/pm/PackageManager;
    //   4: new 108	java/util/LinkedList
    //   7: dup
    //   8: invokespecial 109	java/util/LinkedList:<init>	()V
    //   11: astore_2
    //   12: aload_1
    //   13: invokestatic 112	com/ijinshan/software/recommand/p:a	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   16: astore_3
    //   17: aload_3
    //   18: ifnonnull +7 -> 25
    //   21: aconst_null
    //   22: astore_2
    //   23: aload_2
    //   24: areturn
    //   25: aload_3
    //   26: ldc 114
    //   28: invokevirtual 120	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   31: astore 5
    //   33: aload 5
    //   35: invokevirtual 126	org/json/JSONArray:length	()I
    //   38: istore 6
    //   40: iconst_0
    //   41: istore 7
    //   43: iload 7
    //   45: iload 6
    //   47: if_icmpge -24 -> 23
    //   50: aload 5
    //   52: iload 7
    //   54: invokevirtual 130	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   57: astore 8
    //   59: aload 8
    //   61: ldc 132
    //   63: invokevirtual 136	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   66: invokestatic 139	com/ijinshan/software/recommand/p:b	(Ljava/lang/String;)Landroid/content/Intent;
    //   69: astore 19
    //   71: aload 19
    //   73: astore 10
    //   75: aload 10
    //   77: ifnonnull +116 -> 193
    //   80: aload 8
    //   82: ldc 141
    //   84: invokevirtual 136	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   87: invokestatic 145	com/ijinshan/software/recommand/p:c	(Ljava/lang/String;)Z
    //   90: ifne +103 -> 193
    //   93: new 147	com/ijinshan/software/recommand/q
    //   96: dup
    //   97: invokespecial 148	com/ijinshan/software/recommand/q:<init>	()V
    //   100: astore 11
    //   102: aload 11
    //   104: aload 8
    //   106: ldc 150
    //   108: invokevirtual 136	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   111: putfield 153	com/ijinshan/software/recommand/q:c	Ljava/lang/String;
    //   114: aload 11
    //   116: aload 8
    //   118: ldc 155
    //   120: invokevirtual 136	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   123: putfield 158	com/ijinshan/software/recommand/q:d	Ljava/lang/String;
    //   126: aload 11
    //   128: aload 8
    //   130: ldc 160
    //   132: invokevirtual 136	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   135: putfield 163	com/ijinshan/software/recommand/q:e	Ljava/lang/String;
    //   138: aload 11
    //   140: aload 8
    //   142: ldc 165
    //   144: invokevirtual 136	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   147: putfield 168	com/ijinshan/software/recommand/q:f	Ljava/lang/String;
    //   150: aload 11
    //   152: aload 8
    //   154: ldc 170
    //   156: invokevirtual 136	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   159: putfield 172	com/ijinshan/software/recommand/q:a	Ljava/lang/String;
    //   162: aload 11
    //   164: aload 8
    //   166: ldc 141
    //   168: invokevirtual 136	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   171: putfield 174	com/ijinshan/software/recommand/q:b	Ljava/lang/String;
    //   174: aload 11
    //   176: aload 8
    //   178: ldc 176
    //   180: invokevirtual 136	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   183: putfield 179	com/ijinshan/software/recommand/q:g	Ljava/lang/String;
    //   186: aload_2
    //   187: aload 11
    //   189: invokevirtual 183	java/util/LinkedList:add	(Ljava/lang/Object;)Z
    //   192: pop
    //   193: iinc 7 1
    //   196: goto -153 -> 43
    //   199: astore 9
    //   201: aconst_null
    //   202: astore 10
    //   204: goto -129 -> 75
    //   207: astore 12
    //   209: aload 11
    //   211: aload 8
    //   213: ldc 155
    //   215: invokevirtual 136	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   218: putfield 153	com/ijinshan/software/recommand/q:c	Ljava/lang/String;
    //   221: goto -107 -> 114
    //   224: astore 13
    //   226: aload 11
    //   228: aconst_null
    //   229: putfield 153	com/ijinshan/software/recommand/q:c	Ljava/lang/String;
    //   232: goto -118 -> 114
    //   235: astore 4
    //   237: aload 4
    //   239: invokevirtual 186	java/lang/Exception:printStackTrace	()V
    //   242: goto -219 -> 23
    //   245: astore 14
    //   247: aload 11
    //   249: aconst_null
    //   250: putfield 158	com/ijinshan/software/recommand/q:d	Ljava/lang/String;
    //   253: goto -127 -> 126
    //   256: astore 15
    //   258: aload 11
    //   260: aconst_null
    //   261: putfield 163	com/ijinshan/software/recommand/q:e	Ljava/lang/String;
    //   264: goto -126 -> 138
    //   267: astore 16
    //   269: aload 11
    //   271: aload 8
    //   273: ldc 188
    //   275: invokevirtual 136	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   278: putfield 168	com/ijinshan/software/recommand/q:f	Ljava/lang/String;
    //   281: goto -131 -> 150
    //   284: astore 17
    //   286: aload 11
    //   288: aconst_null
    //   289: putfield 168	com/ijinshan/software/recommand/q:f	Ljava/lang/String;
    //   292: goto -142 -> 150
    //
    // Exception table:
    //   from	to	target	type
    //   59	71	199	java/lang/Exception
    //   102	114	207	java/lang/Exception
    //   209	221	224	java/lang/Exception
    //   25	59	235	java/lang/Exception
    //   80	102	235	java/lang/Exception
    //   150	193	235	java/lang/Exception
    //   226	232	235	java/lang/Exception
    //   247	264	235	java/lang/Exception
    //   286	292	235	java/lang/Exception
    //   114	126	245	java/lang/Exception
    //   126	138	256	java/lang/Exception
    //   138	150	267	java/lang/Exception
    //   269	281	284	java/lang/Exception
  }

  private static JSONObject a(String paramString)
  {
    try
    {
      localInputStream = new DefaultHttpClient().execute(new HttpGet(paramString)).getEntity().getContent();
      if (localInputStream == null);
    }
    catch (Exception localException1)
    {
      while (true)
      {
        InputStream localInputStream;
        try
        {
          BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(localInputStream, Charset.forName("UTF-8")));
          localStringBuilder = new StringBuilder();
          String str1 = localBufferedReader.readLine();
          if (str1 != null)
          {
            localStringBuilder.append(str1);
            continue;
          }
        }
        catch (Exception localException3)
        {
          StringBuilder localStringBuilder;
          localException3 = localException3;
          try
          {
            localInputStream.close();
            localJSONObject = null;
            return localJSONObject;
            localException1 = localException1;
            localJSONObject = null;
            continue;
            String str2 = localStringBuilder.toString();
            try
            {
              localInputStream.close();
              try
              {
                localJSONObject = new JSONObject(str2);
              }
              catch (Exception localException6)
              {
                localJSONObject = null;
              }
            }
            catch (Exception localException5)
            {
              localException5.printStackTrace();
              continue;
            }
          }
          catch (Exception localException4)
          {
            localException4.printStackTrace();
            continue;
          }
        }
        finally
        {
        }
        try
        {
          localInputStream.close();
          throw localObject;
        }
        catch (Exception localException2)
        {
          while (true)
            localException2.printStackTrace();
        }
        JSONObject localJSONObject = null;
      }
    }
  }

  private static Intent b(String paramString)
  {
    try
    {
      Intent localIntent2 = a.getLaunchIntentForPackage(paramString);
      localIntent1 = localIntent2;
      return localIntent1;
    }
    catch (Exception localException)
    {
      while (true)
        Intent localIntent1 = null;
    }
  }

  private static boolean c(String paramString)
  {
    int i = b.length;
    int j = 0;
    if (j < i)
      if ((!paramString.equalsIgnoreCase(b[j])) && (!paramString.contains(b[j])) && (!b[j].contains(paramString)));
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      j++;
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.software.recommand.p
 * JD-Core Version:    0.6.2
 */