package com.jxphone.mosecurity.activity;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.jxphone.mosecurity.c.b;
import com.jxphone.mosecurity.c.c;
import com.jxphone.mosecurity.logic.a.d;
import com.jxphone.mosecurity.logic.a.g;
import com.jxphone.mosecurity.logic.h;
import com.keniu.security.util.ap;

final class i
  implements DialogInterface.OnClickListener
{
  i(BaseContactActivity paramBaseContactActivity, Context paramContext, r paramr)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    d locald = h.c(this.a, this.c.i);
    boolean bool;
    switch (paramInt)
    {
    default:
      bool = false;
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      if (bool)
      {
        BaseContactActivity.g.a(c.f);
        if (this.b != null)
          this.b.a(BaseContactActivity.g);
      }
      return;
      bool = locald.b(BaseContactActivity.g.a());
      continue;
      bool = locald.b(BaseContactActivity.g.a());
      if (bool)
      {
        h.b(this.a, this.c.i).c(BaseContactActivity.g.c(), BaseContactActivity.g.e());
        h.a(this.a, this.c.i).b(BaseContactActivity.g.c(), BaseContactActivity.g.e());
        Intent localIntent = new Intent("com.conew.mosecurity.ACTION_PRIVATE_SPACE_CONTACTS_CHANGE");
        this.c.sendBroadcast(localIntent);
        continue;
        j localj = new j(this, ((ap)paramDialogInterface).getContext(), new t(this.c));
        bool = h.c(this.a, this.c.i).c(BaseContactActivity.g, localj);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.i
 * JD-Core Version:    0.6.2
 */