package android.support.v4.e;

import android.database.Cursor;
import android.widget.Filter;
import android.widget.Filter.FilterResults;

class e extends Filter
{
  f a;

  e(f paramf)
  {
    this.a = paramf;
  }

  public CharSequence convertResultToString(Object paramObject)
  {
    return this.a.convertToString((Cursor)paramObject);
  }

  protected Filter.FilterResults performFiltering(CharSequence paramCharSequence)
  {
    Cursor localCursor = this.a.runQueryOnBackgroundThread(paramCharSequence);
    Filter.FilterResults localFilterResults = new Filter.FilterResults();
    if (localCursor != null)
      localFilterResults.count = localCursor.getCount();
    for (localFilterResults.values = localCursor; ; localFilterResults.values = null)
    {
      return localFilterResults;
      localFilterResults.count = 0;
    }
  }

  protected void publishResults(CharSequence paramCharSequence, Filter.FilterResults paramFilterResults)
  {
    Cursor localCursor = this.a.getCursor();
    if ((paramFilterResults.values != null) && (paramFilterResults.values != localCursor))
      this.a.changeCursor((Cursor)paramFilterResults.values);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.e.e
 * JD-Core Version:    0.6.2
 */