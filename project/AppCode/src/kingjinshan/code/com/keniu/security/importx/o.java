package com.keniu.security.importx;

import android.os.Handler;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.TextView;
import com.jxphone.mosecurity.c.b;

final class o
  implements AbsListView.OnScrollListener
{
  o(ImportfContactActivity paramImportfContactActivity)
  {
  }

  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    if (ImportfContactActivity.a(this.a) == 0);
    while (true)
    {
      return;
      ImportfContactActivity.b(this.a).setText(BaseImportActivity.l.b(paramInt1 + paramInt2 / 2).b().substring(0, 1));
      ImportfContactActivity.b(this.a).setVisibility(0);
      ImportfContactActivity.d(this.a).removeCallbacks(ImportfContactActivity.c(this.a));
      ImportfContactActivity.d(this.a).postDelayed(ImportfContactActivity.c(this.a), 500L);
    }
  }

  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    ImportfContactActivity.a(this.a, paramInt);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.importx.o
 * JD-Core Version:    0.6.2
 */