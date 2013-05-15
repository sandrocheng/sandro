package com.avast.android.generic.ui.widget;

import android.app.TimePickerDialog;
import android.view.View;
import android.view.View.OnClickListener;

class ad
  implements View.OnClickListener
{
  ad(TimeButtonRow paramTimeButtonRow, boolean paramBoolean)
  {
  }

  public void onClick(View paramView)
  {
    ae localae = new ae(this);
    new TimePickerDialog(this.b.getContext(), localae, TimeButtonRow.a(this.b) / 60, TimeButtonRow.a(this.b) % 60, this.a).show();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.widget.ad
 * JD-Core Version:    0.6.2
 */