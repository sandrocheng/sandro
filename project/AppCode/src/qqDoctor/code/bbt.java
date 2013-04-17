import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;

final class bbt
  implements View.OnClickListener
{
  bbt(bbp parambbp)
  {
  }

  public final void onClick(View paramView)
  {
    bbp.d(this.a).sendEmptyMessage(0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bbt
 * JD-Core Version:    0.6.2
 */