package com.keniu.security.util;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.CursorAdapter;

final class ak extends CursorAdapter
{
  private final int c;
  private final int d;

  ak(ai paramai, Context paramContext, Cursor paramCursor, MyAlertController.RecycleListView paramRecycleListView)
  {
    super(paramContext, paramCursor, false);
    Cursor localCursor = getCursor();
    this.c = localCursor.getColumnIndexOrThrow(this.b.I);
    this.d = localCursor.getColumnIndexOrThrow(this.b.J);
  }

  public final void bindView(View paramView, Context paramContext, Cursor paramCursor)
  {
    ((CheckedTextView)paramView.findViewById(16908308)).setText(paramCursor.getString(this.c));
    MyAlertController.RecycleListView localRecycleListView = this.a;
    int i = paramCursor.getPosition();
    if (paramCursor.getInt(this.d) == 1);
    for (boolean bool = true; ; bool = false)
    {
      localRecycleListView.setItemChecked(i, bool);
      return;
    }
  }

  public final View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    return this.b.b.inflate(2130903268, paramViewGroup, false);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.util.ak
 * JD-Core Version:    0.6.2
 */