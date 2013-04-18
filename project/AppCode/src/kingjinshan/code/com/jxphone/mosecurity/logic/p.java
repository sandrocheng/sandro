package com.jxphone.mosecurity.logic;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.ijinshan.kinghelper.common.PickListActivity;
import java.util.ArrayList;

final class p
  implements DialogInterface.OnClickListener
{
  p(PhoneCallWarningDialog paramPhoneCallWarningDialog, String paramString)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(this.a);
    PickListActivity.a(this.b, localArrayList, 2, 1, "_PickListActivity1_black_action");
    this.b.finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.logic.p
 * JD-Core Version:    0.6.2
 */