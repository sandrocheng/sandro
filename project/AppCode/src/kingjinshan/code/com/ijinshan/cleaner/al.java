package com.ijinshan.cleaner;

import android.os.Handler;
import android.os.Message;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.hoi.widget.o;
import com.ijinshan.cleaner.a.c;
import com.ijinshan.cleaner.adapter.f;
import com.jxphone.mosecurity.a.a;
import java.util.Iterator;
import java.util.List;

final class al extends Handler
{
  al(SDcardCleanerActivity paramSDcardCleanerActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    switch (paramMessage.what)
    {
    case 5:
    default:
    case 3:
    case 4:
    case 6:
    case 7:
    }
    while (true)
    {
      return;
      SDcardCleanerActivity.h(this.a).setProgress(SDcardCleanerActivity.h(this.a).getProgress() + SDcardCleanerActivity.i(this.a));
      SDcardCleanerActivity.j(this.a).setText(this.a.getString(2131427967) + (String)paramMessage.obj);
      continue;
      a.i(this.a, "mg_rub_sdcard_scan");
      SDcardCleanerActivity.h(this.a).setVisibility(4);
      SDcardCleanerActivity.h(this.a).setProgress(0);
      SDcardCleanerActivity.g(this.a).clear();
      SDcardCleanerActivity.k(this.a).notifyDataSetChanged();
      Iterator localIterator1 = SDcardCleanerActivity.l(this.a).iterator();
      while (localIterator1.hasNext())
      {
        c localc2 = (c)localIterator1.next();
        if (SDcardCleanerActivity.g(this.a).contains(localc2))
        {
          SDcardCleanerActivity.g(this.a).remove(localc2);
          Iterator localIterator2 = SDcardCleanerActivity.l(this.a).iterator();
          while (localIterator2.hasNext())
          {
            c localc3 = (c)localIterator2.next();
            if ((localc2.b().equals(localc3.b())) && (!localc2.d().equals(localc3.d())))
            {
              localc2.c(localc2.d() + "#" + localc3.d());
              localc2.a(localc2.e() + localc3.e());
            }
          }
        }
        SDcardCleanerActivity.g(this.a).add(localc2);
      }
      SDcardCleanerActivity.k(this.a).a();
      SDcardCleanerActivity.k(this.a).notifyDataSetChanged();
      SDcardCleanerActivity.m(this.a);
      long l = this.a.g();
      if (SDcardCleanerActivity.g(this.a).size() != 0)
      {
        String str2 = SDcardCleanerActivity.a(l);
        int i = SDcardCleanerActivity.g(this.a).size();
        SDcardCleanerActivity.j(this.a).setText("共扫描到 " + i + " 项SD卡数据," + " 总大小" + str2);
        for (int j = 0; j < i; j++)
        {
          c localc1 = (c)SDcardCleanerActivity.g(this.a).get(j);
          SDcardCleanerActivity.a(this.a).add(localc1);
        }
        SDcardCleanerActivity.n(this.a).setText(this.a.getString(2131427961));
        this.a.d = aq.b;
      }
      if (SDcardCleanerActivity.g(this.a).size() == 0)
      {
        this.a.a.setVisibility(8);
        this.a.b.setVisibility(0);
        TextView localTextView = SDcardCleanerActivity.o(this.a);
        SDcardCleanerActivity localSDcardCleanerActivity = this.a;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = this.a.getString(2131427955);
        localTextView.setText(localSDcardCleanerActivity.getString(2131427966, arrayOfObject));
        SDcardCleanerActivity.n(this.a).setText(this.a.getString(2131427959));
        this.a.d = aq.c;
        continue;
        String str1 = String.valueOf(paramMessage.obj);
        if (SDcardCleanerActivity.p(this.a) != null)
        {
          SDcardCleanerActivity.p(this.a).a(this.a.getString(2131427968) + ":" + str1);
          SDcardCleanerActivity.p(this.a).a(1 + SDcardCleanerActivity.p(this.a).a());
          continue;
          Toast.makeText(this.a, "清理完成！", 0).show();
          if (SDcardCleanerActivity.p(this.a) != null)
          {
            if (SDcardCleanerActivity.p(this.a).isShowing())
              SDcardCleanerActivity.p(this.a).dismiss();
            SDcardCleanerActivity.q(this.a);
          }
          SDcardCleanerActivity.r(this.a);
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.cleaner.al
 * JD-Core Version:    0.6.2
 */