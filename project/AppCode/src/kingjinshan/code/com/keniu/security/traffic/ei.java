package com.keniu.security.traffic;

import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.keniu.security.util.SafeViewFlipper;

final class ei
  implements View.OnClickListener
{
  ei(TrafficZiFeiSettingActivity paramTrafficZiFeiSettingActivity, TextView paramTextView)
  {
  }

  public final void onClick(View paramView)
  {
    if (!TextUtils.isEmpty(TrafficZiFeiSettingActivity.m(this.b)))
    {
      if ((TrafficZiFeiSettingActivity.c(this.b).getDisplayedChild() != 3) || (!TrafficZiFeiSettingActivity.m(this.b).equals("RatesRequest")))
        break label50;
      TrafficZiFeiSettingActivity.n(this.b);
    }
    while (true)
    {
      return;
      label50: if (TrafficZiFeiSettingActivity.c(this.b).getDisplayedChild() == 4)
      {
        if (TextUtils.isEmpty(TrafficZiFeiSettingActivity.o(this.b).getText().toString()))
        {
          if (!TrafficZiFeiSettingActivity.p(this.b))
          {
            Toast.makeText(this.b, "请输入流量套餐额度", 1).show();
            TrafficZiFeiSettingActivity.b(this.b).setText("跳过");
            TrafficZiFeiSettingActivity.q(this.b);
          }
        }
        else
        {
          long l1 = Long.valueOf(TrafficZiFeiSettingActivity.o(this.b).getText().toString()).longValue();
          y localy = y.a(this.b);
          if (this.a.getText().equals("M"));
          for (long l2 = 1024L * (l1 * 1024L); ; l2 = 1024L * (1024L * (l1 * 1024L)))
          {
            localy.d = l2;
            localy.a(this.b, 2131428291);
            TrafficZiFeiSettingActivity.n(this.b);
            break;
          }
        }
      }
      else if (TrafficZiFeiSettingActivity.c(this.b).getDisplayedChild() == 0)
      {
        if (TextUtils.isEmpty(TrafficZiFeiSettingActivity.r(this.b)))
          Toast.makeText(this.b, "请选择所在省市", 1).show();
      }
      else if (TrafficZiFeiSettingActivity.c(this.b).getDisplayedChild() == 1)
      {
        if (TextUtils.isEmpty(TrafficZiFeiSettingActivity.s(this.b)))
          Toast.makeText(this.b, "请选择所在市", 1).show();
      }
      else if (TrafficZiFeiSettingActivity.c(this.b).getDisplayedChild() == 2)
      {
        if (TextUtils.isEmpty(TrafficZiFeiSettingActivity.t(this.b)))
          Toast.makeText(this.b, "请选择运营商", 1).show();
      }
      else if ((TrafficZiFeiSettingActivity.c(this.b).getDisplayedChild() == 3) && (TextUtils.isEmpty(TrafficZiFeiSettingActivity.u(this.b))))
      {
        Toast.makeText(this.b, "请选择品牌", 1).show();
      }
      else
      {
        if (TrafficZiFeiSettingActivity.c(this.b).getDisplayedChild() == 3)
          TrafficZiFeiSettingActivity.v(this.b);
        TrafficZiFeiSettingActivity.w(this.b);
        TrafficZiFeiSettingActivity.a(this.b, true);
        if (TrafficZiFeiSettingActivity.c(this.b).getDisplayedChild() == 1)
        {
          TrafficZiFeiSettingActivity.d(this.b).setText(2131429277);
          TrafficZiFeiSettingActivity.a(this.b, TrafficZiFeiSettingActivity.e(this.b));
          ((en)TrafficZiFeiSettingActivity.f(this.b).getAdapter()).notifyDataSetChanged();
          ((en)TrafficZiFeiSettingActivity.g(this.b).getAdapter()).notifyDataSetChanged();
        }
        else if (TrafficZiFeiSettingActivity.c(this.b).getDisplayedChild() == 2)
        {
          TrafficZiFeiSettingActivity.x(this.b);
        }
        else if (TrafficZiFeiSettingActivity.c(this.b).getDisplayedChild() == 3)
        {
          TrafficZiFeiSettingActivity.y(this.b);
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.ei
 * JD-Core Version:    0.6.2
 */