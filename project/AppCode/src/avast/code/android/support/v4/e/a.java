package android.support.v4.e;

import android.content.Context;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.FilterQueryProvider;
import android.widget.Filterable;

public abstract class a extends BaseAdapter
  implements f, Filterable
{

  @Deprecated
  public static final int FLAG_AUTO_REQUERY = 1;
  public static final int FLAG_REGISTER_CONTENT_OBSERVER = 2;
  protected boolean mAutoRequery;
  protected c mChangeObserver;
  protected Context mContext;
  protected Cursor mCursor;
  protected e mCursorFilter;
  protected DataSetObserver mDataSetObserver;
  protected boolean mDataValid;
  protected FilterQueryProvider mFilterQueryProvider;
  protected int mRowIDColumn;

  @Deprecated
  public a(Context paramContext, Cursor paramCursor)
  {
    init(paramContext, paramCursor, 1);
  }

  public a(Context paramContext, Cursor paramCursor, int paramInt)
  {
    init(paramContext, paramCursor, paramInt);
  }

  public a(Context paramContext, Cursor paramCursor, boolean paramBoolean)
  {
    if (paramBoolean);
    for (int i = 1; ; i = 2)
    {
      init(paramContext, paramCursor, i);
      return;
    }
  }

  public abstract void bindView(View paramView, Context paramContext, Cursor paramCursor);

  public void changeCursor(Cursor paramCursor)
  {
    Cursor localCursor = swapCursor(paramCursor);
    if (localCursor != null)
      localCursor.close();
  }

  public CharSequence convertToString(Cursor paramCursor)
  {
    if (paramCursor == null);
    for (String str = ""; ; str = paramCursor.toString())
      return str;
  }

  public int getCount()
  {
    if ((this.mDataValid) && (this.mCursor != null));
    for (int i = this.mCursor.getCount(); ; i = 0)
      return i;
  }

  public Cursor getCursor()
  {
    return this.mCursor;
  }

  public View getDropDownView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (this.mDataValid)
    {
      this.mCursor.moveToPosition(paramInt);
      if (paramView == null)
        paramView = newDropDownView(this.mContext, this.mCursor, paramViewGroup);
      bindView(paramView, this.mContext, this.mCursor);
    }
    while (true)
    {
      return paramView;
      paramView = null;
    }
  }

  public Filter getFilter()
  {
    if (this.mCursorFilter == null)
      this.mCursorFilter = new e(this);
    return this.mCursorFilter;
  }

  public FilterQueryProvider getFilterQueryProvider()
  {
    return this.mFilterQueryProvider;
  }

  public Object getItem(int paramInt)
  {
    if ((this.mDataValid) && (this.mCursor != null))
      this.mCursor.moveToPosition(paramInt);
    for (Cursor localCursor = this.mCursor; ; localCursor = null)
      return localCursor;
  }

  public long getItemId(int paramInt)
  {
    long l = 0L;
    if ((this.mDataValid) && (this.mCursor != null) && (this.mCursor.moveToPosition(paramInt)))
      l = this.mCursor.getLong(this.mRowIDColumn);
    return l;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (!this.mDataValid)
      throw new IllegalStateException("this should only be called when the cursor is valid");
    if (!this.mCursor.moveToPosition(paramInt))
      throw new IllegalStateException("couldn't move cursor to position " + paramInt);
    if (paramView == null)
      paramView = newView(this.mContext, this.mCursor, paramViewGroup);
    bindView(paramView, this.mContext, this.mCursor);
    return paramView;
  }

  public boolean hasStableIds()
  {
    return true;
  }

  void init(Context paramContext, Cursor paramCursor, int paramInt)
  {
    int i = 1;
    label25: int j;
    if ((paramInt & 0x1) == i)
    {
      paramInt |= 2;
      this.mAutoRequery = i;
      if (paramCursor == null)
        break label142;
      this.mCursor = paramCursor;
      this.mDataValid = i;
      this.mContext = paramContext;
      if (i == 0)
        break label148;
      j = paramCursor.getColumnIndexOrThrow("_id");
      label56: this.mRowIDColumn = j;
      if ((paramInt & 0x2) != 2)
        break label154;
      this.mChangeObserver = new c(this);
    }
    for (this.mDataSetObserver = new d(this, null); ; this.mDataSetObserver = null)
    {
      if (i != 0)
      {
        if (this.mChangeObserver != null)
          paramCursor.registerContentObserver(this.mChangeObserver);
        if (this.mDataSetObserver != null)
          paramCursor.registerDataSetObserver(this.mDataSetObserver);
      }
      return;
      this.mAutoRequery = false;
      break;
      label142: i = 0;
      break label25;
      label148: j = -1;
      break label56;
      label154: this.mChangeObserver = null;
    }
  }

  @Deprecated
  protected void init(Context paramContext, Cursor paramCursor, boolean paramBoolean)
  {
    if (paramBoolean);
    for (int i = 1; ; i = 2)
    {
      init(paramContext, paramCursor, i);
      return;
    }
  }

  public View newDropDownView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    return newView(paramContext, paramCursor, paramViewGroup);
  }

  public abstract View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup);

  protected void onContentChanged()
  {
    if ((this.mAutoRequery) && (this.mCursor != null) && (!this.mCursor.isClosed()))
      this.mDataValid = this.mCursor.requery();
  }

  public Cursor runQueryOnBackgroundThread(CharSequence paramCharSequence)
  {
    if (this.mFilterQueryProvider != null);
    for (Cursor localCursor = this.mFilterQueryProvider.runQuery(paramCharSequence); ; localCursor = this.mCursor)
      return localCursor;
  }

  public void setFilterQueryProvider(FilterQueryProvider paramFilterQueryProvider)
  {
    this.mFilterQueryProvider = paramFilterQueryProvider;
  }

  public Cursor swapCursor(Cursor paramCursor)
  {
    Cursor localCursor;
    if (paramCursor == this.mCursor)
      localCursor = null;
    while (true)
    {
      return localCursor;
      localCursor = this.mCursor;
      if (localCursor != null)
      {
        if (this.mChangeObserver != null)
          localCursor.unregisterContentObserver(this.mChangeObserver);
        if (this.mDataSetObserver != null)
          localCursor.unregisterDataSetObserver(this.mDataSetObserver);
      }
      this.mCursor = paramCursor;
      if (paramCursor != null)
      {
        if (this.mChangeObserver != null)
          paramCursor.registerContentObserver(this.mChangeObserver);
        if (this.mDataSetObserver != null)
          paramCursor.registerDataSetObserver(this.mDataSetObserver);
        this.mRowIDColumn = paramCursor.getColumnIndexOrThrow("_id");
        this.mDataValid = true;
        notifyDataSetChanged();
      }
      else
      {
        this.mRowIDColumn = -1;
        this.mDataValid = false;
        notifyDataSetInvalidated();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.e.a
 * JD-Core Version:    0.6.2
 */