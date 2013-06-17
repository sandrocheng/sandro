package com.antivirus.ui.scan.results;

import android.view.View;
import android.view.View.OnClickListener;

class e
  implements View.OnClickListener
{
  e(d paramd, int paramInt1, int paramInt2, k paramk)
  {
  }

  public void onClick(View paramView)
  {
    d.a(this.d, true);
    d.a(this.d, this.a);
    d.b(this.d, this.b);
    if ((this.c instanceof a))
    {
      String str = this.c.f();
      d.a(this.d, str);
      this.d.a(i.a);
      d.a(this.d, str);
    }
    while (true)
    {
      return;
      if ((this.c instanceof r))
      {
        s locals = ((r)this.c).a();
        d.a(this.d, locals);
        this.d.a(i.b);
        d.a(this.d, paramView.getContext(), locals);
      }
      else if ((this.c instanceof b))
      {
        b localb = (b)this.c;
        switch (h.a[localb.b().ordinal()])
        {
        default:
          com.avg.toolkit.f.a.a();
          break;
        case 1:
          d.b(this.d, localb.a());
          this.d.a(d.a(this.d), d.b(this.d));
          break;
        case 2:
          d.c(this.d).a();
          this.d.a(i.c);
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.scan.results.e
 * JD-Core Version:    0.6.2
 */