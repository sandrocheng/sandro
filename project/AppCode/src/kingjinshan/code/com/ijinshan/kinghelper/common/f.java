package com.ijinshan.kinghelper.common;

import android.content.AsyncQueryHandler;
import android.content.Context;
import android.database.Cursor;
import android.widget.ProgressBar;
import android.widget.TextView;
import java.lang.ref.WeakReference;

final class f extends AsyncQueryHandler
{
  protected final WeakReference a;

  public f(NumberPickListActivity paramNumberPickListActivity, Context paramContext)
  {
    super(paramContext.getContentResolver());
    this.a = new WeakReference((NumberPickListActivity)paramContext);
  }

  protected final void onQueryComplete(int paramInt, Object paramObject, Cursor paramCursor)
  {
    NumberPickListActivity localNumberPickListActivity = (NumberPickListActivity)this.a.get();
    if ((localNumberPickListActivity != null) && (!localNumberPickListActivity.isFinishing()))
      if (paramCursor != null)
        if (paramCursor.getCount() > 0)
        {
          NumberPickListActivity.c(localNumberPickListActivity).a(paramCursor);
          NumberPickListActivity.d(this.b).setVisibility(8);
          NumberPickListActivity.c(localNumberPickListActivity).changeCursor(paramCursor);
          NumberPickListActivity.e(this.b).setVisibility(8);
          this.b.a();
        }
    while (true)
    {
      return;
      this.b.a();
      paramCursor.close();
      NumberPickListActivity.c(localNumberPickListActivity).a(null);
      break;
      this.b.a();
      break;
      if (paramCursor != null)
        paramCursor.close();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.common.f
 * JD-Core Version:    0.6.2
 */