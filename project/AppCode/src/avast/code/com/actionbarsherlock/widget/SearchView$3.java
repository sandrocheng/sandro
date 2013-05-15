package com.actionbarsherlock.widget;

import android.support.v4.e.a;

class SearchView$3
  implements Runnable
{
  SearchView$3(SearchView paramSearchView)
  {
  }

  public void run()
  {
    if ((SearchView.access$200(this.this$0) != null) && ((SearchView.access$200(this.this$0) instanceof SuggestionsAdapter)))
      SearchView.access$200(this.this$0).changeCursor(null);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.widget.SearchView.3
 * JD-Core Version:    0.6.2
 */