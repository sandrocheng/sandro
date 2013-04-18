package com.keniu.security.protection.ui;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.jxphone.mosecurity.a.a;

public class PreventTheftGuideActivity extends Activity
{
  Button a;
  EditText b;
  EditText c;
  View.OnClickListener d = new h(this);

  private void a()
  {
    if (ag.e(this))
      ag.d(this);
    String str = ag.c(this);
    if ((str != null) && (!str.equals("")))
    {
      this.b.setText("########");
      this.c.setText("########");
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903160);
    ((TextView)findViewById(2131230727)).setText(getString(2131429275));
    if (paramBundle == null)
      a.b(this, "pt", "3");
    this.a = ((Button)findViewById(2131231235));
    this.b = ((EditText)findViewById(2131231238));
    this.c = ((EditText)findViewById(2131231240));
    this.a.setOnClickListener(this.d);
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0))
    {
      finish();
      startActivity(new Intent(this, PreventTheftMainActivity.class));
    }
    while (true)
      return false;
  }

  public void onStart()
  {
    super.onStart();
    if (ag.e(this))
      ag.d(this);
    String str = ag.c(this);
    if ((str != null) && (!str.equals("")))
    {
      this.b.setText("########");
      this.c.setText("########");
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.ui.PreventTheftGuideActivity
 * JD-Core Version:    0.6.2
 */