package com.ijinshan.kinghelper.firewall;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;
import com.jxphone.mosecurity.a.a;
import com.keniu.security.h.b;
import com.keniu.security.util.aq;

public class FirewallSmsActivity extends Activity
  implements View.OnClickListener
{
  private static final boolean a = true;
  private static final String b = "FirewallSmsActivity";
  private static final int c = 6534;
  private DialogInterface.OnClickListener d = new at(this);

  private Dialog a()
  {
    aq localaq = new aq(this, (byte)0);
    localaq.a(2131427646);
    localaq.d(2131165244, this.d);
    return localaq.c();
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
    case 2131230838:
    case 2131230834:
    case 2131230830:
    case 2131230826:
    }
    while (true)
    {
      return;
      startActivity(new Intent(this, ServicesSmsListActivity.class));
      continue;
      startActivity(new Intent(this, SmsBackupActivity.class));
      Log.e("FirewallSmsActivity", paramView.getId() + "SmsScannerActivity");
      continue;
      startActivity(new Intent(this, FirewallQuerySpActivity.class));
      continue;
      startActivity(new Intent(this, DeskSmsSettingsActivity.class));
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    setContentView(2130903052);
    if (paramBundle == null)
      a.i(this, "smsman");
    findViewById(2131230838).setOnClickListener(this);
    findViewById(2131230826).setOnClickListener(this);
    findViewById(2131230834).setOnClickListener(this);
    findViewById(2131230830).setOnClickListener(this);
    if (b.a)
      Toast.makeText(this, 2131427828, 0).show();
  }

  protected Dialog onCreateDialog(int paramInt)
  {
    return super.onCreateDialog(paramInt);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.FirewallSmsActivity
 * JD-Core Version:    0.6.2
 */