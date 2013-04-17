package com.tencent.powermanager.uilib.view;

import android.content.Context;
import android.view.View;
import android.widget.TextView;

public class SubTitleListItemView extends BaseListItemView
{
  private TextView b;

  public SubTitleListItemView(Context paramContext)
  {
    super(paramContext);
  }

  public final View a()
  {
    View localView = inflate(this.a, 2130903082, null);
    this.b = ((TextView)localView.findViewById(2131230854));
    return localView;
  }

  public final int b()
  {
    return 3;
  }

  public void setSubTitleText(String paramString)
  {
    if (this.b != null)
      this.b.setText(paramString);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.uilib.view.SubTitleListItemView
 * JD-Core Version:    0.6.2
 */