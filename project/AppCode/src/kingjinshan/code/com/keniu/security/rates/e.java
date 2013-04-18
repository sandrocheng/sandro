package com.keniu.security.rates;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;
import com.jxphone.mosecurity.a.a;

final class e
  implements View.OnClickListener
{
  e(RatesRequestMainActivity paramRatesRequestMainActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (RatesRequestMainActivity.a(this.a))
    {
      a.f(RatesRequestMainActivity.h(), "5");
      RatesRequestMainActivity.a(this.a, "http://wap.wali.com/common/prog/produce.php?f=download&cv=ANDROIDZFT&cid=2035001");
    }
    while (true)
    {
      return;
      Toast.makeText(this.a, "请连接网络！", 1).show();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.rates.e
 * JD-Core Version:    0.6.2
 */