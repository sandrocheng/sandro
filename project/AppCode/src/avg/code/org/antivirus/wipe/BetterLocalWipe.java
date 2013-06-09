package org.antivirus.wipe;

import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.ListView;
import org.antivirus.Strings;
import org.antivirus.ui.BaseToolListActivity;

public class BetterLocalWipe extends BaseToolListActivity
{
  c a;
  private final int b = 0;
  private final int c = 1;
  private final int f = 2;
  private final int g = 3;

  protected final void initHeader(String paramString)
  {
    super.initHeader(paramString);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903083);
    super.initHeader(Strings.getString(2131296409));
    this.a = new c(this, this);
    setListAdapter(this.a);
    getListView().setOnItemClickListener(new b(this));
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.wipe.BetterLocalWipe
 * JD-Core Version:    0.6.2
 */