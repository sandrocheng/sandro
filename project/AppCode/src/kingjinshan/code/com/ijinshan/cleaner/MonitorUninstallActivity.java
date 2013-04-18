package com.ijinshan.cleaner;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Environment;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;
import java.io.File;
import java.lang.reflect.Field;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class MonitorUninstallActivity extends Activity
{
  public static String a = "MonitorUninstallActivity_type_dlg";
  public static String b = "unst_other";
  public static String c = "unst_self";
  public static String d = "app_details";
  private ArrayList e = null;
  private boolean f = false;

  private static String a(long paramLong)
  {
    String str;
    float f1;
    StringBuilder localStringBuilder;
    if (paramLong >= 1024L)
    {
      str = "KB";
      f1 = (float)(paramLong / 1024.0D);
      if (f1 >= 1024.0F)
      {
        str = "MB";
        f1 /= 1024.0F;
      }
      if (f1 >= 1024.0F)
      {
        str = "GB";
        f1 /= 1024.0F;
      }
      localStringBuilder = new StringBuilder(new DecimalFormat("#0.00").format(f1));
      if (str == null)
        break label97;
      localStringBuilder.append(str);
    }
    while (true)
    {
      return localStringBuilder.toString();
      f1 = (float)paramLong;
      str = null;
      break;
      label97: localStringBuilder.append("B");
    }
  }

  private void a()
  {
    aq localaq = new aq(this, (byte)0);
    localaq.a(2131429605);
    localaq.b(2131429606);
    localaq.a(new ak(this));
    localaq.b(2131429607, new ad(this));
    localaq.a(2131429608, new ae(this));
    localaq.d();
  }

  private void a(Intent paramIntent)
  {
    Bundle localBundle = paramIntent.getExtras();
    this.e = localBundle.getStringArrayList("filelist");
    Long localLong = Long.valueOf(localBundle.getLong("size", 0L));
    String str1 = localBundle.getString("name");
    aq localaq = new aq(this, (byte)0);
    localaq.a(2131427519);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = str1;
    long l = localLong.longValue();
    float f2;
    float f3;
    String str2;
    if (l >= 1024L)
    {
      f2 = (float)(l / 1024.0D);
      if (f2 < 1024.0F)
        break label267;
      f3 = f2 / 1024.0F;
      str2 = "MB";
    }
    for (float f1 = f3; ; f1 = f2)
    {
      if (f1 >= 1024.0F)
      {
        str2 = "GB";
        f1 /= 1024.0F;
      }
      StringBuilder localStringBuilder = new StringBuilder(new DecimalFormat("#0.00").format(f1));
      if (str2 != null)
        localStringBuilder.append(str2);
      while (true)
      {
        arrayOfObject[1] = localStringBuilder.toString();
        localaq.b(getString(2131427978, arrayOfObject));
        localaq.a(new ak(this));
        localaq.b(2131427542, new ab(this));
        localaq.a(2131427541, new ac(this));
        localaq.d();
        return;
        f1 = (float)l;
        str2 = null;
        break;
        localStringBuilder.append("B");
      }
      label267: str2 = "KB";
    }
  }

  private void a(View paramView, EditText paramEditText)
  {
    ((CheckBox)paramView.findViewById(2131231486)).setOnCheckedChangeListener(new aj(this, paramEditText));
  }

  private void a(File paramFile)
  {
    if (paramFile.isFile())
      paramFile.delete();
    while (true)
    {
      return;
      File[] arrayOfFile = paramFile.listFiles();
      int i = arrayOfFile.length;
      for (int j = 0; j < i; j++)
        a(arrayOfFile[j]);
      paramFile.delete();
    }
  }

  private void a(String paramString, Long paramLong)
  {
    aq localaq = new aq(this, (byte)0);
    localaq.a(2131427519);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramString;
    long l = paramLong.longValue();
    float f1;
    String str;
    if (l >= 1024L)
    {
      f1 = (float)(l / 1024.0D);
      if (f1 < 1024.0F)
        break label221;
      str = "MB";
      f1 /= 1024.0F;
    }
    while (true)
    {
      if (f1 >= 1024.0F)
      {
        str = "GB";
        f1 /= 1024.0F;
      }
      StringBuilder localStringBuilder = new StringBuilder(new DecimalFormat("#0.00").format(f1));
      if (str != null)
        localStringBuilder.append(str);
      while (true)
      {
        arrayOfObject[1] = localStringBuilder.toString();
        localaq.b(getString(2131427978, arrayOfObject));
        localaq.a(new ak(this));
        localaq.b(2131427542, new ab(this));
        localaq.a(2131427541, new ac(this));
        localaq.d();
        return;
        f1 = (float)l;
        str = null;
        break;
        localStringBuilder.append("B");
      }
      label221: str = "KB";
    }
  }

  private void b()
  {
    View localView = LayoutInflater.from(this).inflate(2130903244, null);
    aq localaq = new aq(this, (byte)0).a(2131427865).a(localView);
    localaq.a(new af(this));
    localaq.a(new ak(this));
    TextView localTextView1 = (TextView)localView.findViewById(2131231484);
    localTextView1.setVisibility(0);
    localTextView1.setText(2131429376);
    EditText localEditText = (EditText)localView.findViewById(2131231485);
    localEditText.setImeOptions(2);
    ((CheckBox)localView.findViewById(2131231486)).setOnCheckedChangeListener(new aj(this, localEditText));
    TextView localTextView2 = (TextView)localView.findViewById(2131231266);
    localTextView2.setVisibility(0);
    localTextView2.setOnClickListener(new ag(this));
    localaq.a(2131428265, new ah(this, localEditText));
    localaq.b(2131428995, new ai(this));
    localaq.d();
  }

  private static void b(DialogInterface paramDialogInterface, boolean paramBoolean)
  {
    try
    {
      Field localField = paramDialogInterface.getClass().getSuperclass().getDeclaredField("mShowing");
      localField.setAccessible(true);
      localField.set(paramDialogInterface, Boolean.valueOf(paramBoolean));
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Log.e("MonitorUninstallActivity", localException.getMessage());
    }
  }

  private void c()
  {
    String str1 = com.keniu.security.protection.ui.ag.a(this);
    String str2 = ((TelephonyManager)getSystemService("phone")).getSubscriberId();
    aq localaq = new aq(this, (byte)0);
    if ((str1 == null) || (str1.equals("")))
    {
      localaq.a(getString(2131428590));
      localaq.b(getString(2131429219));
      localaq.b(getString(2131428298), null);
    }
    while (true)
    {
      localaq.c().show();
      return;
      if ((str2 == null) || (str2.equals("")))
      {
        localaq.a(getString(2131428590));
        localaq.b(getString(2131429220));
        localaq.b(getString(2131428298), null);
      }
      else
      {
        localaq.a(getString(2131427865));
        String str3 = getString(2131429369);
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = str1.substring(0, 3);
        arrayOfObject[1] = str1.substring(7);
        localaq.b(String.format(str3, arrayOfObject));
        localaq.b(getString(2131428298), null);
      }
    }
  }

  private void d()
  {
    finish();
    Intent localIntent = new Intent("android.intent.action.MAIN");
    localIntent.setFlags(67108864);
    localIntent.addCategory("android.intent.category.HOME");
    startActivity(localIntent);
  }

  public final void a(ArrayList paramArrayList)
  {
    String str1 = Environment.getExternalStorageDirectory().toString();
    Iterator localIterator = paramArrayList.iterator();
    while (localIterator.hasNext())
    {
      String str2 = (String)localIterator.next();
      File localFile = new File(str1 + str2);
      if (localFile.exists())
        a(localFile);
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Intent localIntent = getIntent();
    String str1 = localIntent.getStringExtra(a);
    aq localaq1;
    Object[] arrayOfObject;
    long l;
    float f1;
    String str3;
    if ((TextUtils.isEmpty(str1)) || (str1.equals(b)))
    {
      this.f = true;
      Bundle localBundle = localIntent.getExtras();
      this.e = localBundle.getStringArrayList("filelist");
      Long localLong = Long.valueOf(localBundle.getLong("size", 0L));
      String str2 = localBundle.getString("name");
      localaq1 = new aq(this, (byte)0);
      localaq1.a(2131427519);
      arrayOfObject = new Object[2];
      arrayOfObject[0] = str2;
      l = localLong.longValue();
      if (l >= 1024L)
      {
        f1 = (float)(l / 1024.0D);
        if (f1 < 1024.0F)
          break label619;
        str3 = "MB";
        f1 /= 1024.0F;
      }
    }
    while (true)
    {
      if (f1 >= 1024.0F)
      {
        str3 = "GB";
        f1 /= 1024.0F;
      }
      StringBuilder localStringBuilder = new StringBuilder(new DecimalFormat("#0.00").format(f1));
      if (str3 != null)
      {
        localStringBuilder.append(str3);
        label211: arrayOfObject[1] = localStringBuilder.toString();
        localaq1.b(getString(2131427978, arrayOfObject));
        localaq1.a(new ak(this));
        localaq1.b(2131427542, new ab(this));
        localaq1.a(2131427541, new ac(this));
        localaq1.d();
      }
      while (true)
      {
        return;
        f1 = (float)l;
        str3 = null;
        break;
        localStringBuilder.append("B");
        break label211;
        if (str1.equals(c))
        {
          aq localaq2 = new aq(this, (byte)0);
          localaq2.a(2131429605);
          localaq2.b(2131429606);
          localaq2.a(new ak(this));
          localaq2.b(2131429607, new ad(this));
          localaq2.a(2131429608, new ae(this));
          localaq2.d();
        }
        else if (str1.equals(d))
        {
          View localView = LayoutInflater.from(this).inflate(2130903244, null);
          aq localaq3 = new aq(this, (byte)0).a(2131427865).a(localView);
          localaq3.a(new af(this));
          localaq3.a(new ak(this));
          TextView localTextView1 = (TextView)localView.findViewById(2131231484);
          localTextView1.setVisibility(0);
          localTextView1.setText(2131429376);
          EditText localEditText = (EditText)localView.findViewById(2131231485);
          localEditText.setImeOptions(2);
          ((CheckBox)localView.findViewById(2131231486)).setOnCheckedChangeListener(new aj(this, localEditText));
          TextView localTextView2 = (TextView)localView.findViewById(2131231266);
          localTextView2.setVisibility(0);
          localTextView2.setOnClickListener(new ag(this));
          localaq3.a(2131428265, new ah(this, localEditText));
          localaq3.b(2131428995, new ai(this));
          localaq3.d();
        }
      }
      label619: str3 = "KB";
    }
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0))
      d();
    for (boolean bool = false; ; bool = super.onKeyDown(paramInt, paramKeyEvent))
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.cleaner.MonitorUninstallActivity
 * JD-Core Version:    0.6.2
 */