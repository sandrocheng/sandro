package com.avast.android.generic.ui.widget;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

class e
  implements AdapterView.OnItemClickListener
{
  e(ContextDialogFragment paramContextDialogFragment)
  {
  }

  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.a.dismiss();
    if ((this.a.getTargetFragment() != null) && ((this.a.getTargetFragment() instanceof f)))
      ((f)this.a.getTargetFragment()).a(paramInt);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.widget.e
 * JD-Core Version:    0.6.2
 */