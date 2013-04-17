package com.tencent.powermanager.uilib;

import android.content.Context;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;

public class DIYHeaderView extends LinearLayout
{
  private EditText a;

  public DIYHeaderView(Context paramContext)
  {
    super(paramContext);
    View localView = inflate(paramContext, 2130903053, null);
    addView(localView, new LinearLayout.LayoutParams(-1, -2));
    this.a = ((EditText)localView.findViewById(2131230771));
  }

  public final String a()
  {
    if (this.a != null);
    for (String str = this.a.getText().toString(); ; str = null)
      return str;
  }

  public void setModeName(String paramString)
  {
    if (this.a != null)
      this.a.setText(paramString);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.uilib.DIYHeaderView
 * JD-Core Version:    0.6.2
 */