package android.support.v4.widget;

import android.content.Context;
import android.view.View;
import android.widget.SearchView;
import android.widget.SearchView.OnQueryTextListener;

class SearchViewCompatHoneycomb
{
  public static Object newOnQueryTextListener(OnQueryTextListenerCompatBridge paramOnQueryTextListenerCompatBridge)
  {
    return new SearchView.OnQueryTextListener()
    {
      public boolean onQueryTextChange(String paramAnonymousString)
      {
        return this.val$listener.onQueryTextChange(paramAnonymousString);
      }

      public boolean onQueryTextSubmit(String paramAnonymousString)
      {
        return this.val$listener.onQueryTextSubmit(paramAnonymousString);
      }
    };
  }

  public static View newSearchView(Context paramContext)
  {
    return new SearchView(paramContext);
  }

  public static void setOnQueryTextListener(Object paramObject1, Object paramObject2)
  {
    ((SearchView)paramObject1).setOnQueryTextListener((SearchView.OnQueryTextListener)paramObject2);
  }

  static abstract interface OnQueryTextListenerCompatBridge
  {
    public abstract boolean onQueryTextChange(String paramString);

    public abstract boolean onQueryTextSubmit(String paramString);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     android.support.v4.widget.SearchViewCompatHoneycomb
 * JD-Core Version:    0.6.2
 */