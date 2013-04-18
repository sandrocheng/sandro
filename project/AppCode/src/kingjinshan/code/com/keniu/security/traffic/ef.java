package com.keniu.security.traffic;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.widget.Button;

final class ef
  implements TextWatcher
{
  ef(TrafficZiFeiSettingActivity paramTrafficZiFeiSettingActivity)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    if (TextUtils.isEmpty(paramEditable))
      TrafficZiFeiSettingActivity.b(this.a).setText(2131427870);
    while (true)
    {
      return;
      TrafficZiFeiSettingActivity.b(this.a).setText(2131429278);
    }
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.ef
 * JD-Core Version:    0.6.2
 */