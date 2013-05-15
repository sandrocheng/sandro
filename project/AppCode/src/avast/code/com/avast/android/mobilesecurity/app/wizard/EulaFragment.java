package com.avast.android.mobilesecurity.app.wizard;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.avast.android.generic.ad;
import com.avast.android.generic.app.wizard.WizardAccountActivity;
import com.avast.android.generic.util.z;
import com.avast.android.mobilesecurity.t;

public class EulaFragment extends com.avast.android.generic.app.wizard.EulaFragment
{
  public String a()
  {
    return "/ms/wizard/eula";
  }

  protected void c()
  {
    new c(this, getActivity().getApplicationContext()).execute(new Void[0]);
  }

  protected void d()
  {
    if (z.b(getActivity()) != null)
      if (!((t)ad.a(getActivity(), t.class)).u())
        WizardAccountActivity.call(getActivity(), false);
    while (true)
    {
      return;
      ScanWizardActivity.call(getActivity());
      continue;
      AntiTheftOfferActivity.call(getActivity());
    }
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
  }

  public void onResume()
  {
    super.onResume();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.wizard.EulaFragment
 * JD-Core Version:    0.6.2
 */