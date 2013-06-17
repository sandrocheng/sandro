package com.antivirus.ui.protection;

import android.os.Environment;
import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ListView;
import java.io.File;

class h
  implements AdapterView.OnItemSelectedListener
{
  h(a parama)
  {
  }

  public void onItemSelected(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    String str = "";
    switch ((int)paramLong)
    {
    default:
      com.avg.toolkit.f.a.a();
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
        this.a.a().scrollTo(0, 0);
        a.b(this.a).a(str);
        a.a(this.a, str);
        return;
        str = Environment.getExternalStorageDirectory().toString();
        continue;
        str = "/";
        continue;
        str = a.d(this.a);
        continue;
        str = "/Music";
        continue;
        str = "/Video";
      }
      catch (Exception localException)
      {
        while (true)
          com.avg.toolkit.f.a.a(localException);
      }
    }
  }

  public void onNothingSelected(AdapterView paramAdapterView)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.protection.h
 * JD-Core Version:    0.6.2
 */