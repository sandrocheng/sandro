package org.antivirus.ui.scan.results;

import android.view.View;
import android.view.View.OnClickListener;
import org.antivirus.core.Logger;

final class e
  implements View.OnClickListener
{
  e(d paramd, int paramInt1, int paramInt2, j paramj, View paramView)
  {
  }

  public final void onClick(View paramView)
  {
    d.a(this.e);
    d.a(this.e, this.a);
    d.b(this.e, this.b);
    if ((this.c instanceof a))
    {
      String str = this.c.d;
      d.a(this.e, str);
      this.e.a(i.a);
      d.a(this.e, str);
    }
    while (true)
    {
      return;
      if ((this.c instanceof q))
      {
        r localr = ((q)this.c).a;
        d.a(this.e, localr);
        this.e.a(i.b);
        d.a(this.e, paramView.getContext(), localr);
      }
      else if ((this.c instanceof b))
      {
        b localb = (b)this.c;
        switch (h.a[localb.a.ordinal()])
        {
        default:
          Logger.errorBadAgrument();
          break;
        case 1:
          d.b(this.e, localb.b);
          this.e.a(d.b(this.e), d.c(this.e));
          break;
        case 2:
          d.d(this.e).c();
          d.a(this.e, this.d);
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.scan.results.e
 * JD-Core Version:    0.6.2
 */