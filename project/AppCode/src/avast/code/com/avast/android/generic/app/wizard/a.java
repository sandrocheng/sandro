package com.avast.android.generic.app.wizard;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.avast.android.generic.z;

class a
  implements View.OnClickListener
{
  a(EulaFragment paramEulaFragment, com.avast.android.generic.ui.a.a parama)
  {
  }

  public void onClick(View paramView)
  {
    if (EulaFragment.a(this.b) == z.cH)
    {
      EulaFragment.a(this.b, z.aY);
      this.a.a(false);
      EulaFragment.b(this.b).startAnimation(this.a);
      EulaFragment.b(this.b).invalidate();
      this.b.a("ms-Wizard", "eulaText", "show", 0L);
    }
    while (true)
    {
      EulaFragment.c(this.b).setText(EulaFragment.a(this.b));
      return;
      EulaFragment.a(this.b, z.cH);
      this.a.a(true);
      EulaFragment.b(this.b).invalidate();
      EulaFragment.b(this.b).startAnimation(this.a);
      this.b.a("ms-Wizard", "eulaText", "hide", 0L);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.wizard.a
 * JD-Core Version:    0.6.2
 */