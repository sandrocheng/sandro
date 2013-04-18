package com.ijinshan.cleaner;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.ijinshan.cleaner.a.c;
import com.keniu.security.util.aq;
import java.util.List;

final class au
  implements AdapterView.OnItemClickListener
{
  au(SDcardCleanerActivity paramSDcardCleanerActivity)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    c localc = (c)SDcardCleanerActivity.g(this.a).get(paramInt);
    String str1 = localc.b();
    if ((str1 != null) && (!"".equals(str1)))
    {
      String str2 = localc.d().replace("/mnt", "").replace("#", "\n  ");
      String str3 = "说明：" + localc.a() + "软件卸载后的残余文件\n" + "位置：\n  " + str2;
      new aq(this.a, (byte)0).a(2131427957).b(str3).b(this.a.getString(2131429171), null).d();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.cleaner.au
 * JD-Core Version:    0.6.2
 */