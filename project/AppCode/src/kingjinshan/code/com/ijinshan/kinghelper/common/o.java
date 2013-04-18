package com.ijinshan.kinghelper.common;

import android.widget.ListView;
import java.util.HashMap;

final class o
  implements c
{
  private o(PickListActivity paramPickListActivity, byte paramByte)
  {
  }

  public final void a(String paramString)
  {
    if (PickListActivity.i(this.a).get(paramString) != null)
    {
      int i = ((Integer)PickListActivity.i(this.a).get(paramString)).intValue();
      PickListActivity.g(this.a).setSelection(i);
      PickListActivity.a(this.a, i);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.common.o
 * JD-Core Version:    0.6.2
 */