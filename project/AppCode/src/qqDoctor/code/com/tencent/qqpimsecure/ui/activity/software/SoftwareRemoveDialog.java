package com.tencent.qqpimsecure.ui.activity.software;

import ahr;
import ahs;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import java.text.DecimalFormat;

public class SoftwareRemoveDialog extends Activity
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
    Intent localIntent = getIntent();
    String str1 = "20%";
    if (localIntent != null)
    {
      float f = localIntent.getFloatExtra("remainPercent", 0.2F);
      if (f < 0.2D)
      {
        String str2 = new DecimalFormat("##0.0").format(f * 100.0F);
        str1 = str2 + "%";
      }
    }
    this.a.setText(String.format(getString(2131427371), new Object[] { str1 }));
    this.b.setText(getString(2131429532));
    this.c.setText(getString(2131427379));
    this.c.setOnClickListener(new ahr(this));
    this.b.setOnClickListener(new ahs(this));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.software.SoftwareRemoveDialog
 * JD-Core Version:    0.6.2
 */