import android.content.Context;
import android.content.res.Resources;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.qqpimsecure.view.privacy.LockPatternView;
import com.tencent.qqpimsecure.view.privacy.LockPatternView.b;
import com.tencent.qqpimsecure.view.privacy.LockPatternView.c;

final class bfv
  implements LockPatternView.c
{
  bfv(bft parambft)
  {
  }

  public final void a()
  {
    this.a.d.removeCallbacks(bft.a(this.a));
  }

  public final void b()
  {
    this.a.d.removeCallbacks(bft.a(this.a));
  }

  public final void c()
  {
    if (a.a(this.a.d.d()).equals(this.a.e))
    {
      this.a.b.setText(bft.b(this.a).getString(2131430129));
      this.a.d.a();
      this.a.d.a(new bfw(this));
    }
    while (true)
    {
      return;
      this.a.d.setDisplayMode(LockPatternView.b.c);
      bft.c(this.a);
      this.a.b.setTextColor(bft.d(this.a).getResources().getColor(2131296272));
      this.a.b.setText(bft.e(this.a).getString(2131430128));
      bft.f(this.a).setImageResource(2130837690);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bfv
 * JD-Core Version:    0.6.2
 */