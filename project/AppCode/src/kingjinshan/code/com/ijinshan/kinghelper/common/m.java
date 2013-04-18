package com.ijinshan.kinghelper.common;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import java.util.ArrayList;

final class m
  implements DialogInterface.OnClickListener
{
  m(PickListActivity paramPickListActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ArrayList localArrayList = PickListActivity.c(this.a);
    PickListActivity.a(this.a, localArrayList);
    PickListActivity.a(this.a).a();
    this.a.finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.common.m
 * JD-Core Version:    0.6.2
 */