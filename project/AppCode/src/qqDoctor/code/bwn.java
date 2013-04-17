import QQPIM.NetInterfaceTypeInfo;
import QQPIM.NetInterfaceTypeInfoList;
import android.content.Context;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.utils.ScriptHelper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class bwn
{
  private static String a = "upload_config_des";
  private final List<String> b = new ArrayList();
  private final List<String> c = new ArrayList();
  private final ArrayList<String> d = new ArrayList();
  private btl e = new btl("NetInterfaceManager");
  private Context f = TMSApplication.getApplicaionContext();
  private String g;

  private static String a(List<String> paramList)
  {
    StringBuilder localStringBuilder1 = new StringBuilder();
    String str1 = ScriptHelper.runScript(1000, new String[] { "ip addr" });
    StringBuilder localStringBuilder2;
    Iterator localIterator;
    Matcher localMatcher;
    if (str1 != null)
    {
      localStringBuilder2 = new StringBuilder("(");
      localIterator = paramList.iterator();
      if (localIterator.hasNext())
        break label122;
      localStringBuilder2.deleteCharAt(-1 + localStringBuilder2.length());
      localStringBuilder2.append(")");
      localMatcher = Pattern.compile("^\\d+:\\s+" + localStringBuilder2.toString() + ".*$\n*(^[^\\d].*$\n*)*", 8).matcher(str1);
    }
    while (true)
    {
      if (!localMatcher.find())
      {
        return localStringBuilder1.toString();
        label122: String str2 = (String)localIterator.next();
        localStringBuilder2.append("(?:" + str2 + ")|");
        break;
      }
      String str3 = localMatcher.group(0);
      if (str3 != null)
        localStringBuilder1.append(str3);
    }
  }

  private static boolean a(List<String> paramList, String paramString)
  {
    Iterator localIterator = paramList.iterator();
    if (!localIterator.hasNext());
    for (boolean bool = false; ; bool = true)
    {
      return bool;
      if (!paramString.startsWith((String)localIterator.next()))
        break;
    }
  }

  // ERROR //
  private NetInterfaceTypeInfoList b()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 44	bwn:f	Landroid/content/Context;
    //   4: ldc 143
    //   6: aconst_null
    //   7: invokestatic 148	btd:a	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   10: astore_1
    //   11: aload_1
    //   12: ifnull +24 -> 36
    //   15: aload_1
    //   16: invokevirtual 149	java/lang/String:length	()I
    //   19: ifeq +17 -> 36
    //   22: new 151	java/io/File
    //   25: dup
    //   26: aload_1
    //   27: invokespecial 152	java/io/File:<init>	(Ljava/lang/String;)V
    //   30: invokevirtual 155	java/io/File:exists	()Z
    //   33: ifne +7 -> 40
    //   36: aconst_null
    //   37: astore_2
    //   38: aload_2
    //   39: areturn
    //   40: new 151	java/io/File
    //   43: dup
    //   44: aload_1
    //   45: invokespecial 152	java/io/File:<init>	(Ljava/lang/String;)V
    //   48: astore_3
    //   49: new 157	java/io/FileInputStream
    //   52: dup
    //   53: aload_3
    //   54: invokespecial 160	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   57: astore 4
    //   59: aload 4
    //   61: invokestatic 165	m:a	(Ljava/io/InputStream;)Lbtc;
    //   64: astore 9
    //   66: aload 4
    //   68: invokevirtual 168	java/io/FileInputStream:available	()I
    //   71: newarray byte
    //   73: astore 10
    //   75: aload 4
    //   77: aload 10
    //   79: invokevirtual 172	java/io/FileInputStream:read	([B)I
    //   82: pop
    //   83: aload 10
    //   85: invokestatic 177	btk:a	([B)[B
    //   88: invokestatic 181	a:d	([B)Ljava/lang/String;
    //   91: aload 9
    //   93: getfield 186	btc:b	[B
    //   96: invokestatic 181	a:d	([B)Ljava/lang/String;
    //   99: invokevirtual 190	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   102: ifeq +150 -> 252
    //   105: invokestatic 42	com/tencent/tmsecure/common/TMSApplication:getApplicaionContext	()Landroid/content/Context;
    //   108: aload 10
    //   110: aconst_null
    //   111: invokestatic 196	com/tencent/tccdb/TccCryptor:decrypt	(Landroid/content/Context;[B[B)[B
    //   114: astore 13
    //   116: new 198	com/qq/jce/wup/UniAttribute
    //   119: dup
    //   120: invokespecial 199	com/qq/jce/wup/UniAttribute:<init>	()V
    //   123: astore 14
    //   125: aload 14
    //   127: aload 13
    //   129: invokevirtual 203	com/qq/jce/wup/UniAttribute:decode	([B)V
    //   132: aload 14
    //   134: getstatic 209	QQPIM/NetInterfaceUsageType:NET_INTERFACE_TYPE_TRAFFIC_STAT	LQQPIM/NetInterfaceUsageType;
    //   137: invokevirtual 210	QQPIM/NetInterfaceUsageType:toString	()Ljava/lang/String;
    //   140: new 212	QQPIM/NetInterfaceTypeInfoList
    //   143: dup
    //   144: invokespecial 213	QQPIM/NetInterfaceTypeInfoList:<init>	()V
    //   147: invokevirtual 217	com/qq/jce/wup/UniAttribute:get	(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    //   150: checkcast 212	QQPIM/NetInterfaceTypeInfoList
    //   153: astore_2
    //   154: aload 4
    //   156: invokevirtual 220	java/io/FileInputStream:close	()V
    //   159: goto -121 -> 38
    //   162: astore 12
    //   164: aload 12
    //   166: invokevirtual 223	java/io/IOException:printStackTrace	()V
    //   169: goto -131 -> 38
    //   172: astore 5
    //   174: aconst_null
    //   175: astore 4
    //   177: aload 5
    //   179: invokevirtual 224	java/lang/Exception:printStackTrace	()V
    //   182: aload 4
    //   184: ifnull +63 -> 247
    //   187: aload 4
    //   189: invokevirtual 220	java/io/FileInputStream:close	()V
    //   192: aconst_null
    //   193: astore_2
    //   194: goto -156 -> 38
    //   197: astore 8
    //   199: aload 8
    //   201: invokevirtual 223	java/io/IOException:printStackTrace	()V
    //   204: aconst_null
    //   205: astore_2
    //   206: goto -168 -> 38
    //   209: astore 6
    //   211: aconst_null
    //   212: astore 4
    //   214: aload 4
    //   216: ifnull +8 -> 224
    //   219: aload 4
    //   221: invokevirtual 220	java/io/FileInputStream:close	()V
    //   224: aload 6
    //   226: athrow
    //   227: astore 7
    //   229: aload 7
    //   231: invokevirtual 223	java/io/IOException:printStackTrace	()V
    //   234: goto -10 -> 224
    //   237: astore 6
    //   239: goto -25 -> 214
    //   242: astore 5
    //   244: goto -67 -> 177
    //   247: aconst_null
    //   248: astore_2
    //   249: goto -211 -> 38
    //   252: aconst_null
    //   253: astore_2
    //   254: goto -100 -> 154
    //
    // Exception table:
    //   from	to	target	type
    //   154	159	162	java/io/IOException
    //   49	59	172	java/lang/Exception
    //   187	192	197	java/io/IOException
    //   49	59	209	finally
    //   219	224	227	java/io/IOException
    //   59	154	237	finally
    //   177	182	237	finally
    //   59	154	242	java/lang/Exception
  }

  private boolean c(String paramString)
  {
    boolean bool;
    if (!paramString.startsWith("ppp"))
      bool = false;
    while (true)
    {
      return bool;
      if ((this.g != null) && (this.g.equals(paramString)))
      {
        bool = true;
      }
      else
      {
        ArrayList localArrayList1 = new ArrayList(1);
        String str1 = ScriptHelper.runScript(1000, new String[] { "ip route" });
        Matcher localMatcher;
        label79: String str2;
        ArrayList localArrayList2;
        Iterator localIterator;
        if (str1 != null)
        {
          localMatcher = Pattern.compile("dev\\s+([\\w]+)").matcher(str1);
          if (localMatcher.find());
        }
        else
        {
          int i = localArrayList1.size();
          str2 = null;
          if (i > 1)
          {
            localArrayList2 = new ArrayList(1);
            localIterator = localArrayList1.iterator();
            label122: if (localIterator.hasNext())
              break label290;
            if (localArrayList2.size() <= 0)
              break label325;
            str2 = (String)localArrayList2.get(0);
            if (localArrayList2.size() > 1)
            {
              String str4 = a(localArrayList2).replaceAll("\n", ",");
              StringBuilder localStringBuilder = new StringBuilder("IpAddr: ");
              localStringBuilder.append(str4).append(";");
              if (this.e != null)
                this.e.a(a, localStringBuilder.toString(), true);
            }
          }
        }
        while (true)
        {
          this.g = str2;
          if ((this.g == null) || (!this.g.equals(paramString)))
            break label340;
          bool = true;
          break;
          String str5 = localMatcher.group(1);
          if (localArrayList1.contains(str5))
            break label79;
          localArrayList1.add(str5);
          break label79;
          label290: String str3 = (String)localIterator.next();
          if (!str3.startsWith("ppp"))
            break label122;
          localArrayList2.add(str3);
          break label122;
          label325: str2 = (String)localArrayList1.get(0);
        }
        label340: bool = false;
      }
    }
  }

  public final void a()
  {
    NetInterfaceTypeInfoList localNetInterfaceTypeInfoList = b();
    Iterator localIterator;
    if (localNetInterfaceTypeInfoList != null)
      localIterator = localNetInterfaceTypeInfoList.vctInterfaceInfos.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      NetInterfaceTypeInfo localNetInterfaceTypeInfo = (NetInterfaceTypeInfo)localIterator.next();
      if ("MOBILE".equalsIgnoreCase(localNetInterfaceTypeInfo.typeName))
      {
        this.b.clear();
        this.b.addAll(localNetInterfaceTypeInfo.keySet);
      }
      else if ("WIFI".equalsIgnoreCase(localNetInterfaceTypeInfo.typeName))
      {
        this.c.clear();
        this.c.addAll(localNetInterfaceTypeInfo.keySet);
      }
      else if ("EXCLUDE".equalsIgnoreCase(localNetInterfaceTypeInfo.typeName))
      {
        this.d.clear();
        this.d.addAll(localNetInterfaceTypeInfo.keySet);
      }
    }
  }

  public final boolean a(String paramString)
  {
    if ((!c(paramString)) && (a(this.b, paramString)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean b(String paramString)
  {
    if ((!c(paramString)) && (a(this.c, paramString)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bwn
 * JD-Core Version:    0.6.2
 */