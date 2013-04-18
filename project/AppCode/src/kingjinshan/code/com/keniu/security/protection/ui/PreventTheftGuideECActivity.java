package com.keniu.security.protection.ui;

import android.app.Activity;
import android.os.Bundle;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.TextView;
import com.jxphone.mosecurity.a.a;

public class PreventTheftGuideECActivity extends Activity
{
  Button a;
  ImageButton b;
  EditText c;
  View.OnClickListener d = new j(this);
  View.OnClickListener e = new k(this);

  private void a()
  {
    String str1 = ag.b(getApplicationContext());
    String str2 = ag.a(getApplicationContext());
    if (str1 != null)
      this.c.setText(str1);
    while (true)
    {
      return;
      if (str2 != null)
        this.c.setText(str2);
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903162);
    ((TextView)findViewById(2131230727)).setText(getString(2131429275));
    this.a = ((Button)findViewById(2131231235));
    this.c = ((EditText)findViewById(2131231248));
    this.b = ((ImageButton)findViewById(2131231249));
    this.a.setOnClickListener(this.d);
    this.b.setOnClickListener(this.e);
    if (paramBundle == null)
      a.a(this, "pto", "13", "");
  }

  public void onStart()
  {
    super.onStart();
    String str1 = ag.b(getApplicationContext());
    String str2 = ag.a(getApplicationContext());
    if (str1 != null)
      this.c.setText(str1);
    while (true)
    {
      return;
      if (str2 != null)
        this.c.setText(str2);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.ui.PreventTheftGuideECActivity
 * JD-Core Version:    0.6.2
 */