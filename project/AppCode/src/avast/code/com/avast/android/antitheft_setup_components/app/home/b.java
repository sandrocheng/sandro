package com.avast.android.antitheft_setup_components.app.home;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.avast.android.antitheft_setup_components.g;
import com.avast.android.generic.Application;
import com.avast.android.generic.a;
import com.avast.android.generic.ui.widget.EditTextRow;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

class b
  implements View.OnClickListener
{
  b(ChooseNameFragment paramChooseNameFragment)
  {
  }

  public void onClick(View paramView)
  {
    this.a.a("ms-atSetup", "choose name", "continue", 0L);
    String str = ChooseNameFragment.a(this.a).d().toString().trim();
    if (str.length() > 4)
      if (ChooseNameFragment.b(this.a).matcher(str).matches())
      {
        Application.a(ChooseNameFragment.a(this.a).d().toString());
        this.a.startActivity(new Intent(this.a.getActivity(), DownloadWizardActivity.class));
      }
    while (true)
    {
      return;
      a.a(ChooseNameFragment.c(this.a), this.a.getString(g.N));
      continue;
      a.a(ChooseNameFragment.c(this.a), this.a.getString(g.z));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.antitheft_setup_components.app.home.b
 * JD-Core Version:    0.6.2
 */