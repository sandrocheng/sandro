package com.avast.android.generic.ui.widget;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View.OnClickListener;

class t
  implements View.OnClickListener
{
  t(SelectorRow paramSelectorRow)
  {
  }

  public void onClick(View paramView)
  {
    if ((this.a.getContext() instanceof FragmentActivity))
      SelectorRow.SelectorDialog.a(((FragmentActivity)this.a.getContext()).getSupportFragmentManager(), this.a.getId(), SelectorRow.a(this.a), SelectorRow.b(this.a));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.widget.t
 * JD-Core Version:    0.6.2
 */