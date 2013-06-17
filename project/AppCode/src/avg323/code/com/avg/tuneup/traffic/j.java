package com.avg.tuneup.traffic;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;

class j
  implements CompoundButton.OnCheckedChangeListener
{
  j(a parama, EditText paramEditText)
  {
  }

  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    this.a.setEnabled(false);
    if (paramBoolean)
      this.a.setEnabled(true);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.traffic.j
 * JD-Core Version:    0.6.2
 */