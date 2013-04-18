package com.jxphone.mosecurity.activity;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.TextView;
import android.widget.Toast;
import com.jxphone.mosecurity.d.k;

final class d
  implements DialogInterface.OnClickListener
{
  d(BaseContactActivity paramBaseContactActivity, TextView paramTextView)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    switch (k.a(this.b).a(this.a.getText().toString()))
    {
    default:
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      return;
      Toast.makeText(this.b, this.b.getString(2131428884), 0).show();
      this.a.clearComposingText();
      this.a.setText("");
      continue;
      this.b.i = false;
      this.b.f();
      paramDialogInterface.dismiss();
      continue;
      this.b.i = true;
      this.b.f();
      paramDialogInterface.dismiss();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.d
 * JD-Core Version:    0.6.2
 */