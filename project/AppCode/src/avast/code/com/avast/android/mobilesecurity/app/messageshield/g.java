package com.avast.android.mobilesecurity.app.messageshield;

import android.view.View;
import android.view.View.OnClickListener;

class g
  implements View.OnClickListener
{
  g(MessageShieldActivity paramMessageShieldActivity)
  {
  }

  public void onClick(View paramView)
  {
    if ((!MessageShieldActivity.d(this.a)) && (MessageShieldActivity.e(this.a) < 0L))
      MessageShieldActivity.f(this.a);
    MessageShieldActivity.b(this.a, true);
    MessageShieldActivity.b(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.messageshield.g
 * JD-Core Version:    0.6.2
 */