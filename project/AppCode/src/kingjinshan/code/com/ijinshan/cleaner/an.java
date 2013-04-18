package com.ijinshan.cleaner;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import java.util.List;

final class an
  implements DialogInterface.OnClickListener
{
  an(SDcardCleanerActivity paramSDcardCleanerActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (SDcardCleanerActivity.e(this.a) != null);
    synchronized (SDcardCleanerActivity.e(this.a))
    {
      SDcardCleanerActivity.e(this.a).notify();
      SDcardCleanerActivity.s(this.a);
      SDcardCleanerActivity.t(this.a);
      long l = this.a.g();
      SDcardCleanerActivity.j(this.a).setText("总扫描到 " + SDcardCleanerActivity.g(this.a).size() + " 项垃圾文件," + " 总大小" + l);
      SDcardCleanerActivity.h(this.a).setVisibility(4);
      if (l > 0L)
      {
        SDcardCleanerActivity.n(this.a).setText(this.a.getString(2131427961));
        this.a.d = aq.b;
      }
      if (l <= 0L)
      {
        SDcardCleanerActivity.n(this.a).setText(this.a.getString(2131427959));
        this.a.d = aq.c;
      }
      paramDialogInterface.dismiss();
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.cleaner.an
 * JD-Core Version:    0.6.2
 */