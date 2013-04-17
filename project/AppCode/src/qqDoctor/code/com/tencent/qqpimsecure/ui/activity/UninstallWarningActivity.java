package com.tencent.qqpimsecure.ui.activity;

import afl;
import afm;
import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import yj;

public class UninstallWarningActivity extends Activity
{
  public Dialog a;
  public yj b;

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.b = new yj(this);
    this.a = new Dialog(this);
    this.a.setTitle(2131430173);
    this.a.setMessage(2131430174);
    this.a.setPositiveButton(2131430175, new afl(this), 1);
    this.a.setNegativeButton(2131429983, new afm(this), 2);
    this.a.show();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      if ((this.a != null) && (this.a.isShowing()))
        this.a.dismiss();
      finish();
      this.b.a();
    }
    for (boolean bool = true; ; bool = super.onKeyDown(paramInt, paramKeyEvent))
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.UninstallWarningActivity
 * JD-Core Version:    0.6.2
 */