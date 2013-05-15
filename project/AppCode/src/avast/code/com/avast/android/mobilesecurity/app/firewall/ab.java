package com.avast.android.mobilesecurity.app.firewall;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.support.v4.e.a;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.avast.android.generic.util.m;

class ab extends a
{
  int a;
  int b;
  int c;
  PackageManager d;

  public ab(Context paramContext, Cursor paramCursor)
  {
    super(paramContext, paramCursor, false);
    this.d = paramContext.getPackageManager();
    a(paramCursor);
  }

  private void a(Cursor paramCursor)
  {
    this.a = paramCursor.getColumnIndex("_id");
    this.b = paramCursor.getColumnIndex("name");
    this.c = paramCursor.getColumnIndex("last_targets");
  }

  public void bindView(View paramView, Context paramContext, Cursor paramCursor)
  {
    ac localac = (ac)paramView.getTag();
    localac.a.setText(paramCursor.getString(this.b));
    localac.c.setText(paramCursor.getString(this.c));
    String[] arrayOfString = this.d.getPackagesForUid(paramCursor.getInt(this.a));
    if ((arrayOfString == null) || (arrayOfString.length > 1))
      localac.b.setImageResource(2130837772);
    while (true)
    {
      return;
      try
      {
        Drawable localDrawable = paramContext.getPackageManager().getApplicationIcon(paramContext.getPackageManager().getApplicationInfo(arrayOfString[0], 128));
        localac.b.setImageDrawable(localDrawable);
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        m.c("breadcrumbs", "Can't load application icon.", localNameNotFoundException);
      }
    }
  }

  public void changeCursor(Cursor paramCursor)
  {
    super.changeCursor(paramCursor);
    if (paramCursor != null)
      a(paramCursor);
  }

  public boolean isEnabled(int paramInt)
  {
    return false;
  }

  public View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    View localView = LayoutInflater.from(paramContext).inflate(2130903173, paramViewGroup, false);
    ac localac = new ac(this);
    localac.a = ((TextView)localView.findViewById(2131165207));
    localac.b = ((ImageView)localView.findViewById(2131165273));
    localac.c = ((TextView)localView.findViewById(2131165606));
    localView.setTag(localac);
    return localView;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.firewall.ab
 * JD-Core Version:    0.6.2
 */