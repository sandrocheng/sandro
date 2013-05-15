package com.avast.android.mobilesecurity.app.filter;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.PowerManager;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import java.util.Iterator;
import java.util.List;

public class TelBlockOfferActivity extends FragmentActivity
{
  private String a;
  private TextView b;
  private boolean c = false;
  private boolean d = false;
  private Intent e = null;

  private void a()
  {
    if ((!this.a.trim().startsWith("*")) && (!this.a.trim().startsWith("#")))
    {
      c();
      finish();
    }
    while (true)
    {
      return;
      ((Button)findViewById(2131165278)).setOnClickListener(new ad(this));
      EditText localEditText = (EditText)findViewById(2131165276);
      localEditText.setText(Uri.decode(this.a));
      localEditText.setOnClickListener(new ae(this, getString(2131493561)));
    }
  }

  private void a(Intent paramIntent)
  {
    this.e = paramIntent;
    if (this.e == null)
      finish();
    while (true)
    {
      return;
      Uri localUri = this.e.getData();
      if (localUri == null)
      {
        finish();
      }
      else
      {
        this.a = localUri.toString();
        String str = localUri.getSchemeSpecificPart();
        if (TextUtils.isEmpty(this.a))
        {
          finish();
        }
        else
        {
          this.a = this.a.trim();
          if (TextUtils.isEmpty(this.a))
          {
            finish();
          }
          else
          {
            if (this.a.toLowerCase().startsWith("tel:"))
              this.a = this.a.substring(4);
            if ((str != null) && (!TextUtils.isEmpty(str.trim())) && (!this.a.contains("#")) && (str.contains("#")))
              this.a = str.trim();
          }
        }
      }
    }
  }

  private void b()
  {
    PowerManager localPowerManager = (PowerManager)getSystemService("power");
    if (((!this.c) && (!localPowerManager.isScreenOn())) || (this.d));
    while (true)
    {
      return;
      this.d = true;
      finish();
    }
  }

  private void c()
  {
    this.c = true;
    PackageManager localPackageManager = getPackageManager();
    this.e.setComponent(null);
    Iterator localIterator = localPackageManager.queryIntentActivities(this.e, 65600).iterator();
    while (localIterator.hasNext())
    {
      ActivityInfo localActivityInfo = ((ResolveInfo)localIterator.next()).activityInfo;
      if ((localActivityInfo != null) && (localActivityInfo.packageName != null) && (!localActivityInfo.packageName.equals(getPackageName())))
      {
        ComponentName localComponentName = new ComponentName(localActivityInfo.applicationInfo.packageName, localActivityInfo.name);
        this.e.setComponent(localComponentName);
        startActivity(this.e);
      }
    }
  }

  public void onBackPressed()
  {
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903064);
    this.b = ((TextView)findViewById(2131165277));
    a(getIntent());
    a();
    getWindow().setSoftInputMode(1);
  }

  protected void onDestroy()
  {
    super.onDestroy();
    b();
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    setIntent(paramIntent);
    a(paramIntent);
    a();
  }

  protected void onStop()
  {
    super.onStop();
    b();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.TelBlockOfferActivity
 * JD-Core Version:    0.6.2
 */