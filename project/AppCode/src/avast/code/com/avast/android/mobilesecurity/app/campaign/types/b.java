package com.avast.android.mobilesecurity.app.campaign.types;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import com.avast.android.mobilesecurity.app.campaign.h;

class b
  implements View.OnClickListener
{
  b(SecureLinePopup paramSecureLinePopup, h paramh, CheckBox paramCheckBox, com.avast.android.mobilesecurity.app.campaign.b paramb)
  {
  }

  public void onClick(View paramView)
  {
    this.a.a();
    if (this.b.isChecked())
      this.c.a(this.d);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.campaign.types.b
 * JD-Core Version:    0.6.2
 */