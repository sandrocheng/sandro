package com.keniu.security.importx;

import android.content.Context;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.jxphone.mosecurity.c.c;
import com.keniu.security.commumgr.a.t;

final class e
  implements AdapterView.OnItemClickListener
{
  e(BaseImportActivity paramBaseImportActivity)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    BaseImportActivity.a(BaseImportActivity.l.b(paramInt));
    BaseImportActivity.a(this.a, paramInt);
    t localt;
    if (BaseImportActivity.c(this.a) == c.g)
    {
      localt = BaseImportActivity.l.d(BaseImportActivity.d(this.a));
      if (localt != null);
    }
    while (true)
    {
      return;
      BaseImportActivity localBaseImportActivity = this.a;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = localt.a();
      com.keniu.security.util.k.a(localBaseImportActivity, localBaseImportActivity.getString(2131428468, arrayOfObject), 2131427886, new f(this, localBaseImportActivity, localt));
      continue;
      switch (j.a[BaseImportActivity.o().e().ordinal()])
      {
      default:
        BaseImportActivity.b(this.a, BaseImportActivity.q(), new i(this));
        break;
      case 1:
      case 2:
        BaseImportActivity.a(this.a, BaseImportActivity.p(), new h(this));
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.importx.e
 * JD-Core Version:    0.6.2
 */