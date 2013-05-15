package com.avast.android.antitheft_setup_components.app.home;

import android.app.Activity;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.avast.android.antitheft_setup_components.d;
import com.avast.android.antitheft_setup_components.e;
import com.avast.android.antitheft_setup_components.g;
import com.avast.android.generic.ui.widget.EditTextRow;
import com.avast.android.generic.util.ga.TrackedFragment;
import java.util.regex.Pattern;

public class ChooseNameFragment extends TrackedFragment
{
  private Button a;
  private Button b;
  private Button c;
  private EditTextRow d;
  private Pattern e = Pattern.compile("[[a-z][A-Z][0-9][\\!\\-][ ]]*");
  private Activity f;

  public String a()
  {
    return "/ms/antiTheftSetup/chooseName";
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(e.d, paramViewGroup, false);
    this.a = ((Button)localView.findViewById(d.c));
    this.b = ((Button)localView.findViewById(d.n));
    this.c = ((Button)localView.findViewById(d.g));
    this.d = ((EditTextRow)localView.findViewById(d.l));
    this.d.c(getString(g.T));
    this.d.a(null);
    this.d.a(getString(g.V));
    this.f = getActivity();
    this.c.setOnClickListener(new a(this));
    this.a.setOnClickListener(new b(this));
    this.b.setOnClickListener(new c(this));
    return localView;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.antitheft_setup_components.app.home.ChooseNameFragment
 * JD-Core Version:    0.6.2
 */