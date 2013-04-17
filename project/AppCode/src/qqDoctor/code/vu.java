import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import java.util.List;

final class vu
  implements View.OnClickListener
{
  vu(vt paramvt, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    hq localhq = vk.a(this.b.b, this.b.a);
    lf locallf = localhq.a(this.b.a.phonenum);
    localhq.c(this.b.a);
    this.b.a.id = locallf.id;
    localhq.b(this.b.a);
    this.a.dismiss();
    this.b.b.h.add(this.b.a.phonenum);
    vk localvk = this.b.b;
    if (localvk.g != null)
      localvk.i.post(new wa(localvk));
    vk.a(this.b.b, this.b.a, true);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     vu
 * JD-Core Version:    0.6.2
 */