package com.ijinshan.kinghelper.firewall;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.text.TextUtils;
import android.widget.EditText;
import com.ijinshan.kinghelper.a.i;

final class cb
  implements DialogInterface.OnClickListener
{
  cb(IpDialNoUseNumberListActivity paramIpDialNoUseNumberListActivity, EditText paramEditText1, EditText paramEditText2)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str1 = this.a.getText().toString();
    String str2 = this.b.getText().toString();
    if (!TextUtils.isEmpty(str1))
    {
      IpDialNoUseNumberListActivity.a(i.a(str1), str2);
      IpDialNoUseNumberListActivity.a(this.c);
      IpDialNoUseNumberListActivity.b(this.c);
      IpDialNoUseNumberListActivity.c(this.c);
      IpDialNoUseNumberListActivity.d(this.c).notifyDataSetChanged();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.cb
 * JD-Core Version:    0.6.2
 */