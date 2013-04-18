package com.ijinshan.kinghelper.firewall;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.hoi.widget.SpinnerButton;

final class ew
  implements DialogInterface.OnClickListener
{
  ew(UserBlackAddByAreasActivity paramUserBlackAddByAreasActivity, SpinnerButton paramSpinnerButton)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if ((UserBlackAddByAreasActivity.a(this.b)) && (UserBlackAddByAreasActivity.b(this.b)[paramInt].length > 1))
      this.b.a(paramInt, UserBlackAddByAreasActivity.c(this.b));
    if (UserBlackAddByAreasActivity.d(this.b) == 1)
    {
      UserBlackAddByAreasActivity.a(this.b, paramInt);
      UserBlackAddByAreasActivity.b(this.b, 0);
      UserBlackAddByAreasActivity.e(this.b);
      UserBlackAddByAreasActivity.a(this.b, UserBlackAddByAreasActivity.b(this.b)[UserBlackAddByAreasActivity.f(this.b)][0]);
      if ((UserBlackAddByAreasActivity.g(this.b) != 0) && (UserBlackAddByAreasActivity.g(this.b) != 1))
        break label152;
      this.a.a(UserBlackAddByAreasActivity.h(this.b));
    }
    while (true)
    {
      return;
      UserBlackAddByAreasActivity.b(this.b, paramInt + 1);
      break;
      label152: UserBlackAddByAreasActivity.b(this.b, UserBlackAddByAreasActivity.b(this.b)[UserBlackAddByAreasActivity.f(this.b)][UserBlackAddByAreasActivity.g(this.b)]);
      this.a.a(UserBlackAddByAreasActivity.h(this.b) + UserBlackAddByAreasActivity.i(this.b));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.ew
 * JD-Core Version:    0.6.2
 */