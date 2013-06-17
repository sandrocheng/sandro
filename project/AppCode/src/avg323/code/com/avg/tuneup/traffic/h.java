package com.avg.tuneup.traffic;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;
import android.widget.Spinner;

class h
  implements DialogInterface.OnClickListener
{
  h(a parama, Spinner paramSpinner, EditText paramEditText)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.b(this.c, this.a.getSelectedItemPosition());
    a.a(this.c, -1.0F);
    try
    {
      a.a(this.c, Float.parseFloat(this.b.getText().toString()));
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
 * Qualified Name:     com.avg.tuneup.traffic.h
 * JD-Core Version:    0.6.2
 */