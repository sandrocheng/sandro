package com.actionbarsherlock.widget;

import android.app.SearchableInfo;
import android.support.v4.view.n;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;

class SearchView$8
  implements View.OnKeyListener
{
  SearchView$8(SearchView paramSearchView)
  {
  }

  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    SearchableInfo localSearchableInfo = SearchView.access$1500(this.this$0);
    boolean bool1 = false;
    if (localSearchableInfo == null);
    while (true)
    {
      return bool1;
      if ((SearchView.access$1300(this.this$0).isPopupShowing()) && (SearchView.access$1300(this.this$0).getListSelection() != -1))
      {
        bool1 = SearchView.access$1600(this.this$0, paramView, paramInt, paramKeyEvent);
      }
      else
      {
        boolean bool2 = SearchView.SearchAutoComplete.access$1700(SearchView.access$1300(this.this$0));
        bool1 = false;
        if (!bool2)
        {
          boolean bool3 = n.a(paramKeyEvent);
          bool1 = false;
          if (bool3)
            if ((paramKeyEvent.getAction() == 1) && (paramInt == 66))
            {
              paramView.cancelLongPress();
              SearchView.access$1800(this.this$0, 0, null, SearchView.access$1300(this.this$0).getText().toString());
              bool1 = true;
            }
            else
            {
              int i = paramKeyEvent.getAction();
              bool1 = false;
              if (i == 0)
                bool1 = false;
            }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.widget.SearchView.8
 * JD-Core Version:    0.6.2
 */