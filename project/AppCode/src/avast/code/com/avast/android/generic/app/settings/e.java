package com.avast.android.generic.app.settings;

import android.view.View;
import android.view.View.OnClickListener;
import com.avast.android.generic.ae;
import com.avast.android.generic.t;
import com.avast.android.generic.ui.PasswordDialog;

class e
  implements View.OnClickListener
{
  e(d paramd)
  {
  }

  public void onClick(View paramView)
  {
    if (this.a.c.getFragmentManager() != null)
    {
      if ((!RecoveryNumberDescriptionDialog.b(this.a.c).e()) || (this.a.b))
        break label56;
      PasswordDialog.a(this.a.c.getFragmentManager(), t.Q);
    }
    while (true)
    {
      return;
      label56: RecoveryNumberDescriptionDialog.a(this.a.c);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.settings.e
 * JD-Core Version:    0.6.2
 */