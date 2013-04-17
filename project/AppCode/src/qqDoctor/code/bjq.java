import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;

final class bjq
  implements View.OnClickListener
{
  bjq(CheckBox paramCheckBox1, CheckBox paramCheckBox2, CheckBox paramCheckBox3)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.setChecked(false);
    this.b.setChecked(true);
    this.c.setChecked(false);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bjq
 * JD-Core Version:    0.6.2
 */