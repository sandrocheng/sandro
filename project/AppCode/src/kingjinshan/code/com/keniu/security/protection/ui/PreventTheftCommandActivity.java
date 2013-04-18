package com.keniu.security.protection.ui;

import android.os.Bundle;
import android.view.View.OnClickListener;
import android.widget.Button;
import com.keniu.security.main.BaseTitleActivity;

public class PreventTheftCommandActivity extends BaseTitleActivity
{
  View.OnClickListener a = new b(this);
  View.OnClickListener b = new c(this);
  private Button c;
  private Button d;

  public void onCreate(Bundle paramBundle)
  {
    super.a(paramBundle, 2130903156, 2131429223);
    this.c = ((Button)findViewById(2131231221));
    this.d = ((Button)findViewById(2131231220));
    this.c.setOnClickListener(this.a);
    this.d.setOnClickListener(this.b);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.ui.PreventTheftCommandActivity
 * JD-Core Version:    0.6.2
 */