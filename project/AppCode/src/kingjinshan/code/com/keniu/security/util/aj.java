package com.keniu.security.util;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;

final class aj extends ArrayAdapter
{
  aj(ai paramai, Context paramContext, CharSequence[] paramArrayOfCharSequence, MyAlertController.RecycleListView paramRecycleListView)
  {
    super(paramContext, 2130903268, 2131231547, paramArrayOfCharSequence);
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = super.getView(paramInt, paramView, paramViewGroup);
    if ((this.b.C != null) && (this.b.C[paramInt] != 0))
      this.a.setItemChecked(paramInt, true);
    return localView;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.util.aj
 * JD-Core Version:    0.6.2
 */