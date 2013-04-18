package com.ijinshan.cleaner.adapter;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import com.ijinshan.cleaner.a.c;

final class h
  implements View.OnClickListener
{
  h(f paramf, c paramc, String paramString)
  {
  }

  public final void onClick(View paramView)
  {
    CheckBox localCheckBox = (CheckBox)paramView;
    if (localCheckBox.isChecked())
      if (this.a.e() > 10485760L)
        f.a(this.c, this.b, localCheckBox, this.a);
    while (true)
    {
      return;
      this.a.a(true);
      continue;
      this.a.a(false);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.cleaner.adapter.h
 * JD-Core Version:    0.6.2
 */