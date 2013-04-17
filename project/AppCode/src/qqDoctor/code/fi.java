import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Environment;
import android.os.Messenger;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.tmsecure.common.TMSService;
import com.tencent.tmsecure.utils.StringUtil;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class fi
{
  static
  {
    DisplayMetrics localDisplayMetrics = QQPimApplication.a().getResources().getDisplayMetrics();
    int i = (int)(4.0F * localDisplayMetrics.density);
    lm.e.c = i;
    lm.e.d = i;
    int j = lm.e.c;
    for (int k = 0; ; k++)
    {
      j += k;
      int m = localDisplayMetrics.widthPixels - i * 2 - j * 2;
      if ((m % 3 == 0) || (k == 2))
      {
        int n = m / 3;
        lm.e.a = n;
        lm.e.b = n;
        int i1 = localDisplayMetrics.widthPixels - i * 2 - n * 3;
        if (i1 % 2 == 0)
          lm.e.e = (i1 / 2);
        for (lm.e.f = (i1 / 2); ; lm.e.f = ((i1 + 1) / 2))
        {
          new StringBuilder("widthPixels:").append(localDisplayMetrics.widthPixels).toString();
          lm.e.toString();
          return;
          lm.e.e = ((i1 - 1) / 2);
        }
      }
    }
  }

  public static String a(String paramString)
  {
    String str2;
    if (lm.d == null)
      str2 = null;
    while (true)
    {
      return str2;
      ArrayList localArrayList = lm.d;
      String str1;
      if ((localArrayList == null) || (localArrayList.size() == 0))
        str1 = null;
      while (true)
      {
        if (str1 == null)
          break label158;
        str2 = str1 + "/.tmfs/";
        File localFile1 = new File(str2);
        if (localFile1.exists())
          break;
        localFile1.mkdirs();
        break;
        for (File localFile2 = new File(paramString); ; localFile2 = localFile2.getParentFile())
        {
          if (localFile2 == null)
            break label153;
          if (localFile2.isDirectory())
          {
            Iterator localIterator = localArrayList.iterator();
            while (true)
              if (localIterator.hasNext())
              {
                str1 = (String)localIterator.next();
                if (str1.equalsIgnoreCase(localFile2.getAbsolutePath()))
                  break;
              }
          }
        }
        label153: str1 = null;
      }
      label158: str2 = null;
    }
  }

  // ERROR //
  public static ArrayList<String> a()
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_0
    //   2: new 82	java/util/ArrayList
    //   5: dup
    //   6: invokespecial 138	java/util/ArrayList:<init>	()V
    //   9: astore_1
    //   10: invokestatic 143	android/os/Environment:getExternalStorageState	()Ljava/lang/String;
    //   13: ldc 145
    //   15: invokevirtual 149	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   18: ifne +160 -> 178
    //   21: iload_0
    //   22: ifne +23 -> 45
    //   25: invokestatic 152	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   28: invokevirtual 124	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   31: astore 12
    //   33: aload 12
    //   35: ifnull +10 -> 45
    //   38: aload_1
    //   39: aload 12
    //   41: invokevirtual 155	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   44: pop
    //   45: new 157	java/io/BufferedReader
    //   48: dup
    //   49: new 159	java/io/FileReader
    //   52: dup
    //   53: ldc 161
    //   55: invokespecial 162	java/io/FileReader:<init>	(Ljava/lang/String;)V
    //   58: invokespecial 165	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   61: astore_2
    //   62: aload_2
    //   63: invokevirtual 168	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   66: astore 7
    //   68: aload 7
    //   70: ifnull +218 -> 288
    //   73: aload 7
    //   75: ldc 170
    //   77: invokevirtual 174	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   80: ifne +33 -> 113
    //   83: aload 7
    //   85: ldc 176
    //   87: invokevirtual 174	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   90: ifne +23 -> 113
    //   93: aload 7
    //   95: ldc 178
    //   97: invokevirtual 174	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   100: ifne +13 -> 113
    //   103: aload 7
    //   105: ldc 180
    //   107: invokevirtual 174	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   110: ifeq -48 -> 62
    //   113: aload 7
    //   115: ldc 182
    //   117: invokevirtual 186	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   120: astore 9
    //   122: aload 9
    //   124: iconst_1
    //   125: aaload
    //   126: invokestatic 152	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   129: invokevirtual 189	java/io/File:getPath	()Ljava/lang/String;
    //   132: invokevirtual 149	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   135: ifeq +59 -> 194
    //   138: aload_1
    //   139: aload 9
    //   141: iconst_1
    //   142: aaload
    //   143: invokestatic 192	fi:a	(Ljava/util/ArrayList;Ljava/lang/String;)Z
    //   146: ifne -84 -> 62
    //   149: aload_1
    //   150: aload 9
    //   152: iconst_1
    //   153: aaload
    //   154: invokevirtual 155	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   157: pop
    //   158: goto -96 -> 62
    //   161: astore 5
    //   163: aload 5
    //   165: invokevirtual 195	java/lang/Exception:printStackTrace	()V
    //   168: aload_2
    //   169: ifnull +7 -> 176
    //   172: aload_2
    //   173: invokevirtual 198	java/io/BufferedReader:close	()V
    //   176: aload_1
    //   177: areturn
    //   178: invokestatic 201	a:b	()Z
    //   181: ifne +8 -> 189
    //   184: iconst_2
    //   185: istore_0
    //   186: goto -165 -> 21
    //   189: iconst_0
    //   190: istore_0
    //   191: goto -170 -> 21
    //   194: aload 7
    //   196: ldc 203
    //   198: invokevirtual 174	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   201: ifeq -139 -> 62
    //   204: aload 7
    //   206: ldc 205
    //   208: invokevirtual 174	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   211: ifne -149 -> 62
    //   214: aload 7
    //   216: ldc 207
    //   218: invokevirtual 174	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   221: ifne -159 -> 62
    //   224: aload 7
    //   226: ldc 209
    //   228: invokevirtual 174	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   231: ifne -169 -> 62
    //   234: aload 7
    //   236: ldc 211
    //   238: invokevirtual 174	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   241: ifne -179 -> 62
    //   244: aload 7
    //   246: ldc 213
    //   248: invokevirtual 174	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   251: ifne -189 -> 62
    //   254: aload_1
    //   255: aload 9
    //   257: iconst_1
    //   258: aaload
    //   259: invokestatic 192	fi:a	(Ljava/util/ArrayList;Ljava/lang/String;)Z
    //   262: ifne -200 -> 62
    //   265: aload_1
    //   266: aload 9
    //   268: iconst_1
    //   269: aaload
    //   270: invokevirtual 155	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   273: pop
    //   274: goto -212 -> 62
    //   277: astore_3
    //   278: aload_2
    //   279: ifnull +7 -> 286
    //   282: aload_2
    //   283: invokevirtual 198	java/io/BufferedReader:close	()V
    //   286: aload_3
    //   287: athrow
    //   288: aload_1
    //   289: invokestatic 216	fi:a	(Ljava/util/ArrayList;)V
    //   292: aload_2
    //   293: invokevirtual 198	java/io/BufferedReader:close	()V
    //   296: goto -120 -> 176
    //   299: astore 8
    //   301: aload 8
    //   303: invokevirtual 217	java/io/IOException:printStackTrace	()V
    //   306: goto -130 -> 176
    //   309: astore 6
    //   311: aload 6
    //   313: invokevirtual 217	java/io/IOException:printStackTrace	()V
    //   316: goto -140 -> 176
    //   319: astore 4
    //   321: aload 4
    //   323: invokevirtual 217	java/io/IOException:printStackTrace	()V
    //   326: goto -40 -> 286
    //   329: astore_3
    //   330: aconst_null
    //   331: astore_2
    //   332: goto -54 -> 278
    //   335: astore 5
    //   337: aconst_null
    //   338: astore_2
    //   339: goto -176 -> 163
    //
    // Exception table:
    //   from	to	target	type
    //   62	158	161	java/lang/Exception
    //   194	274	161	java/lang/Exception
    //   288	292	161	java/lang/Exception
    //   62	158	277	finally
    //   163	168	277	finally
    //   194	274	277	finally
    //   288	292	277	finally
    //   292	296	299	java/io/IOException
    //   172	176	309	java/io/IOException
    //   282	286	319	java/io/IOException
    //   45	62	329	finally
    //   45	62	335	java/lang/Exception
  }

  public static void a(Context paramContext)
  {
    Intent localIntent = new Intent("android.intent.action.MEDIA_MOUNTED", Uri.parse("file://" + Environment.getExternalStorageDirectory()));
    try
    {
      paramContext.sendBroadcast(localIntent);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public static void a(Context paramContext, Messenger paramMessenger)
  {
    Intent localIntent = new Intent(paramContext, se.class);
    localIntent.putExtra("extra_action", "extra_action_filesafeservice_get_state");
    if (paramMessenger != null)
      localIntent.putExtra("extra_messenger", paramMessenger);
    TMSService.startService(new se(), localIntent);
  }

  public static void a(Context paramContext, Toast paramToast, int paramInt)
  {
    View localView = ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130903098, null);
    ((TextView)localView.findViewById(2131230864)).setText(paramInt);
    paramToast.setDuration(1);
    paramToast.setView(localView);
    paramToast.show();
  }

  public static void a(Context paramContext, ArrayList<String> paramArrayList, Messenger paramMessenger)
  {
    if ((paramArrayList == null) || (paramArrayList.size() == 0));
    while (true)
    {
      return;
      Intent localIntent = new Intent(paramContext, se.class);
      localIntent.putExtra("extra_action", "extra_action_encry");
      localIntent.putExtra("extra_file_path_list", paramArrayList);
      if (paramMessenger != null)
        localIntent.putExtra("extra_messenger", paramMessenger);
      TMSService.startService(new se(), localIntent);
    }
  }

  private static void a(ArrayList<String> paramArrayList)
  {
    if ((paramArrayList == null) || (paramArrayList.size() <= 0));
    while (true)
    {
      return;
      for (int i = 0; i < paramArrayList.size(); i++)
        while (((String)paramArrayList.get(i)).endsWith("/"))
          paramArrayList.set(i, ((String)paramArrayList.get(i)).substring(0, -1 + ((String)paramArrayList.get(i)).length()));
    }
  }

  public static void a(List<lj> paramList)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
      b((lj)localIterator.next());
  }

  private static void a(ll paramll, String paramString1, String paramString2)
  {
    int i = 0;
    String str1 = "";
    File localFile1;
    File localFile2;
    switch (paramll.c())
    {
    default:
      String str2 = paramll.b();
      localFile1 = new File(str1, a.h(str2) + ".jpg.tmp");
      if (localFile1.exists())
        localFile2 = new File(new File(paramString1), paramString2);
      break;
    case 0:
    case 1:
    }
    while (true)
    {
      try
      {
        boolean bool2 = k.b(localFile1, localFile2);
        bool1 = bool2;
        if (bool1)
        {
          new StringBuilder("Move thumb:").append(localFile1.getAbsolutePath()).append(" OK").toString();
          if (k.a(localFile2))
          {
            return;
            str1 = dx.g + File.separator;
            break;
            str1 = dx.h + File.separator;
          }
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        boolean bool1 = false;
        continue;
        Thread.yield();
        Thread.yield();
        if (k.a(localFile2))
          continue;
      }
      Bitmap localBitmap = null;
      if (i < 2)
      {
        if (paramll.c() == 0);
        for (localBitmap = gz.a(paramll.b(), lm.e.a, lm.e.b); ; localBitmap = gz.b(paramll.b(), lm.e.a, lm.e.b))
        {
          if (localBitmap != null)
            break label336;
          new StringBuilder().append(paramll.b()).append(": bmp is null").toString();
          System.gc();
          Thread.yield();
          i++;
          break;
        }
      }
      label336: if (localBitmap != null)
      {
        gz.a(localBitmap, paramString1 + paramString2);
        localBitmap.recycle();
      }
    }
  }

  private static boolean a(ArrayList<String> paramArrayList, String paramString)
  {
    Iterator localIterator = paramArrayList.iterator();
    String str1;
    boolean bool1;
    if (localIterator.hasNext())
    {
      str1 = (String)localIterator.next();
      if (paramString.equals(str1))
        bool1 = true;
    }
    while (true)
    {
      return bool1;
      try
      {
        String str2 = new File(str1).getCanonicalPath();
        String str3 = new File(paramString).getCanonicalPath();
        if ((str2 != null) && (str3 != null))
        {
          boolean bool2 = str2.equals(str3);
          bool1 = bool2;
        }
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
        bool1 = false;
      }
      continue;
      bool1 = false;
    }
  }

  public static boolean a(lj paramlj)
  {
    boolean bool = false;
    if (paramlj == null);
    while (true)
    {
      return bool;
      kq localkq = new kq();
      ib localib = new ib();
      String str1 = paramlj.b();
      String str2 = paramlj.a();
      paramlj.c();
      int i = localkq.a(str1, str2);
      bool = false;
      if (i == 0)
      {
        String str3 = paramlj.a();
        localib.a.a("file_safe_file_info", "mFileSrcPath=?", new String[] { str3 });
        String str4 = paramlj.b();
        a.d(str4 + "_tmb");
        bool = true;
      }
    }
  }

  public static boolean a(ll paramll)
  {
    String str1 = StringUtil.assertNotNullString(paramll.b());
    ib localib = new ib();
    lj locallj1 = localib.b("file_safe_file_info", "mFileSrcPath=?", new String[] { str1 }, "id ASC");
    int j;
    String str2;
    if (locallj1 != null)
    {
      String str8 = locallj1.a();
      if ((str8 != null) && (!str8.equals("")))
      {
        j = 1;
        if (j == 0)
          break label489;
        long l2 = System.currentTimeMillis();
        int k = str1.lastIndexOf(".");
        if (k == -1)
          break label489;
        str2 = str1.substring(0, k) + "_" + l2 + str1.substring(k);
        if (!new File(str1).renameTo(new File(str2)))
          break label205;
        paramll.b(str2);
      }
    }
    while (true)
    {
      lj locallj2 = new lj();
      kq localkq = new kq();
      String str3 = a(str2);
      boolean bool;
      if (str3 == null)
        bool = false;
      while (true)
      {
        return bool;
        j = 0;
        break;
        label205: bool = false;
        continue;
        String str4 = a.h(str2);
        String str5 = str3 + str4;
        String str6 = str5 + "_tmb";
        int i = paramll.c();
        if ((i == 0) || (i == 1))
          a(paramll, str3, str4 + "_tmb");
        if (localkq.a(paramll.b(), str5, paramll.c()) != 0)
        {
          a.d(str6);
          bool = false;
        }
        else
        {
          locallj2.a = paramll.b();
          locallj2.b = str5;
          locallj2.c = paramll.c();
          locallj2.d = 1;
          locallj2.e = k.c(paramll.a());
          ContentValues localContentValues = new ContentValues();
          ib.a(localContentValues, locallj2);
          long l1 = localib.a.a("file_safe_file_info", localContentValues);
          if (l1 == -1L)
            l1 = localib.a.a("file_safe_file_info", localContentValues);
          localib.a.d();
          if (l1 == -1L)
          {
            String str7 = paramll.b();
            paramll.c();
            localkq.a(str5, str7);
            a.d(str6);
            bool = false;
          }
          else
          {
            bool = true;
          }
        }
      }
      label489: str2 = str1;
    }
  }

  public static void b()
  {
    lm.d = a();
  }

  public static void b(Context paramContext)
  {
    Intent localIntent = new Intent(paramContext, se.class);
    localIntent.putExtra("extra_action", "extra_action_filesafe_init");
    TMSService.startService(new se(), localIntent);
  }

  public static void b(Context paramContext, ArrayList<lj> paramArrayList, Messenger paramMessenger)
  {
    if ((paramArrayList == null) || (paramArrayList.size() == 0));
    while (true)
    {
      return;
      Intent localIntent = new Intent(paramContext, se.class);
      localIntent.putExtra("extra_action", "extra_action_decry");
      localIntent.putExtra("extra_file_fileCryptInfo_list", paramArrayList);
      if (paramMessenger != null)
        localIntent.putExtra("extra_messenger", paramMessenger);
      TMSService.startService(new se(), localIntent);
    }
  }

  public static void b(lj paramlj)
  {
    ib localib = new ib();
    String str1 = paramlj.a();
    localib.a.a("file_safe_file_info", "mFileSrcPath=?", new String[] { str1 });
    String str2 = paramlj.b();
    a.d(str2);
    a.d(str2 + "_tmb");
  }

  public static boolean c()
  {
    ft.a locala = new ft.a();
    ft.a(locala);
    long l = locala.a;
    boolean bool1 = l < 0L;
    boolean bool2 = false;
    if (!bool1);
    while (true)
    {
      return bool2;
      boolean bool3 = l < 10240L;
      bool2 = false;
      if (!bool3)
        bool2 = true;
    }
  }

  public static boolean d()
  {
    boolean bool1 = true;
    String str = ho.a().cd();
    if ((str == null) || (str.equals("")))
      bool1 = false;
    while (true)
    {
      return bool1;
      boolean bool2 = a.d("module_file_safe", str);
      if (!bool2)
        if (new ib().a() == 0)
          a.g("module_file_safe");
        else
          bool1 = bool2;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     fi
 * JD-Core Version:    0.6.2
 */