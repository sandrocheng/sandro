package com.keniu.security.traffic;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.jxphone.mosecurity.a.a;

final class dp
  implements View.OnClickListener
{
  dp(TrafficWarningDialog paramTrafficWarningDialog)
  {
  }

  public final void onClick(View paramView)
  {
    if (TrafficWarningDialog.a(this.a).getText().toString().startsWith("本月剩余流量"))
      a.c(this.a, "2_2");
    while (true)
    {
      Intent localIntent = new Intent();
      localIntent.setClass(this.a, TrafficTabActivity.class);
      this.a.startActivity(localIntent);
      this.a.finish();
      return;
      a.c(this.a, "2_3");
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.dp
 * JD-Core Version:    0.6.2
 */