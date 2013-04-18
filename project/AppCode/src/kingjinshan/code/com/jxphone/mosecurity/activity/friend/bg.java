package com.jxphone.mosecurity.activity.friend;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.jxphone.mosecurity.c.j;
import com.jxphone.mosecurity.logic.a.g;

final class bg
  implements DialogInterface.OnClickListener
{
  bg(bf parambf, int paramInt)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    j localj = (j)PeopleCallLogActivity.d(this.b.a).getAdapter().getItem(this.a);
    PeopleCallLogActivity.c(this.b.a).c(localj.a());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.bg
 * JD-Core Version:    0.6.2
 */