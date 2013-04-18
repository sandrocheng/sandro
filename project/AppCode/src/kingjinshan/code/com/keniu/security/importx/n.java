package com.keniu.security.importx;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.jxphone.mosecurity.activity.a.f;
import com.jxphone.mosecurity.c.b;
import com.jxphone.mosecurity.c.c;
import com.jxphone.mosecurity.c.j;
import com.jxphone.mosecurity.logic.a.d;
import com.jxphone.mosecurity.logic.h;
import com.keniu.security.commumgr.a.t;

final class n extends f
{
  private n(ImportfCalllogActivity paramImportfCalllogActivity, Context paramContext, j[] paramArrayOfj, byte paramByte)
  {
    super(paramContext, paramArrayOfj, ImportfCalllogActivity.a(paramImportfCalllogActivity));
  }

  protected final b a(String paramString)
  {
    return h.c(this.b, this.e).b(paramString);
  }

  protected final void a(b paramb, View paramView)
  {
    ImportfCalllogActivity localImportfCalllogActivity = this.g;
    if (paramb == null);
    for (c localc = c.a; ; localc = paramb.e())
    {
      localImportfCalllogActivity.a(localc, paramView);
      return;
    }
  }

  public final t d(int paramInt)
  {
    t localt = new t(4);
    localt.a(a(paramInt));
    return localt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = super.getView(paramInt, paramView, paramViewGroup);
    j localj = a(paramInt);
    TextView localTextView = (TextView)localView.findViewById(2131230950);
    switch (localj.f())
    {
    default:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return localView;
      if (localj.i() != 0L)
      {
        Context localContext = localView.getContext();
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Double.valueOf(localj.i() / 1000.0D);
        localTextView.setText(localContext.getString(2131428991, arrayOfObject));
        continue;
        localTextView.setText(null);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.importx.n
 * JD-Core Version:    0.6.2
 */