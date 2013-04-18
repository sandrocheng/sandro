package com.keniu.security.main;

import android.app.Activity;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import com.ijinshan.kinghelper.firewall.core.i;
import com.keniu.security.f.ab;

public class SuggestionFeedback extends Activity
  implements View.OnClickListener
{
  private Button a = null;
  private Button b = null;
  private EditText c = null;
  private EditText d = null;
  private ConnectivityManager e = null;
  private TextView f = null;

  private void a(String paramString)
  {
    StringBuilder localStringBuilder1 = new StringBuilder();
    StringBuilder localStringBuilder2 = new StringBuilder();
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Build.MODEL;
    localStringBuilder1.append(getString(2131428839, arrayOfObject1) + "\n");
    StringBuilder localStringBuilder3 = new StringBuilder();
    Object[] arrayOfObject2 = new Object[1];
    arrayOfObject2[0] = Build.VERSION.SDK;
    localStringBuilder1.append(getString(2131428840, arrayOfObject2) + "\n");
    try
    {
      StringBuilder localStringBuilder4 = new StringBuilder();
      Object[] arrayOfObject6 = new Object[1];
      arrayOfObject6[0] = Integer.valueOf(getPackageManager().getPackageInfo("com.ijinshan.mguard", 0).versionCode);
      localStringBuilder1.append(getString(2131428841, arrayOfObject6) + "\n");
      ab localab = ab.a();
      StringBuilder localStringBuilder5 = new StringBuilder();
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = localab.n();
      localStringBuilder1.append(getString(2131428842, arrayOfObject3) + "\n");
      if (TextUtils.isEmpty(this.d.getText().toString()))
      {
        StringBuilder localStringBuilder6 = new StringBuilder();
        Object[] arrayOfObject4 = new Object[1];
        arrayOfObject4[0] = getString(2131428844);
        localStringBuilder1.append(getString(2131428843, arrayOfObject4) + "\n");
        localStringBuilder1.append(paramString);
        i.a(this, "", localStringBuilder1.toString(), 17, "");
        Toast.makeText(this, getString(2131428837), 1000).show();
        return;
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
      {
        localNameNotFoundException.printStackTrace();
        continue;
        StringBuilder localStringBuilder7 = new StringBuilder();
        Object[] arrayOfObject5 = new Object[1];
        arrayOfObject5[0] = this.d.getText().toString();
        localStringBuilder1.append(getString(2131428843, arrayOfObject5) + "\n");
      }
    }
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
    case 2131231623:
    case 2131231624:
    }
    while (true)
    {
      return;
      if (TextUtils.isEmpty(this.c.getText().toString()))
      {
        Toast.makeText(this, getString(2131428835), 500).show();
        continue;
      }
      NetworkInfo localNetworkInfo = this.e.getActiveNetworkInfo();
      if (localNetworkInfo == null)
      {
        Toast.makeText(this, getString(2131428836), 500).show();
        continue;
      }
      if ((localNetworkInfo != null) && (!localNetworkInfo.isAvailable()))
      {
        Toast.makeText(this, getString(2131428836), 500).show();
        continue;
      }
      String str = this.c.getText().toString();
      StringBuilder localStringBuilder1 = new StringBuilder();
      StringBuilder localStringBuilder2 = new StringBuilder();
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Build.MODEL;
      localStringBuilder1.append(getString(2131428839, arrayOfObject1) + "\n");
      StringBuilder localStringBuilder3 = new StringBuilder();
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Build.VERSION.SDK;
      localStringBuilder1.append(getString(2131428840, arrayOfObject2) + "\n");
      try
      {
        StringBuilder localStringBuilder4 = new StringBuilder();
        Object[] arrayOfObject6 = new Object[1];
        arrayOfObject6[0] = Integer.valueOf(getPackageManager().getPackageInfo("com.ijinshan.mguard", 0).versionCode);
        localStringBuilder1.append(getString(2131428841, arrayOfObject6) + "\n");
        ab localab = ab.a();
        StringBuilder localStringBuilder5 = new StringBuilder();
        Object[] arrayOfObject3 = new Object[1];
        arrayOfObject3[0] = localab.n();
        localStringBuilder1.append(getString(2131428842, arrayOfObject3) + "\n");
        if (TextUtils.isEmpty(this.d.getText().toString()))
        {
          StringBuilder localStringBuilder6 = new StringBuilder();
          Object[] arrayOfObject4 = new Object[1];
          arrayOfObject4[0] = getString(2131428844);
          localStringBuilder1.append(getString(2131428843, arrayOfObject4) + "\n");
          localStringBuilder1.append(str);
          i.a(this, "", localStringBuilder1.toString(), 17, "");
          Toast.makeText(this, getString(2131428837), 1000).show();
          finish();
        }
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        while (true)
        {
          localNameNotFoundException.printStackTrace();
          continue;
          StringBuilder localStringBuilder7 = new StringBuilder();
          Object[] arrayOfObject5 = new Object[1];
          arrayOfObject5[0] = this.d.getText().toString();
          localStringBuilder1.append(getString(2131428843, arrayOfObject5) + "\n");
        }
      }
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    setContentView(2130903292);
    this.a = ((Button)findViewById(2131231623));
    this.b = ((Button)findViewById(2131231624));
    this.c = ((EditText)findViewById(2131231620));
    this.d = ((EditText)findViewById(2131231621));
    this.f = ((TextView)findViewById(2131231622));
    SpannableString localSpannableString = new SpannableString(getString(2131428829));
    localSpannableString.setSpan(new cp(this), 16, 24, 17);
    localSpannableString.setSpan(new ForegroundColorSpan(getResources().getColor(2131296283)), 16, 24, 34);
    this.f.setText(localSpannableString);
    this.f.setMovementMethod(LinkMovementMethod.getInstance());
    this.a.setOnClickListener(this);
    this.b.setOnClickListener(this);
    this.e = ((ConnectivityManager)getSystemService("connectivity"));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.SuggestionFeedback
 * JD-Core Version:    0.6.2
 */