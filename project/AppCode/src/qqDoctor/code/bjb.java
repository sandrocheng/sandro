import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.view.securespace.SecureSmsDialogueView;
import java.util.ArrayList;

public final class bjb
  implements View.OnClickListener
{
  public bjb(SecureSmsDialogueView paramSecureSmsDialogueView)
  {
  }

  public final void onClick(View paramView)
  {
    int i = ((Integer)paramView.getTag()).intValue();
    mk localmk = (mk)SecureSmsDialogueView.h(this.a).a().get(i);
    localmk.l = true;
    SecureSmsDialogueView.h(this.a).notifyDataSetChanged();
    SecureSmsDialogueView.d(this.a).a(new ml(localmk, localmk.id));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bjb
 * JD-Core Version:    0.6.2
 */