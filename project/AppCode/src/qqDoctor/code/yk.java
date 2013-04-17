import com.tencent.qqpimsecure.uilib.ui.activity.BaseActivityGroup;
import java.util.ArrayList;

public final class yk
{
  String a = "PrivacyProtectSession";
  int b;
  boolean c;
  ArrayList<BaseActivityGroup> d = new ArrayList();

  final void a()
  {
    this.c = true;
    for (int i = 0; i < this.d.size(); i++)
      ((BaseActivityGroup)this.d.get(i)).finish();
    pc.b().a();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     yk
 * JD-Core Version:    0.6.2
 */