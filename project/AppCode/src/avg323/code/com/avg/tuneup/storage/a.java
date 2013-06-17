package com.avg.tuneup.storage;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class a
  implements DialogInterface.OnClickListener
{
  a(StorageActivity paramStorageActivity, int[] paramArrayOfInt)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.b.n.b(this.a[paramInt]);
    paramDialogInterface.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.storage.a
 * JD-Core Version:    0.6.2
 */