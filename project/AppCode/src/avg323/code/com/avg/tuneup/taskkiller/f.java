package com.avg.tuneup.taskkiller;

import android.app.ActivityManager;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.CheckBox;
import com.avg.tuneup.j;

class f
  implements DialogInterface.OnClickListener
{
  f(e parame, CheckBox paramCheckBox, ActivityManager paramActivityManager)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (this.a.isChecked())
      j.r();
    paramDialogInterface.dismiss();
    d.a(this.c.d, this.c.b, this.c.c, this.b);
    d.c(this.c.d);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.taskkiller.f
 * JD-Core Version:    0.6.2
 */