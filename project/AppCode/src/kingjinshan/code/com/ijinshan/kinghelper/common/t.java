package com.ijinshan.kinghelper.common;

import android.content.AsyncQueryHandler;
import android.content.Context;
import android.database.Cursor;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.widget.ProgressBar;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import java.util.HashMap;

final class t extends AsyncQueryHandler
{
  protected final WeakReference a;

  public t(PickListActivity paramPickListActivity, Context paramContext)
  {
    super(paramContext.getContentResolver());
    this.a = new WeakReference((PickListActivity)paramContext);
  }

  protected final void onQueryComplete(int paramInt, Object paramObject, Cursor paramCursor)
  {
    PickListActivity localPickListActivity = (PickListActivity)this.a.get();
    String str1;
    if ((localPickListActivity != null) && (!localPickListActivity.isFinishing()))
      if ((paramCursor != null) && (paramCursor.getCount() > 0))
      {
        localPickListActivity.startManagingCursor(paramCursor);
        PickListActivity.l(this.b).setVisibility(8);
        PickListActivity.m(this.b).setVisibility(8);
        PickListActivity.a(this.b, new HashMap());
        if (paramCursor != null)
          PickListActivity.a(this.b, new String[paramCursor.getCount()]);
        if (("vnd.android.cursor.dir/contact".equals(PickListActivity.n(this.b))) && (paramCursor != null) && (paramCursor.moveToFirst()));
        while (Integer.parseInt(Build.VERSION.SDK) > 4)
        {
          str1 = "data1";
          label146: Integer.parseInt(Build.VERSION.SDK);
          Object localObject = paramCursor.getString(paramCursor.getColumnIndex(str1));
          String str2 = paramCursor.getString(paramCursor.getColumnIndex("display_name"));
          if (!TextUtils.isEmpty(str2))
            localObject = str2;
          String str3 = String.valueOf(paramCursor.getPosition());
          b localb = new b();
          String str4 = PickListActivity.a(localb.a((String)localObject));
          if (!PickListActivity.i(this.b).containsKey(str4))
            PickListActivity.i(this.b).put(str4, Integer.valueOf(Integer.parseInt(str3)));
          PickListActivity.o(this.b)[Integer.parseInt(str3)] = str4;
          if (!paramCursor.moveToNext())
          {
            PickListActivity.a(this.b, new r(this.b, this.b.getApplicationContext(), PickListActivity.n(this.b), paramCursor));
            this.b.setListAdapter(PickListActivity.a(this.b));
          }
        }
      }
    while (true)
    {
      return;
      this.b.a();
      break;
      str1 = "number";
      break label146;
      if (paramCursor != null)
        paramCursor.close();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.common.t
 * JD-Core Version:    0.6.2
 */