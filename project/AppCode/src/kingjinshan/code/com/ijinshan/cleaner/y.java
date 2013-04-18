package com.ijinshan.cleaner;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.widget.Toast;
import com.hoi.widget.o;

final class y extends Handler
{
  y(HistoryCleanerActivity paramHistoryCleanerActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 6:
    case 7:
    case 8:
    }
    while (true)
    {
      return;
      HistoryCleanerActivity.d(this.a);
      continue;
      int i = paramMessage.arg1;
      if ((HistoryCleanerActivity.e(this.a) != null) && (HistoryCleanerActivity.e(this.a).isShowing()))
      {
        o localo = HistoryCleanerActivity.e(this.a);
        StringBuilder localStringBuilder = new StringBuilder().append(this.a.getString(2131427968)).append(":");
        localo.a(HistoryCleanerActivity.b(i));
        HistoryCleanerActivity.e(this.a).a(1 + HistoryCleanerActivity.e(this.a).a());
        continue;
        Toast.makeText(this.a, "清理完成！", 0).show();
        if (HistoryCleanerActivity.e(this.a) != null)
        {
          if (HistoryCleanerActivity.e(this.a).isShowing())
            HistoryCleanerActivity.e(this.a).dismiss();
          HistoryCleanerActivity.f(this.a);
        }
        Looper.loop();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.cleaner.y
 * JD-Core Version:    0.6.2
 */