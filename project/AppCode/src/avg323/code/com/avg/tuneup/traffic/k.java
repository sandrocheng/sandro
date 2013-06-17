package com.avg.tuneup.traffic;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.CheckBox;
import android.widget.EditText;
import com.avg.tuneup.j;

class k
  implements DialogInterface.OnClickListener
{
  k(a parama, EditText paramEditText, CheckBox paramCheckBox)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str1 = this.a.getText().toString();
    try
    {
      a.c(this.c, Integer.parseInt(str1));
      a.a(this.c).notifyDataSetChanged();
      boolean bool = this.b.isChecked();
      if (bool != j.i())
      {
        j.c(bool);
        com.avg.ui.general.a.a locala = a.b(this.c);
        if (bool)
        {
          str2 = "on";
          com.avg.toolkit.c.a.a(locala, "data_usage_settings", "notify_about_data_usage", str2, 0);
        }
      }
      else
      {
        return;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        com.avg.toolkit.f.a.a(localException);
        continue;
        String str2 = "off";
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.traffic.k
 * JD-Core Version:    0.6.2
 */