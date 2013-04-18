package com.ijinshan.software.recommand;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ListView;
import android.widget.RelativeLayout;
import com.keniu.security.util.at;

final class i
  implements View.OnClickListener
{
  i(NecessaryInstalledActivity paramNecessaryInstalledActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (at.c(this.a))
    {
      NecessaryInstalledActivity.a(this.a).setVisibility(8);
      NecessaryInstalledActivity.b(this.a).setVisibility(0);
      NecessaryInstalledActivity.c(this.a).setVisibility(0);
      new l(this.a).execute(new Void[] { null, null, null });
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.software.recommand.i
 * JD-Core Version:    0.6.2
 */