import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import java.io.File;

final class bmb
  implements View.OnClickListener
{
  bmb(bly parambly, File paramFile, kv paramkv, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    if ((this.a.exists()) && (this.a.delete()))
    {
      this.d.l(this.b);
      ha.b(bly.b(this.d), 2131428340);
    }
    this.c.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bmb
 * JD-Core Version:    0.6.2
 */