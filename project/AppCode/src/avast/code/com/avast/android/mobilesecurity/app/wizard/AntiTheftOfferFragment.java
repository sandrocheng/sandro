package com.avast.android.mobilesecurity.app.wizard;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.avast.android.generic.app.wizard.WizardAccountActivity;
import com.avast.android.generic.util.ga.TrackedFragment;

public class AntiTheftOfferFragment extends TrackedFragment
{
  public String a()
  {
    return "/ms/wizard/antiTheft";
  }

  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    WizardAccountActivity.call(getActivity(), false);
    com.avast.android.generic.util.a.a(this);
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(2130903096, paramViewGroup, false);
    localView.findViewById(2131165385).setOnClickListener(new a(this));
    localView.findViewById(2131165380).setOnClickListener(new b(this));
    return localView;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.wizard.AntiTheftOfferFragment
 * JD-Core Version:    0.6.2
 */