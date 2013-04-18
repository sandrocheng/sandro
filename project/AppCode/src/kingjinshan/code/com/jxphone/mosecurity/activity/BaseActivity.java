package com.jxphone.mosecurity.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import com.keniu.security.e;
import com.keniu.security.util.av;
import com.keniu.security.util.i;

public class BaseActivity extends Activity
{
  private static final String b = "isSantData";
  protected boolean a = false;
  private boolean c = false;

  private static void a(Context paramContext, Class paramClass)
  {
    paramContext.startActivity(new Intent(paramContext, paramClass));
  }

  public static void a(Context paramContext, Class paramClass, Bundle paramBundle)
  {
    Intent localIntent = new Intent(paramContext, paramClass);
    localIntent.putExtras(paramBundle);
    paramContext.startActivity(localIntent);
  }

  private void b(String[][] paramArrayOfString)
  {
    com.jxphone.a.a.a.a(this, e.X).a(paramArrayOfString, true);
  }

  private void e()
  {
    String str = getIntent().getStringExtra("actionname");
    if ((str != null) && (str.equals("start")))
    {
      byte b1 = getIntent().getByteExtra("type", (byte)-1);
      if (b1 == -1)
        break label45;
      a(b1);
    }
    while (true)
    {
      return;
      label45: Log.w(getClass().getSimpleName(), "key: type not found");
    }
  }

  private boolean f()
  {
    return this.c;
  }

  protected Bundle a()
  {
    Bundle localBundle = d();
    if (localBundle != null)
    {
      this.a = true;
      this.c = localBundle.getBoolean("isSantData", false);
    }
    return localBundle;
  }

  protected void a(byte paramByte)
  {
    a(paramByte, true);
  }

  protected final void a(byte paramByte, boolean paramBoolean)
  {
    if (this.c);
    while (true)
    {
      return;
      com.keniu.security.a locala = com.keniu.security.a.a(this);
      if (locala.aH())
      {
        int i;
        if (locala.ag())
        {
          i = 1;
          label30: if (!locala.ao())
            break label352;
        }
        String[][] arrayOfString;;
        label352: for (int j = 1; ; j = 0)
        {
          int k = i << j + 2;
          arrayOfString; = new String[11][];
          arrayOfString;[0] = { "s", "0401000301" };
          String[] arrayOfString1 = new String[2];
          arrayOfString1[0] = "uuid";
          arrayOfString1[1] = av.a(this);
          arrayOfString;[1] = arrayOfString1;
          String[] arrayOfString2 = new String[2];
          arrayOfString2[0] = "dt";
          arrayOfString2[1] = i.c(System.currentTimeMillis());
          arrayOfString;[2] = arrayOfString2;
          arrayOfString;[3] = { "actionname", "start" };
          String[] arrayOfString3 = new String[2];
          arrayOfString3[0] = "var";
          arrayOfString3[1] = com.jxphone.mosecurity.a.a.a(this, BaseActivity.class);
          arrayOfString;[4] = arrayOfString3;
          String[] arrayOfString4 = new String[2];
          arrayOfString4[0] = "model";
          arrayOfString4[1] = Build.MODEL;
          arrayOfString;[5] = arrayOfString4;
          String[] arrayOfString5 = new String[2];
          arrayOfString5[0] = "value";
          arrayOfString5[1] = Build.VERSION.SDK;
          arrayOfString;[6] = arrayOfString5;
          String[] arrayOfString6 = new String[2];
          arrayOfString6[0] = "res";
          arrayOfString6[1] = Integer.toString(k);
          arrayOfString;[7] = arrayOfString6;
          String[] arrayOfString7 = new String[2];
          arrayOfString7[0] = "type";
          arrayOfString7[1] = Byte.toString(paramByte);
          arrayOfString;[8] = arrayOfString7;
          String[] arrayOfString8 = new String[2];
          arrayOfString8[0] = "channel";
          arrayOfString8[1] = e.c(this);
          arrayOfString;[9] = arrayOfString8;
          String[] arrayOfString9 = new String[2];
          arrayOfString9[0] = "info";
          arrayOfString9[1] = Build.BRAND;
          arrayOfString;[10] = arrayOfString9;
          if (!paramBoolean)
            break label358;
          a(arrayOfString;);
          break;
          i = 0;
          break label30;
        }
        label358: b(arrayOfString;);
      }
    }
  }

  protected final void a(String[][] paramArrayOfString)
  {
    if (this.c);
    while (true)
    {
      return;
      b(paramArrayOfString);
      this.c = true;
    }
  }

  protected int b()
  {
    return 2131492865;
  }

  public Bundle c()
  {
    Bundle localBundle = new Bundle(8);
    localBundle.putBoolean("isSantData", this.c);
    return localBundle;
  }

  public final Bundle d()
  {
    Object localObject = super.getLastNonConfigurationInstance();
    if (localObject == null);
    for (Bundle localBundle = null; ; localBundle = (Bundle)localObject)
      return localBundle;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a();
    String str = getIntent().getStringExtra("actionname");
    if ((str != null) && (str.equals("start")))
    {
      byte b1 = getIntent().getByteExtra("type", (byte)-1);
      if (b1 == -1)
        break label58;
      a(b1);
    }
    while (true)
    {
      return;
      label58: Log.w(getClass().getSimpleName(), "key: type not found");
    }
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(b(), paramMenu);
    return true;
  }

  protected void onDestroy()
  {
    super.onDestroy();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.BaseActivity
 * JD-Core Version:    0.6.2
 */