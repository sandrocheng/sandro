package com.keniu.security.commumgr.a;

import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.EditText;
import com.keniu.security.util.ap;
import com.keniu.security.util.w;

final class j
  implements View.OnClickListener
{
  j(g paramg, View paramView, w paramw, ap paramap)
  {
  }

  public final void onClick(View paramView)
  {
    if (!e.a(((EditText)this.a.findViewById(2131231092)).getText().toString()))
    {
      Animation localAnimation = AnimationUtils.loadAnimation(this.d.a, 2130968581);
      this.a.findViewById(2131231092).startAnimation(localAnimation);
    }
    while (true)
    {
      return;
      this.b.a();
      this.c.dismiss();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.commumgr.a.j
 * JD-Core Version:    0.6.2
 */