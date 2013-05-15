package com.avast.android.mobilesecurity.app.home.antitheft.uninstaller;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.avast.android.generic.util.ga.TrackedFragment;
import com.avast.android.mobilesecurity.Application;

public class RootFinishedFragment extends TrackedFragment
{
  private Button a;

  public String a()
  {
    return "/ms/antiTheftUninstall/rootFinished";
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(2130903129, paramViewGroup, false);
    this.a = ((Button)localView.findViewById(2131165385));
    TextView localTextView1 = (TextView)localView.findViewById(2131165497);
    TextView localTextView2 = (TextView)localView.findViewById(2131165498);
    localTextView1.setText(getString(2131493862));
    if (Application.e())
      localTextView2.setText(getString(2131493863));
    while (true)
    {
      this.a.setOnClickListener(new a(this));
      return localView;
      localTextView2.setText(getString(2131493864));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.home.antitheft.uninstaller.RootFinishedFragment
 * JD-Core Version:    0.6.2
 */