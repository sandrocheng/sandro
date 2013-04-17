package com.tencent.qqpimsecure.ui.activity.virus;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;

public class VirusScanWarningDialog extends Activity
  implements View.OnClickListener
{
  private ButtonView a;
  private ButtonView b;
  private TextView c;

  public void onClick(View paramView)
  {
    if (paramView == this.a)
    {
      Intent localIntent = new Intent(this, VirusScanActivity.class);
      localIntent.setFlags(603979776);
      localIntent.putExtra("AUTO_SCAN", true);
      startActivity(localIntent);
    }
    finish();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903082);
    this.c = ((TextView)findViewById(2131230755));
    this.c.setText(getResources().getString(2131428686));
    this.a = ((ButtonView)findViewById(2131230781));
    this.a.setText(getResources().getString(2131428687));
    findViewById(2131230752).setVisibility(8);
    this.b = ((ButtonView)findViewById(2131230763));
    this.b.setText(getResources().getString(2131428688));
    this.a.setOnClickListener(this);
    this.b.setOnClickListener(this);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.virus.VirusScanWarningDialog
 * JD-Core Version:    0.6.2
 */