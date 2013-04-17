import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.net.Uri;
import android.os.Bundle;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.ui.activity.network.NetworkFlowAutoAdjustConfigActivity;
import com.tencent.qqpimsecure.ui.activity.network.NetworkMonthSettingActivity;
import java.util.ArrayList;
import java.util.List;

public final class fs
{
  public static int a = 1;
  public static int b = 2;
  public static long c = 3000L;
  public static long d = 5000L;

  public static int a(Context paramContext)
  {
    Intent localIntent = new Intent("android.settings.DATA_ROAMING_SETTINGS");
    localIntent.setComponent(new ComponentName("com.android.phone", "com.android.phone.Settings"));
    localIntent.setFlags(268435456);
    try
    {
      paramContext.startActivity(localIntent);
      i = 0;
      return i;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      while (true)
      {
        localActivityNotFoundException.printStackTrace();
        ha.b(paramContext, paramContext.getString(2131427425));
        int i = -1;
      }
    }
    catch (SecurityException localSecurityException)
    {
      while (true)
      {
        localSecurityException.printStackTrace();
        ha.b(paramContext, paramContext.getString(2131427425));
      }
    }
  }

  public static String a(String paramString)
  {
    try
    {
      String str = paramString.substring(0, 2);
      paramString = str;
      return paramString;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public static void a()
  {
    iu localiu = new iu(QQPimApplication.a());
    if ((localiu.l()) && (localiu.j()))
    {
      localiu.k();
      localiu.a(true);
      localiu.c(false);
      localiu.d(false);
    }
  }

  public static void a(Activity paramActivity, int paramInt, Bundle paramBundle)
  {
    Intent localIntent;
    if (paramInt == a)
    {
      localIntent = new Intent();
      localIntent.setClass(paramActivity, NetworkMonthSettingActivity.class);
      nd.a().a(26400);
      if (localIntent == null)
        break label85;
      if (paramBundle != null)
        localIntent.putExtras(paramBundle);
      paramActivity.startActivityForResult(localIntent, 0);
    }
    while (true)
    {
      return;
      int i = b;
      localIntent = null;
      if (paramInt != i)
        break;
      localIntent = new Intent();
      localIntent.setClass(paramActivity, NetworkFlowAutoAdjustConfigActivity.class);
      break;
      label85: ha.a(paramActivity, paramActivity.getString(2131429854));
    }
  }

  public static boolean a(List<String> paramList1, List<String> paramList2, String paramString)
  {
    boolean bool1 = false;
    if (paramString != null)
    {
      boolean bool2 = "".equals(paramString);
      bool1 = false;
      if (!bool2)
      {
        bool1 = false;
        if (paramList1 != null)
        {
          int i = paramList1.size();
          bool1 = false;
          if (i > 0)
          {
            bool1 = false;
            if (paramList1 != null)
            {
              int j = paramList2.size();
              bool1 = false;
              if (j > 0)
                break label65;
            }
          }
        }
      }
    }
    label65: ArrayList localArrayList1;
    ArrayList localArrayList2;
    int n;
    do
    {
      return bool1;
      localArrayList1 = new ArrayList();
      localArrayList2 = new ArrayList();
      for (int k = 0; k < paramList1.size(); k++)
        localArrayList1.add(paramList1.get(k));
      for (int m = 0; m < paramList2.size(); m++)
        localArrayList2.add(paramList2.get(m));
      new StringBuilder("QLBS ").append(paramString).toString();
      QQPimApplication.a();
      n = paramList2.indexOf(paramString);
      bool1 = false;
    }
    while (n != -1);
    int i1;
    if (paramString != null)
    {
      String str = a(paramString);
      i1 = 0;
      if (i1 < paramList2.size())
        if (!((String)paramList2.get(i1)).contains(str));
    }
    while (true)
    {
      int i3;
      while (true)
      {
        bool1 = false;
        if (i1 == -1)
          break;
        bool1 = false;
        if (i1 == 0)
          break;
        try
        {
          paramList1.add(0, (String)paramList1.remove(i1));
          paramList2.add(0, (String)paramList2.remove(i1));
          bool1 = true;
          break;
          i1++;
        }
        catch (Exception localException)
        {
          paramList1.clear();
          paramList2.clear();
          for (int i2 = 0; i2 < localArrayList1.size(); i2++)
            paramList1.add(localArrayList1.get(i2));
          i3 = 0;
        }
      }
      while (true)
      {
        int i4 = localArrayList2.size();
        bool1 = false;
        if (i3 >= i4)
          break;
        paramList2.add(localArrayList2.get(i3));
        i3++;
      }
      i1 = n;
    }
  }

  public static boolean b()
  {
    ConnectivityManager localConnectivityManager = (ConnectivityManager)QQPimApplication.a().getSystemService("connectivity");
    boolean bool = false;
    NetworkInfo[] arrayOfNetworkInfo;
    if (localConnectivityManager != null)
    {
      arrayOfNetworkInfo = localConnectivityManager.getAllNetworkInfo();
      bool = false;
      if (arrayOfNetworkInfo == null);
    }
    for (int i = 0; ; i++)
    {
      int j = arrayOfNetworkInfo.length;
      bool = false;
      if (i < j)
      {
        if (arrayOfNetworkInfo[i].getState() == NetworkInfo.State.CONNECTED)
          bool = true;
      }
      else
        return bool;
    }
  }

  public static void c()
  {
    int i = ft.d();
    String str;
    if (i == 0)
    {
      str = "tel:10086";
      if (str != null)
        break label73;
      Intent localIntent1 = new Intent("android.intent.action.CALL_BUTTON");
      localIntent1.setFlags(268435456);
      QQPimApplication.a().startActivity(localIntent1);
    }
    while (true)
    {
      nd.a().a(26458);
      return;
      if (i == 1)
      {
        str = "tel:10010";
        break;
      }
      str = null;
      if (i != 2)
        break;
      str = "tel:10000";
      break;
      label73: Intent localIntent2 = new Intent("android.intent.action.CALL", Uri.parse(str));
      localIntent2.setFlags(268435456);
      try
      {
        QQPimApplication.a().startActivity(localIntent2);
      }
      catch (ActivityNotFoundException localActivityNotFoundException)
      {
        localActivityNotFoundException.printStackTrace();
        ha.a(QQPimApplication.a(), 2131430288);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     fs
 * JD-Core Version:    0.6.2
 */