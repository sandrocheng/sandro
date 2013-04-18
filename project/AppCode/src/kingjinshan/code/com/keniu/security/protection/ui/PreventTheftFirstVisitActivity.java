package com.keniu.security.protection.ui;

import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.Button;
import com.jxphone.mosecurity.a.a;
import com.keniu.security.main.BaseTitleActivity;

public class PreventTheftFirstVisitActivity extends BaseTitleActivity
{
  public void onCreate(Bundle paramBundle)
  {
    super.a(paramBundle, 2130903159, 2131429269);
    if (paramBundle == null)
      a.i(this, "pt");
    ((Button)findViewById(2131231233)).setOnClickListener(new g(this));
    ag.d(this);
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
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.ui.PreventTheftFirstVisitActivity
 * JD-Core Version:    0.6.2
 */