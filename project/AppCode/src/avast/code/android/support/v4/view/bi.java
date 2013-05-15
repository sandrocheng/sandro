package android.support.v4.view;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

class bi extends a
{
  bi(ViewPager paramViewPager)
  {
  }

  public void a(View paramView, android.support.v4.view.a.a parama)
  {
    int i = 1;
    super.a(paramView, parama);
    parama.a(ViewPager.class.getName());
    if ((ViewPager.a(this.b) != null) && (ViewPager.a(this.b).getCount() > i));
    while (true)
    {
      parama.a(i);
      if ((ViewPager.a(this.b) != null) && (ViewPager.b(this.b) >= 0) && (ViewPager.b(this.b) < -1 + ViewPager.a(this.b).getCount()))
        parama.a(4096);
      if ((ViewPager.a(this.b) != null) && (ViewPager.b(this.b) > 0) && (ViewPager.b(this.b) < ViewPager.a(this.b).getCount()))
        parama.a(8192);
      return;
      int j = 0;
    }
  }

  public boolean a(View paramView, int paramInt, Bundle paramBundle)
  {
    boolean bool = true;
    if (super.a(paramView, paramInt, paramBundle));
    while (true)
    {
      return bool;
      switch (paramInt)
      {
      default:
        bool = false;
        break;
      case 4096:
        if ((ViewPager.a(this.b) != null) && (ViewPager.b(this.b) >= 0) && (ViewPager.b(this.b) < -1 + ViewPager.a(this.b).getCount()))
          this.b.a(1 + ViewPager.b(this.b));
        else
          bool = false;
        break;
      case 8192:
        if ((ViewPager.a(this.b) != null) && (ViewPager.b(this.b) > 0) && (ViewPager.b(this.b) < ViewPager.a(this.b).getCount()))
          this.b.a(-1 + ViewPager.b(this.b));
        else
          bool = false;
        break;
      }
    }
  }

  public void d(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.d(paramView, paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(ViewPager.class.getName());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.view.bi
 * JD-Core Version:    0.6.2
 */