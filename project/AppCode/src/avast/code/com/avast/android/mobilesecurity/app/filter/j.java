package com.avast.android.mobilesecurity.app.filter;

import android.os.Build.VERSION;
import android.widget.ToggleButton;
import com.avast.android.generic.util.al;
import com.avast.android.mobilesecurity.ui.widget.r;

class j
  implements r
{
  j(FilterGroupDetailFragment paramFilterGroupDetailFragment)
  {
  }

  public void a(ToggleButton paramToggleButton, boolean paramBoolean)
  {
    if ((al.b()) && (Build.VERSION.SDK_INT >= 9) && ("Call".equals(paramToggleButton.getTag())) && (paramBoolean))
    {
      LGWarningDialog.a(this.a.getActivity(), this.a.getFragmentManager());
      paramToggleButton.setEnabled(false);
      paramToggleButton.setChecked(false);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.j
 * JD-Core Version:    0.6.2
 */