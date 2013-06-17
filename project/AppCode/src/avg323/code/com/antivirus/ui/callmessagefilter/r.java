package com.antivirus.ui.callmessagefilter;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import com.antivirus.c;
import com.antivirus.m;

public class r extends y
{
  public r(j paramj)
  {
    super("call_message_blocker_spam_message", -1, -1, -1, new CheckBox[0]);
  }

  private void a(boolean paramBoolean)
  {
    if (paramBoolean);
    for (int i = 1; ; i = 0)
    {
      c.b(i);
      return;
    }
  }

  private void c()
  {
    Context localContext = this.a.c.getContext();
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(localContext);
    View localView = LayoutInflater.from(localContext).inflate(2130903071, null);
    localBuilder.setIcon(2130837714);
    localBuilder.setTitle(2131296744);
    localBuilder.setView(localView);
    localBuilder.setMessage(m.a(localContext, 2131296762) + " " + m.a(localContext, 2131296760));
    CheckBox localCheckBox = (CheckBox)localView.findViewById(2131230904);
    localCheckBox.setText(2131296765);
    localBuilder.setPositiveButton(2131296672, new s(this, localCheckBox));
    localBuilder.setNegativeButton(2131296673, new t(this, localCheckBox));
    localBuilder.create().show();
  }

  protected boolean a()
  {
    if ((!this.a.b.isChecked()) && (c.t() < 0));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    int i = 1;
    if (paramBoolean)
    {
      this.a.a.setChecked(false);
      if (a())
        c();
    }
    else
    {
      return;
    }
    CheckBox localCheckBox;
    if (!this.a.b.isChecked())
    {
      localCheckBox = this.a.b;
      if (c.t() != i)
        break label67;
    }
    while (true)
    {
      localCheckBox.setChecked(i);
      break;
      break;
      label67: int j = 0;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.callmessagefilter.r
 * JD-Core Version:    0.6.2
 */