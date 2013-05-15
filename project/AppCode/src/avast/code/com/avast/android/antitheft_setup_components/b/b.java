package com.avast.android.antitheft_setup_components.b;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.avast.android.generic.util.o;

final class b
  implements DialogInterface.OnClickListener
{
  b(e parame, Context paramContext)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (paramInt == 0)
      this.a.a(o.c);
    while (true)
    {
      return;
      if (paramInt == 1)
        this.a.a(o.b);
      else if (paramInt == 2)
        this.a.a(o.a);
      else
        a.b(this.b, this.a);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.antitheft_setup_components.b.b
 * JD-Core Version:    0.6.2
 */