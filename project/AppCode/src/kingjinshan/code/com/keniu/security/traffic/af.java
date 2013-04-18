package com.keniu.security.traffic;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

public final class af extends Dialog
  implements View.OnClickListener
{
  Context a;
  private Button b = null;
  private ag c;

  private af(Context paramContext)
  {
    super(paramContext);
    this.a = paramContext;
  }

  public af(Context paramContext, ag paramag)
  {
    super(paramContext, 2131361822);
    this.a = paramContext;
    this.c = paramag;
  }

  public final void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
    case 2131230907:
    }
    while (true)
    {
      return;
      dismiss();
      this.c.a();
      q.f();
    }
  }

  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903068);
    this.b = ((Button)findViewById(2131230907));
    this.b.setOnClickListener(this);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.af
 * JD-Core Version:    0.6.2
 */