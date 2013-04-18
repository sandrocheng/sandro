package com.jxphone.mosecurity.logic;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;

public class PhoneCallWarningDialog extends Activity
  implements View.OnClickListener
{
  public void onClick(View paramView)
  {
    finish();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    if (getIntent().getIntExtra("type", 0) == 1)
    {
      String str1 = getIntent().getStringExtra("number");
      if (str1 != null)
      {
        String str2 = getString(2131429114);
        String str3 = String.format(getString(2131429115), new Object[] { str1 });
        aq localaq = new aq(this, (byte)0);
        localaq.a(str2);
        localaq.b(str3);
        localaq.a();
        localaq.a(new o(this));
        localaq.a(2131427864, new p(this, str1));
        localaq.b(2131427866, new q(this));
        localaq.c().show();
      }
    }
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    finish();
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onPause()
  {
    super.onPause();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.logic.PhoneCallWarningDialog
 * JD-Core Version:    0.6.2
 */