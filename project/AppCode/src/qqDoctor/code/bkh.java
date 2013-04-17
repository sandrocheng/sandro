import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;

final class bkh
  implements View.OnClickListener
{
  bkh(CheckBox paramCheckBox1, CheckBox paramCheckBox2, CheckBox paramCheckBox3)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.setChecked(true);
    this.b.setChecked(false);
    this.c.setChecked(false);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bkh
 * JD-Core Version:    0.6.2
 */