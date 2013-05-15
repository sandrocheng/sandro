package com.avast.android.antitheft_setup_components.app.home;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.avast.android.generic.ui.widget.CheckBoxRow;

class p
  implements View.OnClickListener
{
  p(RootFragment paramRootFragment)
  {
  }

  public void onClick(View paramView)
  {
    if (RootFragment.a(this.a).c())
      this.a.a("ms-atSetup", "root mode", "rooted", 0L);
    while (true)
    {
      this.a.startActivity(new Intent(this.a.getActivity(), ChooseNameWizardActivity.class));
      return;
      this.a.a("ms-atSetup", "root mode", "non-rooted", 0L);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.antitheft_setup_components.app.home.p
 * JD-Core Version:    0.6.2
 */