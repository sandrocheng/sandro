package com.jxphone.mosecurity.activity;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.TextView;
import com.jxphone.mosecurity.c.c;

final class l
  implements DialogInterface.OnClickListener
{
  l(BaseContactActivity paramBaseContactActivity, s params, TextView paramTextView1, TextView paramTextView2, c paramc)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    s locals = this.a;
    BaseContactActivity localBaseContactActivity = this.e;
    String str1 = this.b.getText().toString();
    String str2 = this.c.getText().toString();
    locals.a(localBaseContactActivity, str1, str2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.l
 * JD-Core Version:    0.6.2
 */