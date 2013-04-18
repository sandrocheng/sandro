package com.keniu.security.main;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;

final class bl
  implements Runnable
{
  private bl(MainActivity paramMainActivity, byte paramByte)
  {
  }

  public final void run()
  {
    float f1 = MainActivity.w(this.a).getWidth() / 2.0F;
    float f2 = MainActivity.w(this.a).getHeight() / 2.0F;
    if (MainActivity.x(this.a) == 1)
    {
      MainActivity.y(this.a).setVisibility(8);
      MainActivity.z(this.a).setVisibility(0);
      MainActivity.z(this.a).requestFocus();
      MainActivity.b(this.a, 2);
    }
    while (true)
    {
      cg localcg = new cg(270 * MainActivity.A(this.a), 360 * MainActivity.A(this.a), f1, f2, false);
      localcg.setDuration(500L);
      localcg.setFillAfter(true);
      localcg.setInterpolator(new DecelerateInterpolator());
      localcg.setAnimationListener(MainActivity.B(this.a));
      MainActivity.w(this.a).startAnimation(localcg);
      return;
      MainActivity.z(this.a).setVisibility(8);
      MainActivity.y(this.a).setVisibility(0);
      MainActivity.y(this.a).requestFocus();
      MainActivity.b(this.a, 1);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.bl
 * JD-Core Version:    0.6.2
 */