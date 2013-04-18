package com.keniu.security.sync;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.Xml;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.Toast;
import com.hoi.a.a;
import com.ijinshan.kinghelper.a.j;
import com.keniu.security.sync.b.b;
import com.keniu.security.sync.b.c;
import com.keniu.security.util.aq;
import com.keniu.security.util.av;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.StringWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.util.EntityUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.xmlpull.v1.XmlSerializer;

public class l
{
  private static Toast a;

  public static String a(String paramString)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(paramString.getBytes());
      String str2 = a.a(localMessageDigest.digest(), 2);
      str1 = str2;
      return str1;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      while (true)
        String str1 = "";
    }
  }

  public static List a(List paramList1, List paramList2)
  {
    List localList;
    if (paramList1 == null)
      localList = paramList2;
    while (true)
    {
      return localList;
      if (paramList2 == null)
      {
        localList = null;
      }
      else
      {
        Iterator localIterator = paramList1.iterator();
        while (localIterator.hasNext())
        {
          b localb = (b)localIterator.next();
          if (!c.a(localb.b()))
            paramList2.add(localb);
        }
        localList = paramList2;
      }
    }
  }

  public static List a(JSONArray paramJSONArray)
  {
    if (paramJSONArray == null)
    {
      localObject = null;
      return localObject;
    }
    Object localObject = new ArrayList();
    int i = 0;
    while (i < paramJSONArray.length())
      try
      {
        b localb2 = b.a(new JSONObject(paramJSONArray.getString(i)));
        localb1 = localb2;
        if (localb1 != null)
          ((List)localObject).add(localb1);
        i++;
      }
      catch (JSONException localJSONException)
      {
        while (true)
          b localb1 = null;
      }
  }

  public static JSONArray a(List paramList)
  {
    if ((paramList == null) || (paramList.size() == 0));
    for (JSONArray localJSONArray = null; ; localJSONArray = new JSONArray(paramList))
      return localJSONArray;
  }

  public static JSONObject a(HttpResponse paramHttpResponse)
  {
    JSONObject localJSONObject;
    if (paramHttpResponse == null)
      localJSONObject = null;
    while (true)
    {
      return localJSONObject;
      HttpEntity localHttpEntity = paramHttpResponse.getEntity();
      if (localHttpEntity != null)
        localJSONObject = new JSONObject(EntityUtils.toString(localHttpEntity, "UTF-8"));
      else
        localJSONObject = null;
    }
  }

  public static void a(Context paramContext)
  {
    k localk = k.a();
    localk.a(paramContext.getApplicationContext());
    String str = av.c(paramContext.getApplicationContext());
    if ((str != null) && (!str.equals("-1")))
      localk.a("last_imsi_for_sim_change", str);
  }

  public static void a(Context paramContext, int paramInt)
  {
    if (paramContext == null);
    while (true)
    {
      return;
      if (a != null)
      {
        i.a(l.class, ">>>>> cancel the Toast");
        a.cancel();
        a.setText(paramInt);
        a.show();
      }
      else
      {
        Toast localToast = Toast.makeText(paramContext, paramInt, 1);
        a = localToast;
        localToast.show();
      }
    }
  }

  public static void a(Context paramContext, int paramInt1, int paramInt2)
  {
    if ((paramContext == null) || (((Activity)paramContext).isFinishing()));
    while (true)
    {
      return;
      new aq(paramContext, (byte)0).a(paramInt1).b(paramInt2).b(2131428298, new n()).d();
    }
  }

  private static void a(Context paramContext, int paramInt, String paramString)
  {
    new aq(paramContext, (byte)0).a(paramInt).b(paramString).b(2131428298, new o()).d();
  }

  public static void a(Context paramContext, AlertDialog paramAlertDialog, int paramInt)
  {
    paramAlertDialog.setMessage(paramContext.getString(paramInt));
    paramAlertDialog.show();
  }

  private static void a(Context paramContext, String paramString)
  {
    if (paramContext == null);
    while (true)
    {
      return;
      if (a != null)
      {
        i.a(l.class, ">>>>> cancel the Toast");
        a.cancel();
        a.setText(paramString);
        a.show();
      }
      else
      {
        Toast localToast = Toast.makeText(paramContext, paramString, 1);
        a = localToast;
        localToast.show();
      }
    }
  }

  private static void a(Context paramContext, String paramString, int paramInt)
  {
    new aq(paramContext, (byte)0).a(paramString).b(paramInt).b(2131428298, new p()).d();
  }

  private static void a(Context paramContext, String paramString1, String paramString2)
  {
    new aq(paramContext, (byte)0).a(paramString1).b(paramString2).b(2131428298, new m()).d();
  }

  public static void a(ListView paramListView)
  {
    ListAdapter localListAdapter = paramListView.getAdapter();
    if (localListAdapter == null);
    while (true)
    {
      return;
      int i = View.MeasureSpec.makeMeasureSpec(paramListView.getWidth(), -2147483648);
      int j = 0;
      int k = 0;
      while (j < localListAdapter.getCount())
      {
        View localView = localListAdapter.getView(j, null, paramListView);
        localView.measure(i, 0);
        k += localView.getMeasuredHeight();
        j++;
      }
      ViewGroup.LayoutParams localLayoutParams = paramListView.getLayoutParams();
      localLayoutParams.height = (k + paramListView.getDividerHeight() * (localListAdapter.getCount() - 1));
      paramListView.setLayoutParams(localLayoutParams);
      paramListView.requestLayout();
    }
  }

  // ERROR //
  public static boolean a(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +9 -> 10
    //   4: iconst_0
    //   5: istore 7
    //   7: iload 7
    //   9: ireturn
    //   10: new 294	java/io/File
    //   13: dup
    //   14: aload_1
    //   15: invokespecial 295	java/io/File:<init>	(Ljava/lang/String;)V
    //   18: astore_2
    //   19: aconst_null
    //   20: astore_3
    //   21: new 297	java/io/BufferedWriter
    //   24: dup
    //   25: new 299	java/io/FileWriter
    //   28: dup
    //   29: aload_2
    //   30: invokespecial 302	java/io/FileWriter:<init>	(Ljava/io/File;)V
    //   33: invokespecial 305	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   36: astore 4
    //   38: aload 4
    //   40: aload_0
    //   41: invokevirtual 308	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   44: aload 4
    //   46: invokevirtual 311	java/io/BufferedWriter:flush	()V
    //   49: aload 4
    //   51: invokevirtual 314	java/io/BufferedWriter:close	()V
    //   54: iconst_1
    //   55: istore 7
    //   57: goto -50 -> 7
    //   60: astore 12
    //   62: aconst_null
    //   63: astore 6
    //   65: aload 6
    //   67: ifnull +8 -> 75
    //   70: aload 6
    //   72: invokevirtual 314	java/io/BufferedWriter:close	()V
    //   75: iconst_0
    //   76: istore 7
    //   78: goto -71 -> 7
    //   81: astore 9
    //   83: aload_3
    //   84: ifnull +7 -> 91
    //   87: aload_3
    //   88: invokevirtual 314	java/io/BufferedWriter:close	()V
    //   91: aload 9
    //   93: athrow
    //   94: astore 11
    //   96: goto -42 -> 54
    //   99: astore 8
    //   101: goto -26 -> 75
    //   104: astore 10
    //   106: goto -15 -> 91
    //   109: astore 9
    //   111: aload 4
    //   113: astore_3
    //   114: goto -31 -> 83
    //   117: astore 5
    //   119: aload 4
    //   121: astore 6
    //   123: goto -58 -> 65
    //
    // Exception table:
    //   from	to	target	type
    //   21	38	60	java/lang/Exception
    //   21	38	81	finally
    //   49	54	94	java/lang/Exception
    //   70	75	99	java/lang/Exception
    //   87	91	104	java/lang/Exception
    //   38	49	109	finally
    //   38	49	117	java/lang/Exception
  }

  public static boolean a(String paramString1, String paramString2, boolean paramBoolean)
  {
    boolean bool;
    if (!b(paramString1, paramString2))
      bool = false;
    while (true)
    {
      return bool;
      if ((paramBoolean) && (!c(paramString2)))
        bool = false;
      else if (!j.a(new File(paramString2), new File(paramString1)))
        bool = false;
      else
        bool = true;
    }
  }

  public static String b(Context paramContext)
  {
    if (paramContext == null);
    for (String str = ""; ; str = ((TelephonyManager)paramContext.getSystemService("phone")).getLine1Number())
      return str;
  }

  public static String b(List paramList)
  {
    if (paramList == null);
    String str;
    for (Object localObject = null; ; localObject = str)
    {
      return localObject;
      XmlSerializer localXmlSerializer = Xml.newSerializer();
      StringWriter localStringWriter = new StringWriter();
      while (true)
      {
        b localb;
        try
        {
          localXmlSerializer.setOutput(localStringWriter);
          localXmlSerializer.startDocument("UTF-8", Boolean.valueOf(true));
          localXmlSerializer.startTag("", "map");
          Iterator localIterator = paramList.iterator();
          if (!localIterator.hasNext())
            break;
          localb = (b)localIterator.next();
          localXmlSerializer.startTag("", localb.a());
          localXmlSerializer.attribute("", "name", localb.b());
          if (localb.a().equals("string"))
          {
            localXmlSerializer.text(localb.c());
            localXmlSerializer.endTag("", localb.a());
            continue;
          }
        }
        catch (Exception localException)
        {
          throw new RuntimeException(localException);
        }
        localXmlSerializer.attribute("", "value", localb.c());
      }
      localXmlSerializer.endTag("", "map");
      localXmlSerializer.endDocument();
      str = localStringWriter.toString();
    }
  }

  // ERROR //
  public static JSONArray b(String paramString)
  {
    // Byte code:
    //   0: ldc 41
    //   2: astore_1
    //   3: new 400	java/io/BufferedReader
    //   6: dup
    //   7: new 402	java/io/FileReader
    //   10: dup
    //   11: new 294	java/io/File
    //   14: dup
    //   15: aload_0
    //   16: invokespecial 295	java/io/File:<init>	(Ljava/lang/String;)V
    //   19: invokespecial 403	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   22: invokespecial 406	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   25: astore_2
    //   26: aload_2
    //   27: invokevirtual 409	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   30: astore 9
    //   32: aload 9
    //   34: ifnull +9 -> 43
    //   37: aload 9
    //   39: astore_1
    //   40: goto -14 -> 26
    //   43: aload_2
    //   44: invokevirtual 410	java/io/BufferedReader:close	()V
    //   47: new 81	org/json/JSONArray
    //   50: dup
    //   51: aload_1
    //   52: invokespecial 411	org/json/JSONArray:<init>	(Ljava/lang/String;)V
    //   55: astore 11
    //   57: aload 11
    //   59: astore 5
    //   61: aload 5
    //   63: areturn
    //   64: astore 13
    //   66: aconst_null
    //   67: astore 4
    //   69: aload 4
    //   71: ifnull +8 -> 79
    //   74: aload 4
    //   76: invokevirtual 410	java/io/BufferedReader:close	()V
    //   79: aconst_null
    //   80: astore 5
    //   82: goto -21 -> 61
    //   85: astore 7
    //   87: aconst_null
    //   88: astore_2
    //   89: aload_2
    //   90: ifnull +7 -> 97
    //   93: aload_2
    //   94: invokevirtual 410	java/io/BufferedReader:close	()V
    //   97: aload 7
    //   99: athrow
    //   100: astore 12
    //   102: aconst_null
    //   103: astore 5
    //   105: goto -44 -> 61
    //   108: astore 10
    //   110: goto -63 -> 47
    //   113: astore 6
    //   115: goto -36 -> 79
    //   118: astore 8
    //   120: goto -23 -> 97
    //   123: astore 7
    //   125: goto -36 -> 89
    //   128: astore_3
    //   129: aload_2
    //   130: astore 4
    //   132: goto -63 -> 69
    //
    // Exception table:
    //   from	to	target	type
    //   3	26	64	java/lang/Exception
    //   3	26	85	finally
    //   47	57	100	org/json/JSONException
    //   43	47	108	java/lang/Exception
    //   74	79	113	java/lang/Exception
    //   93	97	118	java/lang/Exception
    //   26	32	123	finally
    //   26	32	128	java/lang/Exception
  }

  public static void b(Context paramContext, int paramInt)
  {
    if ((paramContext == null) || (((Activity)paramContext).isFinishing()));
    while (true)
    {
      return;
      new aq(paramContext, (byte)0).a(2131427865).b(paramInt).b(2131428298, new q()).d();
    }
  }

  private static boolean b(String paramString1, String paramString2)
  {
    GZIPOutputStream localGZIPOutputStream;
    FileInputStream localFileInputStream;
    boolean bool;
    try
    {
      localGZIPOutputStream = new GZIPOutputStream(new FileOutputStream(paramString2));
      localFileInputStream = new FileInputStream(paramString1);
      byte[] arrayOfByte = new byte[1024];
      while (true)
      {
        int i = localFileInputStream.read(arrayOfByte);
        if (i <= 0)
          break;
        localGZIPOutputStream.write(arrayOfByte, 0, i);
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      bool = false;
    }
    while (true)
    {
      return bool;
      localFileInputStream.close();
      localGZIPOutputStream.close();
      bool = true;
    }
  }

  public static boolean b(String paramString1, String paramString2, boolean paramBoolean)
  {
    boolean bool;
    if (!j.b(new File(paramString1), new File(paramString2)))
      bool = false;
    while (true)
    {
      return bool;
      if ((paramBoolean) || (d(paramString2)))
      {
        if (!c(paramString2, paramString1))
          bool = false;
      }
      else
      {
        d(paramString1, paramString2);
        bool = true;
      }
    }
  }

  public static String c(Context paramContext)
  {
    String str = ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
    if (str == null)
    {
      WifiInfo localWifiInfo = ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo();
      if (localWifiInfo != null)
        str = localWifiInfo.getMacAddress();
      if (str == null)
        str = Build.DEVICE + System.currentTimeMillis();
    }
    MessageDigest localMessageDigest = MessageDigest.getInstance("SHA-1");
    localMessageDigest.update(str.getBytes());
    return localMessageDigest.digest().toString();
  }

  public static boolean c(String paramString)
  {
    FileInputStream localFileInputStream;
    FileOutputStream localFileOutputStream;
    boolean bool;
    try
    {
      localFileInputStream = new FileInputStream(new File(paramString));
      localFileOutputStream = new FileOutputStream(new File(paramString + ".flag"));
      localFileOutputStream.write(r.dA);
      byte[] arrayOfByte = new byte[1024];
      while (true)
      {
        int i = localFileInputStream.read(arrayOfByte);
        if (i <= 0)
          break;
        localFileOutputStream.write(arrayOfByte, 0, i);
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      bool = false;
    }
    while (true)
    {
      return bool;
      localFileInputStream.close();
      localFileOutputStream.close();
      new File(paramString + ".flag").renameTo(new File(paramString));
      bool = true;
    }
  }

  private static boolean c(String paramString1, String paramString2)
  {
    GZIPInputStream localGZIPInputStream;
    FileOutputStream localFileOutputStream;
    boolean bool;
    try
    {
      localGZIPInputStream = new GZIPInputStream(new FileInputStream(paramString1));
      localFileOutputStream = new FileOutputStream(paramString2);
      byte[] arrayOfByte = new byte[1024];
      while (true)
      {
        int i = localGZIPInputStream.read(arrayOfByte);
        if (i <= 0)
          break;
        localFileOutputStream.write(arrayOfByte, 0, i);
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      bool = false;
    }
    while (true)
    {
      return bool;
      localGZIPInputStream.close();
      localFileOutputStream.close();
      bool = true;
    }
  }

  public static final boolean d(String paramString)
  {
    FileInputStream localFileInputStream;
    FileOutputStream localFileOutputStream;
    boolean bool2;
    boolean bool1;
    try
    {
      localFileInputStream = new FileInputStream(new File(paramString));
      localFileOutputStream = new FileOutputStream(new File(paramString + ".flag"));
      byte[] arrayOfByte1 = new byte[r.dA.length];
      localFileInputStream.read(arrayOfByte1, 0, arrayOfByte1.length);
      if (!j.a(arrayOfByte1, r.dA))
      {
        localFileOutputStream.write(arrayOfByte1, 0, arrayOfByte1.length);
        bool2 = false;
        byte[] arrayOfByte2 = new byte[1024];
        while (true)
        {
          int i = localFileInputStream.read(arrayOfByte2);
          if (i <= 0)
            break;
          localFileOutputStream.write(arrayOfByte2, 0, i);
        }
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      bool1 = false;
    }
    while (true)
    {
      return bool1;
      bool2 = true;
      break;
      localFileInputStream.close();
      localFileOutputStream.close();
      new File(paramString + ".flag").renameTo(new File(paramString));
      bool1 = bool2;
    }
  }

  private static boolean d(String paramString1, String paramString2)
  {
    try
    {
      new File(paramString1).renameTo(new File(paramString1 + ".exch"));
      new File(paramString2).renameTo(new File(paramString1));
      new File(paramString1 + ".exch").renameTo(new File(paramString2));
      bool = true;
      return bool;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        boolean bool = false;
      }
    }
  }

  public static final boolean e(String paramString)
  {
    while (true)
    {
      FileInputStream localFileInputStream;
      FileOutputStream localFileOutputStream;
      try
      {
        localFileInputStream = new FileInputStream(new File(paramString));
        localFileOutputStream = new FileOutputStream(new File(paramString + ".flag"));
        byte[] arrayOfByte1 = new byte[r.dB.length];
        localFileInputStream.read(arrayOfByte1, 0, arrayOfByte1.length);
        if (!j.a(arrayOfByte1, r.dB))
          break label191;
        bool2 = true;
        localFileOutputStream.write(arrayOfByte1, 0, arrayOfByte1.length);
        byte[] arrayOfByte2 = new byte[1024];
        int i = localFileInputStream.read(arrayOfByte2);
        if (i > 0)
        {
          localFileOutputStream.write(arrayOfByte2, 0, i);
          continue;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        bool1 = false;
        return bool1;
      }
      localFileInputStream.close();
      localFileOutputStream.close();
      new File(paramString + ".flag").renameTo(new File(paramString));
      boolean bool1 = bool2;
      continue;
      label191: boolean bool2 = false;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.l
 * JD-Core Version:    0.6.2
 */