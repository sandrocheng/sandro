package com.keniu.security.traffic;

import android.os.Handler;
import android.os.Message;
import android.widget.Toast;
import com.keniu.security.util.aw;

final class fh extends Handler
{
  fh(TrafficZiFeiSubSettingActivity paramTrafficZiFeiSubSettingActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    TrafficZiFeiSubSettingActivity.a(this.a).a();
    if (paramMessage.what == 0)
      Toast.makeText(this.a, 2131428041, 1).show();
    while (true)
    {
      this.a.setResult(-1);
      this.a.finish();
      return;
      if (paramMessage.what == 1)
        Toast.makeText(this.a, 2131428042, 1).show();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.fh
 * JD-Core Version:    0.6.2
 */