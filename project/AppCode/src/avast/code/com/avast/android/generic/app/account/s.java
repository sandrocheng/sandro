package com.avast.android.generic.app.account;

import android.content.Intent;
import android.os.Build.VERSION;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View.OnClickListener;
import com.avast.android.generic.a;
import com.avast.android.generic.ae;
import com.avast.android.generic.util.al;
import com.avast.android.generic.z;

class s
  implements View.OnClickListener
{
  s(AccountSettingsFragment paramAccountSettingsFragment)
  {
  }

  public void onClick(View paramView)
  {
    if (!this.a.isAdded());
    while (true)
    {
      return;
      if (Build.VERSION.SDK_INT < 8)
        a.a(this.a.getActivity(), this.a.getString(z.cj));
      else if ((this.a.i().w() == null) || (this.a.i().w().equals("")))
      {
        if (al.b(this.a.getActivity()))
          AccountActivity.call(this.a.getActivity(), this.a.getArguments());
        else if ((this.a.getActivity().getIntent() != null) && (this.a.getActivity().getIntent().getExtras() != null))
          AccountActivity.call(this.a.getActivity(), this.a.getActivity().getIntent().getExtras());
        else
          AccountActivity.call(this.a.getActivity(), null);
      }
      else
        this.a.h();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.account.s
 * JD-Core Version:    0.6.2
 */