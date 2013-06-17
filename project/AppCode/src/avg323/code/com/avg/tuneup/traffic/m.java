package com.avg.tuneup.traffic;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;
import android.widget.Spinner;

class m
  implements DialogInterface.OnClickListener
{
  m(a parama, EditText paramEditText, Spinner paramSpinner)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.d(this.c, -1);
    try
    {
      a.d(this.c, Integer.parseInt(this.a.getText().toString()));
      a.e(this.c, this.b.getSelectedItemPosition());
      a.a(this.c).notifyDataSetChanged();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.traffic.m
 * JD-Core Version:    0.6.2
 */