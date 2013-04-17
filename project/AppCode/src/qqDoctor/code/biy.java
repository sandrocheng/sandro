import com.tencent.qqpimsecure.view.securespace.SecureSmsDialogueView;
import java.util.List;

final class biy
  implements Runnable
{
  biy(bix parambix)
  {
  }

  public final void run()
  {
    List localList = SecureSmsDialogueView.b(this.a.a).a(SecureSmsDialogueView.a(this.a.a));
    for (int i = 0; i < localList.size(); i++)
    {
      mk localmk = (mk)localList.get(i);
      if (localmk.a != 1)
      {
        localmk.a = 1;
        SecureSmsDialogueView.b(this.a.a).b(localmk.id);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     biy
 * JD-Core Version:    0.6.2
 */