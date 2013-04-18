package com.jxphone.mosecurity.activity.friend;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.jxphone.mosecurity.c.b;
import com.jxphone.mosecurity.c.l;
import com.jxphone.mosecurity.logic.a.j;

final class bk
  implements View.OnClickListener
{
  bk(PeopleSmsLogActivity paramPeopleSmsLogActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (this.a.l.getText() == null)
      return;
    String str1 = this.a.l.getText().toString();
    if ((PeopleSmsLogActivity.o() == null) || (PeopleSmsLogActivity.o().length == 0) || (System.currentTimeMillis() - PeopleSmsLogActivity.o()[(PeopleSmsLogActivity.o().length - 1)].d() >= 10800000L));
    for (String str2 = PeopleSmsLogActivity.p().c(); ; str2 = PeopleSmsLogActivity.o()[(PeopleSmsLogActivity.o().length - 1)].b())
    {
      PeopleSmsLogActivity.b(this.a).a(str2, str1);
      this.a.l.setText(null);
      if (PeopleSmsLogActivity.c(this.a))
        break;
      PeopleSmsLogActivity.d(this.a);
      PeopleSmsLogActivity.e(this.a);
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.bk
 * JD-Core Version:    0.6.2
 */