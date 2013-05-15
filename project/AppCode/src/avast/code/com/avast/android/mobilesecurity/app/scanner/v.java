package com.avast.android.mobilesecurity.app.scanner;

import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.ui.widget.TimeButtonRow;
import com.avast.android.generic.ui.widget.WeekDaysRow;
import com.avast.android.generic.ui.widget.c;

class v
  implements c
{
  v(ScannerFragment paramScannerFragment)
  {
  }

  public void a(CheckBoxRow paramCheckBoxRow, boolean paramBoolean)
  {
    int i;
    String str;
    if ((ScannerFragment.c(this.a).c()) || (ScannerFragment.d(this.a).c()))
    {
      i = 1;
      if (i != 0)
      {
        ScannerFragment localScannerFragment = this.a;
        if (!paramBoolean)
          break label157;
        str = "enabled";
        label46: localScannerFragment.a("ms-Scanner", "automatic scan", str, 0L);
        if (paramBoolean)
        {
          if (ScannerFragment.c(this.a).c())
            this.a.a("ms-Scanner", "automatic scan type", "Apps", 0L);
          if (ScannerFragment.d(this.a).c())
            this.a.a("ms-Scanner", "automatic scan type", "SD Card", 0L);
        }
      }
      if ((i == 0) || (!paramBoolean))
        break label164;
    }
    label157: label164: for (boolean bool = true; ; bool = false)
    {
      ScannerFragment.e(this.a).setEnabled(bool);
      ScannerFragment.f(this.a).setEnabled(bool);
      return;
      i = 0;
      break;
      str = "disabled";
      break label46;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.scanner.v
 * JD-Core Version:    0.6.2
 */