package com.avast.android.generic.ui;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.avast.android.generic.util.ga.TrackedFragment;
import com.avast.android.generic.v;

public abstract class GeneralSettingsFragment extends TrackedFragment
{
  private int a;

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.a = getArguments().getInt("layoutId");
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(v.j, paramViewGroup, false);
    paramLayoutInflater.inflate(this.a, (ViewGroup)localView);
    return localView;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.GeneralSettingsFragment
 * JD-Core Version:    0.6.2
 */