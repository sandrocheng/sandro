package com.ijinshan.kinghelper.common;

import android.text.TextUtils;
import android.widget.ListView;
import android.widget.TextView;
import com.ijinshan.kinghelper.firewall.core.u;

final class s
  implements u
{
  s(r paramr)
  {
  }

  public final void a(String paramString1, String paramString2)
  {
    TextView localTextView = (TextView)PickListActivity.g(this.a.a).findViewWithTag(paramString2);
    if ((!TextUtils.isEmpty(paramString1)) && (localTextView != null))
      localTextView.setText(paramString1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.common.s
 * JD-Core Version:    0.6.2
 */