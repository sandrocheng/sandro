package com.jxphone.mosecurity.activity;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import com.keniu.security.importx.ImportfCalllogActivity;
import com.keniu.security.importx.ImportfContactActivity;
import com.keniu.security.importx.ImportfSmsActivity;

final class a
  implements DialogInterface.OnClickListener
{
  a(BaseContactActivity paramBaseContactActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("isDummy", this.a.i);
    localBundle.putSerializable("list_type", this.a.h);
    switch (paramInt)
    {
    default:
    case 0:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return;
      BaseActivity.a(this.a, ImportfContactActivity.class, localBundle);
      continue;
      BaseActivity.a(this.a, ImportfCalllogActivity.class, localBundle);
      continue;
      BaseActivity.a(this.a, ImportfSmsActivity.class, localBundle);
      continue;
      this.a.a(4, null, null);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.a
 * JD-Core Version:    0.6.2
 */