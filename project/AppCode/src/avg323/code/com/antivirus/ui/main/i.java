package com.antivirus.ui.main;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.antivirus.ui.performance.AvPerformanceActivity;
import com.avg.toolkit.c.a;

class i
  implements View.OnClickListener
{
  i(c paramc)
  {
  }

  public void onClick(View paramView)
  {
    this.a.a(new Intent(c.n(this.a), AvPerformanceActivity.class));
    a.a(c.o(this.a), "category_app_landing", "action_performance", null, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.main.i
 * JD-Core Version:    0.6.2
 */