import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class vr
  implements View.OnClickListener
{
  vr(vq paramvq, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    hq localhq1 = vk.a(this.b.c, this.b.a);
    vk localvk = this.b.c;
    if (localhq1 == localvk.c);
    for (hq localhq2 = localvk.b; ; localhq2 = localvk.c)
    {
      lf locallf = localhq2.a(this.b.a.phonenum);
      if (locallf != null)
        localhq2.c(locallf);
      this.b.b.a();
      this.a.dismiss();
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     vr
 * JD-Core Version:    0.6.2
 */