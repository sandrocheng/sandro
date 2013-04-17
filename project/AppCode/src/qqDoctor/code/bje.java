import com.tencent.qqpimsecure.uilib.service.IRetryListener;
import com.tencent.qqpimsecure.view.securespace.SecureSmsDialogueView;
import java.util.ArrayList;

final class bje
  implements IRetryListener
{
  bje(bjd parambjd, mk parammk, int paramInt1, int paramInt2)
  {
  }

  public final void onCancel()
  {
  }

  public final void onRetry()
  {
    this.a.l = true;
    SecureSmsDialogueView.h(this.d.a).a().set(this.b, this.a);
    SecureSmsDialogueView.h(this.d.a).notifyDataSetChanged();
    SecureSmsDialogueView.d(this.d.a).a(new ml(this.a, this.c));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bje
 * JD-Core Version:    0.6.2
 */