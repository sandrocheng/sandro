package com.tencent.qqpimsecure.ui.activity.market;

import agf;
import agg;
import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;

public class SDcardNotEnoughDialog extends Activity
{
  private TextView a;
  private ButtonView b;
  private ButtonView c;
  private Context d;

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903078);
    this.d = this;
    this.a = ((TextView)findViewById(2131230750));
    this.b = ((ButtonView)findViewById(2131230768));
    this.c = ((ButtonView)findViewById(2131230769));
    this.a.setText(getString(2131427372));
    this.b.setText(getString(2131427373));
    this.c.setText(getString(2131427379));
    this.c.setOnClickListener(new agf(this));
    this.b.setOnClickListener(new agg(this));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.market.SDcardNotEnoughDialog
 * JD-Core Version:    0.6.2
 */