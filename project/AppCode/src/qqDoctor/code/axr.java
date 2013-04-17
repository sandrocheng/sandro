import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.LinearLayout;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;

final class axr
  implements AbsListView.OnScrollListener
{
  axr(axj paramaxj)
  {
  }

  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramInt1 == 1) || (paramInt1 == 0))
      axj.j(this.a).setVisibility(4);
    while (true)
    {
      axj.l(this.a).onScroll(paramAbsListView, paramInt1, paramInt2, paramInt3);
      return;
      if (paramInt1 > 1)
        axj.k(this.a).setVisibility(0);
    }
  }

  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     axr
 * JD-Core Version:    0.6.2
 */