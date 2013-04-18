package com.ijinshan.kinghelper.common;

import android.os.Handler;
import android.os.Message;

final class h extends Handler
{
  h(PickListActivity paramPickListActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    if (paramMessage.what == 0)
      PickListActivity.a(this.a).notifyDataSetChanged();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.common.h
 * JD-Core Version:    0.6.2
 */