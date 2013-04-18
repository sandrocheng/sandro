package com.ijinshan.kinghelper.firewall;

import android.a.t;
import android.content.ContentResolver;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import java.util.List;

final class dt
  implements DialogInterface.OnClickListener
{
  dt(ServicesSmsDetailActivity paramServicesSmsDetailActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ej localej = (ej)((ei)ServicesSmsDetailActivity.d(this.a).a.get(ServicesSmsDetailActivity.c(this.a))).a.get(ServicesSmsDetailActivity.b(this.a));
    ServicesSmsListActivity.SMSContent localSMSContent = (ServicesSmsListActivity.SMSContent)localej.a.get(ServicesSmsDetailActivity.e(this.a));
    String[] arrayOfString = new String[1];
    arrayOfString[0] = Integer.toString(localSMSContent.c);
    try
    {
      this.a.getContentResolver().delete(t.a, "_id = ? and type = 1", arrayOfString);
      label101: localej.a.remove(ServicesSmsDetailActivity.e(this.a));
      if (localej.a.size() == 0)
      {
        ((ei)ServicesSmsDetailActivity.d(this.a).a.get(ServicesSmsDetailActivity.c(this.a))).a.remove(ServicesSmsDetailActivity.b(this.a));
        this.a.setResult(1);
        this.a.finish();
      }
      while (true)
      {
        return;
        ServicesSmsDetailActivity.f(this.a).notifyDataSetChanged();
        ServicesSmsDetailActivity.g(this.a);
      }
    }
    catch (Exception localException)
    {
      break label101;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.dt
 * JD-Core Version:    0.6.2
 */