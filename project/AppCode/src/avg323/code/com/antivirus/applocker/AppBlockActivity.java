package com.antivirus.applocker;

import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.method.PasswordTransformationMethod;
import android.text.style.StyleSpan;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.TextView.BufferType;
import android.widget.Toast;
import com.antivirus.m;
import com.avg.toolkit.e.e;

public class AppBlockActivity extends com.antivirus.ui.b
{
  protected EditText a;
  private String b;
  private Drawable c;
  private String d;
  private com.avg.toolkit.UID.a e;

  private void a(Configuration paramConfiguration)
  {
    int i;
    if (findViewById(2131230910) == null)
    {
      i = 1;
      if (i != 0)
        if (paramConfiguration.orientation != 2)
          break label38;
    }
    label38: for (int j = 3; ; j = 6)
    {
      a(2131230741, j);
      return;
      i = 0;
      break;
    }
  }

  private void a(Bundle paramBundle)
  {
    PackageManager localPackageManager;
    if (paramBundle != null)
    {
      localPackageManager = getPackageManager();
      this.d = paramBundle.getString("blocked_app");
    }
    try
    {
      ApplicationInfo localApplicationInfo = localPackageManager.getApplicationInfo(this.d, 0);
      this.c = localPackageManager.getApplicationIcon(this.d);
      if (localApplicationInfo != null);
      for (Object localObject = localPackageManager.getApplicationLabel(localApplicationInfo); ; localObject = "(unknown)")
      {
        this.b = ((String)localObject);
        if (this.b != "(unknown)")
        {
          ((LinearLayout)findViewById(2131230776)).setVisibility(0);
          SpannableString localSpannableString = new SpannableString(this.b + " is locked");
          localSpannableString.setSpan(new StyleSpan(1), 0, this.b.length(), 0);
          ((TextView)findViewById(2131230778)).setText(localSpannableString);
          ((ImageView)findViewById(2131230777)).setImageDrawable(this.c);
        }
        return;
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
        localNameNotFoundException.printStackTrace();
    }
  }

  private boolean e()
  {
    PackageManager localPackageManager = getPackageManager();
    try
    {
      PackageInfo localPackageInfo = localPackageManager.getPackageInfo(this.d, 0);
      int i = localPackageManager.checkSignatures(getPackageName(), localPackageInfo.packageName);
      bool = false;
      if (i == 0)
        bool = true;
      return bool;
    }
    catch (Exception localException)
    {
      while (true)
      {
        com.avg.toolkit.f.a.a(localException);
        bool = false;
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
        boolean bool = false;
    }
  }

  private void f()
  {
    while (true)
    {
      int i;
      String str4;
      try
      {
        String str1 = com.antivirus.c.b(this);
        String str2 = this.a.getText().toString();
        String str3 = this.e.a();
        if (str3 == null)
        {
          i = 0;
          break label230;
          if ((str2.equalsIgnoreCase(str1)) || ((!str4.equals("")) && (str2.equalsIgnoreCase(str4))))
          {
            setResult(2);
            c localc = new c();
            if ((com.antivirus.c.q()) && (!localc.e(this)))
              localc.a(System.currentTimeMillis(), this);
            String str5 = getIntent().getStringExtra("blocked_app");
            Intent localIntent = new Intent(this, AppBlockService.class);
            localIntent.putExtra("__SAC", 104);
            localIntent.putExtra("__SAD", str5);
            startService(localIntent);
            finish();
            break;
          }
        }
        else
        {
          i = str3.length();
          break label230;
          str4 = str3.substring(i - 4, i);
          continue;
        }
        setResult(1);
        Toast localToast = Toast.makeText(this, m.a(this, 2131296536), 0);
        localToast.setGravity(1, 0, 0);
        localToast.show();
        g();
      }
      catch (Exception localException)
      {
        com.avg.toolkit.f.a.a(localException);
      }
      label230: if (i == 0)
        str4 = "";
    }
  }

  private void g()
  {
    Intent localIntent = new Intent(this, AppBlockService.class);
    localIntent.putExtra("__SAC", 201);
    startService(localIntent);
  }

  private int h()
  {
    int i = 2130837611;
    if (e.a() != null)
      if (!e.a().b())
        break label25;
    label25: for (i = 2130837566; ; i = 2130837568)
      return i;
  }

  private int i()
  {
    int i = 2130837611;
    if (e.a() != null)
      if (!e.a().b())
        break label25;
    label25: for (i = 2130837567; ; i = 2130837569)
      return i;
  }

  protected void a()
  {
    Intent localIntent = new Intent("android.intent.action.MAIN");
    localIntent.addCategory("android.intent.category.HOME");
    localIntent.setFlags(268435456);
    g();
    startActivity(localIntent);
    super.a();
  }

  protected void b()
  {
    try
    {
      new Intent();
      Intent localIntent = getPackageManager().getLaunchIntentForPackage(getPackageName());
      localIntent.setFlags(335544320);
      startActivity(localIntent);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    a(paramConfiguration);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getWindow().requestFeature(1);
    setContentView(2130903048);
    this.e = new com.avg.toolkit.UID.a(this);
    Bundle localBundle = getIntent().getExtras();
    a(getResources().getConfiguration());
    a(localBundle);
    TextView localTextView;
    if (!e())
    {
      a(true, h(), i(), null, false);
      this.a = ((EditText)findViewById(2131230773));
      this.a.setImeOptions(6);
      this.a.setInputType(1073742079);
      localTextView = (TextView)findViewById(2131230781);
      if (com.antivirus.c.d(getApplicationContext()))
        break label186;
      localTextView.setVisibility(8);
    }
    while (true)
    {
      getWindow().setSoftInputMode(2);
      ((Button)findViewById(2131230780)).setOnClickListener(new b(this));
      return;
      findViewById(2131230769).setVisibility(8);
      break;
      label186: localTextView.setVisibility(0);
      SpannableString localSpannableString = new SpannableString(m.a(this, 2131296545));
      localSpannableString.setSpan(new a(this, this), 0, m.a(this, 2131296545).length(), 0);
      localTextView.setMovementMethod(LinkMovementMethod.getInstance());
      localTextView.setText(localSpannableString, TextView.BufferType.SPANNABLE);
    }
  }

  protected void onDestroy()
  {
    super.onDestroy();
    b(findViewById(2131230775));
    System.gc();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = true;
    if (4 == paramInt)
    {
      a();
      bool = false;
    }
    while (true)
    {
      return bool;
      if (5 != paramInt)
        if (84 != paramInt)
          break;
    }
  }

  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    return false;
  }

  public void onResume()
  {
    super.onResume();
    this.a.setInputType(129);
    this.a.setTransformationMethod(new PasswordTransformationMethod());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.applocker.AppBlockActivity
 * JD-Core Version:    0.6.2
 */