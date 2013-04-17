import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.RadioButtonDialog;

public final class gf
  implements AdapterView.OnItemClickListener
{
  public gf(ge paramge, String[] paramArrayOfString, kw paramkw, RadioButtonDialog paramRadioButtonDialog)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    int i = Integer.parseInt(this.a[paramInt]);
    new Thread(new gm(this.d, this.b, i)).start();
    if (this.d.b != null)
    {
      ge.a locala = this.d.b;
      kw localkw = this.b;
      locala.a.b(localkw);
    }
    this.c.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     gf
 * JD-Core Version:    0.6.2
 */