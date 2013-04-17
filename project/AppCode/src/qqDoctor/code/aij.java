import android.widget.ImageView;
import android.widget.ListView;

final class aij
  implements abu.a
{
  aij(aii paramaii)
  {
  }

  public final void onTaskFinish(mp parammp)
  {
    lv locallv = (lv)parammp;
    ImageView localImageView = (ImageView)aii.a(this.a).findViewWithTag(locallv.d);
    if ((localImageView != null) && (locallv.f != null))
    {
      localImageView.setImageDrawable(locallv.f);
      mb.a locala = (mb.a)((kw)locallv.h).A();
      if (locala != null)
        aii.a(this.a, locala.i.a, locallv.f);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aij
 * JD-Core Version:    0.6.2
 */