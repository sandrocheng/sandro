package com.avast.android.antitheft_setup_components.app.home;

import android.view.View;
import android.view.View.OnClickListener;
import com.avast.android.generic.util.a;

class c
  implements View.OnClickListener
{
  c(ChooseNameFragment paramChooseNameFragment)
  {
  }

  public void onClick(View paramView)
  {
    this.a.a("ms-atSetup", "choose name", "cancel", 0L);
    a.a(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.antitheft_setup_components.app.home.c
 * JD-Core Version:    0.6.2
 */