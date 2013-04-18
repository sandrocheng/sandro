package com.keniu.security.importx;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import com.jxphone.mosecurity.activity.a.i;
import com.jxphone.mosecurity.c.b;
import com.jxphone.mosecurity.logic.a.d;
import com.jxphone.mosecurity.logic.h;
import com.keniu.security.commumgr.a.t;

final class r extends i
{
  public r(ImportfSmsActivity paramImportfSmsActivity, Context paramContext, com.jxphone.mosecurity.c.l[] paramArrayOfl)
  {
    super(paramContext, paramArrayOfl, ImportfSmsActivity.a(paramImportfSmsActivity));
  }

  protected final b a(String paramString)
  {
    return h.c(this.f, this.e).b(paramString);
  }

  public final t d(int paramInt)
  {
    t localt = new t(5);
    localt.a(a(paramInt));
    return localt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = super.getView(paramInt, paramView, paramViewGroup);
    this.g.a(((l)this.g.m.getAdapter()).b(paramInt).e(), localView);
    return localView;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.importx.r
 * JD-Core Version:    0.6.2
 */