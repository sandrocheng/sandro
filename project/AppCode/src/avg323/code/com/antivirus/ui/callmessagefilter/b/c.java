package com.antivirus.ui.callmessagefilter.b;

import android.content.Context;
import android.view.View;
import android.widget.CheckBox;
import com.antivirus.ui.callmessagefilter.contacts.a;
import com.antivirus.ui.callmessagefilter.j;
import com.antivirus.ui.callmessagefilter.r;
import com.antivirus.ui.callmessagefilter.v;

public class c extends j
{
  public void a(Context paramContext, b paramb, a parama, v paramv)
  {
    super.a(paramContext, paramb, parama, paramv);
    this.i.findViewById(2131230848).setVisibility(8);
    this.i.findViewById(2131230847).setVisibility(0);
    this.c.setChecked(((d)paramb.d()).equals(d.d));
    CheckBox localCheckBox = this.c;
    if (!((d)paramb.d()).equals(d.d));
    for (boolean bool = true; ; bool = false)
    {
      localCheckBox.setEnabled(bool);
      this.c.setOnCheckedChangeListener(new r(this));
      return;
    }
  }

  protected void a(b paramb, v paramv, d paramd, com.antivirus.ui.callmessagefilter.a.d paramd1, String paramString)
  {
    if (paramd.equals(d.e))
      super.a(paramb, paramv, paramd, paramd1, paramString);
    while (true)
    {
      return;
      if (this.c.isChecked())
        paramv.a(d.d, paramb);
      else
        paramv.a(paramd, paramb);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.callmessagefilter.b.c
 * JD-Core Version:    0.6.2
 */