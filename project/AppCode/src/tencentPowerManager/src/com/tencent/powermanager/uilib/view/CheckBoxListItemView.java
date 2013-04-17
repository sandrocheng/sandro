package com.tencent.powermanager.uilib.view;

import android.content.Context;
import android.view.View;
import com.tencent.powermanager.uilib.CheckBoxView;

public class CheckBoxListItemView extends BaseListItemView
{
  private CheckBoxView b;

  public CheckBoxListItemView(Context paramContext)
  {
    super(paramContext);
  }

  public final View a()
  {
    View localView = inflate(this.a, 2130903079, null);
    this.b = ((CheckBoxView)localView.findViewById(2131230851));
    return localView;
  }

  public final int b()
  {
    return 2;
  }

  public final boolean c()
  {
    if (this.b != null);
    for (boolean bool = this.b.a(); ; bool = false)
      return bool;
  }

  public void setCheckBoxOn(boolean paramBoolean)
  {
    if (this.b != null)
      this.b.setChecked(paramBoolean);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.uilib.view.CheckBoxListItemView
 * JD-Core Version:    0.6.2
 */