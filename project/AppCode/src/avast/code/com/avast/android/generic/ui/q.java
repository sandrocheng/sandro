package com.avast.android.generic.ui;

import android.os.Message;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import android.widget.EditText;
import com.avast.android.generic.ad;
import com.avast.android.generic.t;
import com.avast.android.generic.util.m;
import com.avast.android.generic.util.s;

class q
  implements View.OnClickListener
{
  q(p paramp)
  {
  }

  public void onClick(View paramView)
  {
    Message localMessage;
    int i;
    if (CustomNumberDialog.a(CustomNumberDialog.a(this.a.b).getText().toString(), CustomNumberDialog.b(this.a.b).isChecked()))
    {
      localMessage = Message.obtain();
      localMessage.what = t.V;
      if (!CustomNumberDialog.b(this.a.b).isChecked())
        break label136;
      i = 1;
    }
    while (true)
    {
      localMessage.arg1 = i;
      localMessage.obj = CustomNumberDialog.a(this.a.b).getText().toString();
      ((s)ad.a(this.a.b.getActivity(), s.class)).a(localMessage);
      if (this.a.b.isAdded());
      try
      {
        this.a.b.dismiss();
        return;
        label136: i = 0;
      }
      catch (Exception localException)
      {
        while (true)
          m.b("Error dismissing custom number dialog.", localException);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.q
 * JD-Core Version:    0.6.2
 */