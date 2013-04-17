package com.tencent.qqpimsecure.ui.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import ha;
import ho;
import hq;
import java.util.ArrayList;
import lf;

public class DoubleCallDialog extends Activity
  implements View.OnClickListener
{
  public static ArrayList<String> a = new ArrayList();
  private ButtonView b;
  private ButtonView c;
  private TextView d;
  private hq e;
  private String f = "";

  public void onClick(View paramView)
  {
    if (paramView == this.b)
    {
      finish();
      lf locallf = new lf();
      locallf.phonenum = this.f;
      locallf.enableForCalling = true;
      locallf.enableForSMS = true;
      locallf.b = 0;
      if (this.e.a(locallf) > 0L)
        ha.a(this, 2131427770);
    }
    while (true)
    {
      return;
      if (paramView == this.c)
      {
        ho.a().M(this.f);
        finish();
      }
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903052);
    this.b = ((ButtonView)findViewById(2131230762));
    this.c = ((ButtonView)findViewById(2131230763));
    this.d = ((TextView)findViewById(2131230755));
    this.f = getIntent().getStringExtra("phone_number");
    a.add(this.f);
    TextView localTextView = this.d;
    String str = getString(2131428499);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.f;
    localTextView.setText(String.format(str, arrayOfObject));
    this.b.setOnClickListener(this);
    this.c.setOnClickListener(this);
    this.e = new hq(0);
  }

  protected void onPause()
  {
    super.onPause();
    a.remove(this.f);
    finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.DoubleCallDialog
 * JD-Core Version:    0.6.2
 */