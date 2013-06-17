package com.avg.tuneup.taskkiller;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.support.v4.app.o;
import com.avg.a.e;

class c
  implements DialogInterface.OnClickListener
{
  c(TaskKillerActivity paramTaskKillerActivity, int[] paramArrayOfInt)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ((n)this.b.f().a(e.middle_part)).b(this.a[paramInt]);
    paramDialogInterface.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.taskkiller.c
 * JD-Core Version:    0.6.2
 */