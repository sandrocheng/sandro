import com.tencent.qqpimsecure.view.securespace.SecureSmsDialogueView;
import java.util.List;

public final class bjn extends Thread
{
  public bjn(SecureSmsDialogueView paramSecureSmsDialogueView)
  {
  }

  public final void run()
  {
    List localList = SecureSmsDialogueView.b(this.a).a(SecureSmsDialogueView.a(this.a));
    if ((localList != null) && (localList.size() > 0))
    {
      mk localmk = (mk)localList.get(-1 + localList.size());
      if (localmk.id == SecureSmsDialogueView.f(this.a))
        localmk.h = SecureSmsDialogueView.g(this.a);
    }
    SecureSmsDialogueView.b(this.a, localList);
    SecureSmsDialogueView.c(this.a, localList);
    SecureSmsDialogueView.h(this.a).a(localList);
    SecureSmsDialogueView.h(this.a).notifyDataSetChanged();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bjn
 * JD-Core Version:    0.6.2
 */