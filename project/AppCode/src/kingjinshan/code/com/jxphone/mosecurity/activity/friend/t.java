package com.jxphone.mosecurity.activity.friend;

import android.app.ProgressDialog;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.Toast;
import java.util.List;

final class t
  implements View.OnClickListener
{
  t(FriendCallLogActivity paramFriendCallLogActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (2131231513 == paramView.getId())
      FriendCallLogActivity.e(this.a);
    while (true)
    {
      return;
      if (2131231512 == paramView.getId())
      {
        int i = FriendCallLogActivity.b(this.a).getCount();
        for (int j = 0; j < i; j++)
          FriendCallLogActivity.b(this.a).a(j).a = true;
        FriendCallLogActivity.b(this.a).notifyDataSetChanged();
        FriendCallLogActivity.b(this.a).notifyDataSetInvalidated();
      }
      else if (2131231511 == paramView.getId())
      {
        CharSequence localCharSequence = ((Button)paramView).getText();
        List localList = FriendCallLogActivity.b(this.a).a();
        if (localList.size() <= 0)
        {
          Toast.makeText(this.a, 2131428628, 0).show();
        }
        else if (TextUtils.equals(localCharSequence, this.a.getString(2131428624)))
        {
          ProgressDialog localProgressDialog1 = new ProgressDialog(this.a);
          localProgressDialog1.setTitle(2131428624);
          localProgressDialog1.setMessage(this.a.getString(2131428624));
          localProgressDialog1.setProgressStyle(1);
          localProgressDialog1.setMax(localList.size());
          localProgressDialog1.setCancelable(false);
          localProgressDialog1.setOnDismissListener(new u(this));
          localProgressDialog1.show();
          new v(this, localList, localProgressDialog1).start();
        }
        else if (TextUtils.equals(localCharSequence, this.a.getString(2131428625)))
        {
          ProgressDialog localProgressDialog2 = new ProgressDialog(this.a);
          localProgressDialog2.setTitle(2131428625);
          localProgressDialog2.setMessage(this.a.getString(2131428625));
          localProgressDialog2.setProgressStyle(1);
          localProgressDialog2.setMax(localList.size());
          localProgressDialog2.setCancelable(false);
          localProgressDialog2.setOnDismissListener(new w(this));
          localProgressDialog2.show();
          new x(this, localList, localProgressDialog2).start();
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.t
 * JD-Core Version:    0.6.2
 */