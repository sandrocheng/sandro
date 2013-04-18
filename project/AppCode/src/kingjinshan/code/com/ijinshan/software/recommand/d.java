package com.ijinshan.software.recommand;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ListView;
import android.widget.RelativeLayout;
import com.keniu.security.util.at;

final class d
  implements View.OnClickListener
{
  d(HotTopActivity paramHotTopActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (at.c(this.a))
    {
      HotTopActivity.a(this.a).setVisibility(8);
      HotTopActivity.b(this.a).setVisibility(0);
      HotTopActivity.c(this.a).setVisibility(0);
      new g(this.a).execute(new Void[] { null, null, null });
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.software.recommand.d
 * JD-Core Version:    0.6.2
 */