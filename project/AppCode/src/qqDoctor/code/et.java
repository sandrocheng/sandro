import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.RadioButtonDialog;

public final class et
  implements AdapterView.OnItemClickListener
{
  public et(fb paramfb, RadioButtonDialog paramRadioButtonDialog)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    fb localfb = this.a;
    bnd.a(localfb.b, bnd.n(localfb.b).d, Integer.parseInt(localfb.a[paramInt]));
    this.b.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     et
 * JD-Core Version:    0.6.2
 */