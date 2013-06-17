package com.antivirus.applocker;

import android.content.Intent;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.method.PasswordTransformationMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.TextView.BufferType;
import android.widget.Toast;
import com.antivirus.m;
import com.antivirus.ui.tablet.DualPaneActivity;

public class n extends com.antivirus.ui.a.a.a
{
  private EditText a;
  private View b = null;
  private com.avg.toolkit.UID.a c;

  private void a()
  {
    try
    {
      String str1 = com.antivirus.c.b(this.ag.getApplicationContext());
      String str2 = this.a.getText().toString();
      str3 = this.c.a();
      if (str3 == null)
      {
        i = 0;
        break label349;
        if ((!str2.equalsIgnoreCase(str1)) && ((str3 == null) || (!str2.equalsIgnoreCase(str4))))
          break label318;
        this.ag.setResult(2);
        String str5 = this.ag.getIntent().getStringExtra("blocked_app");
        Intent localIntent = new Intent(this.ag, AppBlockService.class);
        localIntent.putExtra("__SAC", 104);
        localIntent.putExtra("__SAD", str5);
        this.ag.startService(localIntent);
        c localc = new c();
        if ((com.antivirus.c.q()) && (!localc.e(this.ag)))
          localc.a(System.currentTimeMillis(), this.ag);
        if (!this.ag.o())
          break label273;
        ((DualPaneActivity)this.ag).l();
        this.ag.a(new g(), 2131230910, "AppLockerFragment");
        com.avg.toolkit.c.a.a(this.ag, "privacy", "app_locker", "permitted", 0);
      }
    }
    catch (Exception localException1)
    {
      while (true)
      {
        int i;
        String str4;
        try
        {
          String str3;
          ((InputMethodManager)this.ag.getSystemService("input_method")).hideSoftInputFromWindow(this.a.getWindowToken(), 0);
          return;
          i = str3.length();
          break label349;
          str4 = str3.substring(i - 4, i);
          continue;
          label273: a(new Intent(this.ag, AppLockerActivity.class));
          this.ag.finish();
          continue;
          localException1 = localException1;
          com.avg.toolkit.f.a.a(localException1);
          continue;
        }
        catch (Exception localException2)
        {
          com.avg.toolkit.f.a.a(localException2);
          continue;
        }
        label318: this.ag.setResult(1);
        Toast.makeText(this.ag, m.a(this.ag, 2131296536), 0).show();
        continue;
        label349: if (i == 0)
          str4 = "";
      }
    }
  }

  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.b = paramLayoutInflater.inflate(2130903059, paramViewGroup, false);
    if (this.ag.o())
      a(m.a(this.ag, 2131296528), this.b);
    this.a = ((EditText)this.b.findViewById(2131230773));
    this.a.setImeOptions(6);
    this.a.setInputType(1073742079);
    TextView localTextView = (TextView)this.b.findViewById(2131230781);
    if (!com.antivirus.c.d(this.ag.getApplicationContext()))
      localTextView.setVisibility(8);
    while (true)
    {
      this.ag.getWindow().setSoftInputMode(2);
      ((Button)this.b.findViewById(2131230780)).setOnClickListener(new p(this));
      return this.b;
      localTextView.setVisibility(0);
      SpannableString localSpannableString = new SpannableString(m.a(this.ag, 2131296545));
      localSpannableString.setSpan(new o(this, this.ag), 0, m.a(this.ag, 2131296545).length(), 0);
      localTextView.setMovementMethod(LinkMovementMethod.getInstance());
      localTextView.setText(localSpannableString, TextView.BufferType.SPANNABLE);
    }
  }

  public void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    this.c = new com.avg.toolkit.UID.a(h());
  }

  public void e()
  {
    super.e();
    a(this.b);
    System.gc();
  }

  public void r()
  {
    super.r();
    this.a.setInputType(129);
    this.a.setTransformationMethod(new PasswordTransformationMethod());
  }

  public void s()
  {
    try
    {
      ((InputMethodManager)this.ag.getSystemService("input_method")).hideSoftInputFromWindow(this.a.getWindowToken(), 0);
      super.s();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.applocker.n
 * JD-Core Version:    0.6.2
 */