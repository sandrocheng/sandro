package org.antivirus.ui.protection;

import android.os.Environment;
import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ListView;
import java.io.File;
import org.antivirus.core.Logger;

final class g
  implements AdapterView.OnItemSelectedListener
{
  g(FileScannerActivity paramFileScannerActivity)
  {
  }

  public final void onItemSelected(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    String str = "";
    switch ((int)paramLong)
    {
    default:
      Logger.errorBadAgrument();
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      if (!TextUtils.isEmpty(str));
      try
      {
        this.a.getListView().scrollTo(0, 0);
        FileScannerActivity.a(this.a).a(str);
        FileScannerActivity.a(this.a, str);
        return;
        str = Environment.getExternalStorageDirectory().toString();
        continue;
        str = "/";
        continue;
        str = FileScannerActivity.e();
        continue;
        str = "/Music";
        continue;
        str = "/Video";
      }
      catch (Exception localException)
      {
        while (true)
          Logger.log(localException);
      }
    }
  }

  public final void onNothingSelected(AdapterView paramAdapterView)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.protection.g
 * JD-Core Version:    0.6.2
 */