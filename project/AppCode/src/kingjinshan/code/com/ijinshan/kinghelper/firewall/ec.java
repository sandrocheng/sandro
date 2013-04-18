package com.ijinshan.kinghelper.firewall;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.widget.CheckBox;

final class ec
  implements DialogInterface.OnClickListener
{
  ec(ServicesSmsListActivity paramServicesSmsListActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    CheckBox localCheckBox = (CheckBox)ServicesSmsListActivity.f(this.a).findViewById(2131230994);
    ServicesSmsListActivity.a(this.a, localCheckBox.isChecked());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.ec
 * JD-Core Version:    0.6.2
 */