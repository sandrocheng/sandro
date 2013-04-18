package com.keniu.security.main;

import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import com.ijinshan.kinghelper.firewall.dd;

final class cn extends Handler
{
  cn(SplashActivity paramSplashActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    dd.a(this.a);
    Intent localIntent = new Intent(this.a, MainActivity.class);
    this.a.startActivity(localIntent);
    this.a.finish();
    paramMessage.obj = null;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.cn
 * JD-Core Version:    0.6.2
 */