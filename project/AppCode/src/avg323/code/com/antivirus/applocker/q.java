package com.antivirus.applocker;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import com.antivirus.c;
import com.antivirus.c.b;
import com.antivirus.m;

public class q extends com.antivirus.ui.a.a.a
  implements View.OnClickListener
{
  private View a = null;
  private EditText b;
  private EditText c;
  private EditText d;

  private void a()
  {
    TextView localTextView1 = (TextView)this.a.findViewById(2131230772);
    TextView localTextView2 = (TextView)this.a.findViewById(2131230963);
    TextView localTextView3 = (TextView)this.a.findViewById(2131230964);
    TextView localTextView4 = (TextView)this.a.findViewById(2131230966);
    localTextView1.setText(m.a(this.ag, 2131296532));
    Intent localIntent = this.ag.getIntent();
    if ((localIntent != null) && (localIntent.getExtras() != null) && (localIntent.getExtras().getBoolean("password_change")))
      localTextView1.setText(m.a(this.ag, 2131296557));
    localTextView2.setText(m.a(this.ag, 2131296534));
    localTextView3.setText(m.a(this.ag, 2131296294));
    localTextView4.setText(m.a(this.ag, 2131296544));
    this.b = ((EditText)this.a.findViewById(2131230773));
    this.b.setImeOptions(5);
    this.b.setNextFocusDownId(2131230965);
    this.b.setInputType(1073741953);
    this.c = ((EditText)this.a.findViewById(2131230965));
    this.c.setImeOptions(5);
    this.c.setNextFocusDownId(2131230967);
    this.c.setInputType(1073741953);
    String str = c.c(this.ag);
    this.d = ((EditText)this.a.findViewById(2131230967));
    this.d.setText(str);
    this.d.setInputType(32);
    Button localButton = (Button)this.a.findViewById(2131230968);
    localButton.setText(m.a(this.ag, 2131296552));
    localButton.setOnClickListener(this);
    this.ag.getWindow().setSoftInputMode(3);
  }

  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.a = paramLayoutInflater.inflate(2130903086, paramViewGroup, false);
    if (this.ag.o())
      a(m.a(this.ag, 2131296528), this.a);
    a();
    return this.a;
  }

  public void a(Bundle paramBundle)
  {
    super.a(paramBundle);
  }

  public void onClick(View paramView)
  {
    this.b = ((EditText)this.a.findViewById(2131230773));
    String str1 = this.b.getText().toString();
    this.c = ((EditText)this.a.findViewById(2131230965));
    String str2 = this.c.getText().toString();
    if ((str1.length() == 0) && (str2.length() == 0))
    {
      this.ag.setResult(1);
      Toast localToast4 = Toast.makeText(this.ag, m.a(this.ag, 2131296538), 1);
      localToast4.setGravity(17, 0, 0);
      localToast4.show();
    }
    String str3;
    while (true)
    {
      return;
      if ((str1.length() == 0) || (str2.length() == 0))
      {
        this.ag.setResult(1);
        Toast localToast1 = Toast.makeText(this.ag, m.a(this.ag, 2131296537), 1);
        localToast1.setGravity(17, 0, 0);
        localToast1.show();
      }
      else if (!str1.equalsIgnoreCase(str2))
      {
        this.ag.setResult(1);
        Toast localToast3 = Toast.makeText(this.ag, m.a(this.ag, 2131296535), 1);
        localToast3.setGravity(17, 0, 0);
        localToast3.show();
      }
      else
      {
        str3 = this.d.getText().toString();
        if (b.a(str3, false))
          break;
        this.ag.setResult(1);
        Toast localToast2 = Toast.makeText(this.ag, m.a(this.ag, 2131296546), 1);
        localToast2.setGravity(17, 0, 0);
        localToast2.show();
      }
    }
    if (str3.length() == 0)
    {
      c.e(false);
      c.n();
      label300: c.c(str2);
      this.ag.setResult(2);
      c.b = true;
      if (!this.ag.o())
        break label376;
      this.ag.a(new g(), 2131230910, "AppLockerFragment");
    }
    while (true)
    {
      com.avg.toolkit.c.a.a(this.ag, "privacy", "app_locker", "permitted", 0);
      break;
      c.d(str3);
      c.e(true);
      c.n();
      break label300;
      label376: a(new Intent(this.ag, AppLockerActivity.class));
      this.ag.finish();
    }
  }

  public void s()
  {
    super.s();
    try
    {
      InputMethodManager localInputMethodManager = (InputMethodManager)this.ag.getSystemService("input_method");
      localInputMethodManager.hideSoftInputFromWindow(this.b.getWindowToken(), 0);
      localInputMethodManager.hideSoftInputFromWindow(this.c.getWindowToken(), 0);
      localInputMethodManager.hideSoftInputFromWindow(this.d.getWindowToken(), 0);
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
 * Qualified Name:     com.antivirus.applocker.q
 * JD-Core Version:    0.6.2
 */