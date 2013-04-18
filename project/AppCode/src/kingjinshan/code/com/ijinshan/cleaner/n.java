package com.ijinshan.cleaner;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.provider.Browser;
import android.provider.SearchRecentSuggestions;
import android.text.ClipboardManager;

public final class n
{
  private Context a;

  public n(Context paramContext)
  {
    this.a = paramContext;
  }

  public final void a()
  {
    ((ClipboardManager)this.a.getSystemService("clipboard")).setText("");
  }

  public final boolean b()
  {
    boolean bool1;
    try
    {
      ClipboardManager localClipboardManager = (ClipboardManager)this.a.getSystemService("clipboard");
      if (localClipboardManager == null)
      {
        bool1 = false;
      }
      else
      {
        boolean bool2 = "".equals(String.valueOf(localClipboardManager.getText()));
        if (!bool2)
          bool1 = true;
        else
          bool1 = false;
      }
    }
    catch (Exception localException)
    {
      bool1 = false;
    }
    return bool1;
  }

  public final void c()
  {
    Browser.clearHistory(this.a.getContentResolver());
    Browser.clearSearches(this.a.getContentResolver());
  }

  public final boolean d()
  {
    try
    {
      boolean bool2 = Browser.canClearHistory(this.a.getContentResolver());
      bool1 = bool2;
      return bool1;
    }
    catch (Exception localException)
    {
      while (true)
        boolean bool1 = false;
    }
  }

  public final void e()
  {
    new SearchRecentSuggestions(this.a, "com.google.android.gmail.SuggestionProvider", 1).clearHistory();
  }

  public final void f()
  {
    new SearchRecentSuggestions(this.a, "com.google.android.maps.SearchHistoryProvider", 1).clearHistory();
    Uri localUri = Uri.parse("content://com.google.android.maps.SearchHistoryProvider/history");
    this.a.getContentResolver().delete(localUri, null, null);
  }

  public final void g()
  {
    new SearchRecentSuggestions(this.a, "com.android.vending.SuggestionsProvider", 1).clearHistory();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.cleaner.n
 * JD-Core Version:    0.6.2
 */