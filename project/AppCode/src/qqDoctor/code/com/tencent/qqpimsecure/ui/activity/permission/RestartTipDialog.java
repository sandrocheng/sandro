package com.tencent.qqpimsecure.ui.activity.permission;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import xg;

public class RestartTipDialog extends Activity
{
  private ButtonView a;
  private ButtonView b;
  private TextView c;

  public void onBackPressed()
  {
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903234);
    this.c = ((TextView)findViewById(2131231280));
    this.c.setText(getIntent().getStringExtra("reboot_tips"));
    this.a = ((ButtonView)findViewById(2131231281));
    this.a.setOnClickListener(new a());
    this.b = ((ButtonView)findViewById(2131231282));
    this.b.setOnClickListener(new a());
  }

  protected void onPause()
  {
    super.onPause();
    if (this.b != null)
      this.b.performClick();
    synchronized (xg.a)
    {
      xg.a.notifyAll();
      return;
    }
  }

  public final class a
    implements View.OnClickListener
  {
    public a()
    {
    }

    public final void onClick(View paramView)
    {
      if (paramView == RestartTipDialog.a(RestartTipDialog.this))
        xg.a.a = true;
      synchronized (xg.a)
      {
        do
        {
          xg.a.notify();
          RestartTipDialog.this.finish();
          return;
        }
        while (paramView != RestartTipDialog.b(RestartTipDialog.this));
        xg.a.a = false;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.permission.RestartTipDialog
 * JD-Core Version:    0.6.2
 */