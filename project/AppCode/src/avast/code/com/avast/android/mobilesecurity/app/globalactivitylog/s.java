package com.avast.android.mobilesecurity.app.globalactivitylog;

import android.content.DialogInterface;
import android.content.DialogInterface.OnMultiChoiceClickListener;
import android.content.Intent;
import android.support.v4.a.p;

class s
  implements DialogInterface.OnMultiChoiceClickListener
{
  s(GlobalActivityLogFragment.SelectorDialog paramSelectorDialog)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt, boolean paramBoolean)
  {
    GlobalActivityLogFragment.SelectorDialog.a(this.a)[paramInt] = paramBoolean;
    Intent localIntent = new Intent("com.avast.android.mobilesecurity.app.globalactivitylog.ACTION_FILTER_SELECTED");
    localIntent.putExtra("position", paramInt);
    localIntent.putExtra("value", paramBoolean);
    p.a(this.a.getActivity()).a(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.globalactivitylog.s
 * JD-Core Version:    0.6.2
 */