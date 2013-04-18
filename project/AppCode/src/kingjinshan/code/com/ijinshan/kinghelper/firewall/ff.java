package com.ijinshan.kinghelper.firewall;

import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ResourceCursorAdapter;
import android.widget.TextView;
import com.ijinshan.kinghelper.a.j;
import com.ijinshan.kinghelper.firewall.a.g;
import com.jxphone.mosecurity.d.a;

final class ff extends ResourceCursorAdapter
  implements View.OnClickListener
{
  public ff(UserWhiteBlackListActivity paramUserWhiteBlackListActivity, Context paramContext, Cursor paramCursor)
  {
    super(paramContext, 2130903218, paramCursor, true);
  }

  public final void bindView(View paramView, Context paramContext, Cursor paramCursor)
  {
    fe localfe = (fe)paramView.getTag();
    g localg = g.a(paramCursor);
    int i;
    switch (localg.e)
    {
    case 2:
    case 3:
    case 4:
    default:
      if (localg.d == 2)
      {
        i = 2131427526;
        label73: if (UserWhiteBlackListActivity.b(this.a) != 2)
          break label436;
        localfe.c.setText(i);
      }
      break;
    case 1:
    case 5:
    case 6:
    }
    while (true)
    {
      return;
      if (TextUtils.isEmpty(localg.g))
      {
        localg.g = j.a(paramContext, localg.f);
        if (TextUtils.isEmpty(localg.g))
          localg.g = localg.f;
      }
      String str1 = this.a.getString(2131427718);
      a locala = a.a(paramContext);
      String str2 = a.c(localg.f, str1);
      String str3;
      if ((!TextUtils.equals(str2, str1)) && (TextUtils.isEmpty(localg.g)))
      {
        localfe.a.setText(str2);
        str3 = str2;
      }
      while (true)
      {
        localfe.b.setText(str3);
        localfe.c.setText("");
        break;
        str3 = locala.a(localg.f, str1);
        localfe.a.setText(localg.g);
      }
      TextView localTextView2 = localfe.a;
      UserWhiteBlackListActivity localUserWhiteBlackListActivity2 = this.a;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = localg.f;
      localTextView2.setText(localUserWhiteBlackListActivity2.getString(2131427735, arrayOfObject2));
      TextView localTextView3 = localfe.b;
      UserWhiteBlackListActivity localUserWhiteBlackListActivity3 = this.a;
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = localg.f;
      localTextView3.setText(localUserWhiteBlackListActivity3.getString(2131427736, arrayOfObject3));
      break;
      localg.g = localg.f;
      localfe.a.setText(localg.g);
      TextView localTextView1 = localfe.b;
      UserWhiteBlackListActivity localUserWhiteBlackListActivity1 = this.a;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = localg.f;
      localTextView1.setText(localUserWhiteBlackListActivity1.getString(2131427737, arrayOfObject1));
      break;
      if (localg.d == 3)
      {
        i = 2131427527;
        break label73;
      }
      i = 2131427525;
      break label73;
      label436: localfe.c.setText("");
    }
  }

  public final View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    View localView = super.newView(paramContext, paramCursor, paramViewGroup);
    fe localfe = new fe();
    localfe.a = ((TextView)localView.findViewById(2131231388));
    localfe.b = ((TextView)localView.findViewById(2131231390));
    localfe.c = ((TextView)localView.findViewById(2131231389));
    localView.setTag(localfe);
    return localView;
  }

  public final void onClick(View paramView)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.ff
 * JD-Core Version:    0.6.2
 */