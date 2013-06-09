package org.antivirus.applocker;

import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Toast;
import java.util.ArrayList;
import org.antivirus.Strings;

final class c
  implements AdapterView.OnItemClickListener
{
  c(AppLockerActivity paramAppLockerActivity)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    int i = 1;
    e locale1 = (e)AppLockerActivity.a(this.a).get((int)paramLong);
    String str = locale1.b.activityInfo.packageName;
    int j = 0;
    int k = 0;
    if (j < AppLockerActivity.a(this.a).size())
    {
      e locale3;
      if ((j != paramLong) && (((e)AppLockerActivity.a(this.a).get(j)).b.activityInfo.packageName.equals(str)))
      {
        locale3 = (e)AppLockerActivity.b(this.a).getItem(j);
        if (((e)AppLockerActivity.a(this.a).get(j)).d)
          break label155;
      }
      label155: for (int m = i; ; m = 0)
      {
        locale3.d = m;
        k = i;
        j++;
        break;
      }
    }
    if ((!locale1.d) && (k != 0) && (System.currentTimeMillis() - AppLockerActivity.c(this.a) > 5000L))
    {
      AppLockerActivity.a(this.a, System.currentTimeMillis());
      Toast.makeText(this.a, Strings.getString(2131296351), i).show();
    }
    AppLockerActivity.d(this.a);
    e locale2 = (e)AppLockerActivity.b(this.a).getItem((int)paramLong);
    if (!locale1.d);
    while (true)
    {
      locale2.d = i;
      AppLockerActivity.b(this.a).notifyDataSetChanged();
      return;
      i = 0;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.applocker.c
 * JD-Core Version:    0.6.2
 */