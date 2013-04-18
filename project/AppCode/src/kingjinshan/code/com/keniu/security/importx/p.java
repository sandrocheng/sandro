package com.keniu.security.importx;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import com.jxphone.mosecurity.activity.a.a;
import com.jxphone.mosecurity.c.b;

final class p extends a
{
  public p(ImportfContactActivity paramImportfContactActivity, Context paramContext, b[] paramArrayOfb)
  {
    super(paramContext, paramArrayOfb, ImportfContactActivity.e(paramImportfContactActivity));
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = super.getView(paramInt, paramView, paramViewGroup);
    if ((this.c.m != null) && (this.c.m.getAdapter() != null))
      this.c.a(((p)this.c.m.getAdapter()).b(paramInt).e(), localView);
    return localView;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.importx.p
 * JD-Core Version:    0.6.2
 */