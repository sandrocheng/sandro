package com.jxphone.mosecurity.activity;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.TextView;
import android.widget.Toast;
import com.jxphone.mosecurity.c.b;
import com.jxphone.mosecurity.logic.a.l;
import com.jxphone.mosecurity.logic.h;

final class k
  implements DialogInterface.OnClickListener
{
  k(BaseContactActivity paramBaseContactActivity, TextView paramTextView1, TextView paramTextView2, r paramr)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str1 = this.a.getText().toString();
    if (str1.length() == 0)
      Toast.makeText(this.d, this.d.getString(2131428984), 0).show();
    while (true)
    {
      return;
      String str2 = this.b.getText().toString();
      if (h.d(this.d).a(str2, str1))
      {
        Toast.makeText(this.d, this.d.getString(2131428961), 1);
        b localb = new b();
        localb.a(str2);
        localb.b(str1);
        this.c.a(localb);
      }
      else
      {
        Toast.makeText(this.d, this.d.getString(2131428963), 1);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.k
 * JD-Core Version:    0.6.2
 */