package com.antivirus.ui.callmessagefilter;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;

public class y
  implements CompoundButton.OnCheckedChangeListener
{
  private int a;
  protected CheckBox[] b;
  private int c;
  private int d;
  private String e;

  y(String paramString, int paramInt1, int paramInt2, int paramInt3, CheckBox[] paramArrayOfCheckBox)
  {
    this.c = paramInt1;
    this.d = paramInt3;
    this.a = paramInt2;
    this.b = paramArrayOfCheckBox;
    this.e = paramString;
  }

  private void c()
  {
    if (this.b.length == 0);
    while (true)
    {
      return;
      Context localContext = this.b[0].getContext();
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(localContext);
      View localView = LayoutInflater.from(localContext).inflate(2130903071, null);
      localBuilder.setIcon(this.a);
      localBuilder.setTitle(this.c);
      localBuilder.setView(localView);
      localBuilder.setMessage(this.d);
      localBuilder.setPositiveButton(2131296269, new z(this, (CheckBox)localView.findViewById(2131230904)));
      localBuilder.create().show();
    }
  }

  protected boolean a()
  {
    return false;
  }

  protected void b()
  {
  }

  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (paramBoolean)
      try
      {
        com.avg.toolkit.c.a.a(paramCompoundButton.getContext(), "call_message_blocker", this.e, null, 0);
        CheckBox[] arrayOfCheckBox = this.b;
        int i = arrayOfCheckBox.length;
        for (int j = 0; j < i; j++)
          arrayOfCheckBox[j].setChecked(false);
      }
      catch (Exception localException)
      {
        while (true)
          com.avg.toolkit.f.a.a("Couldn't send analytics - null context");
        if (a())
          c();
      }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.callmessagefilter.y
 * JD-Core Version:    0.6.2
 */