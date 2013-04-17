import android.widget.TextView;
import com.tencent.tmsecure.module.aresengine.ContactEntity;
import java.util.List;

final class anj
  implements Runnable
{
  anj(ani paramani, int paramInt)
  {
  }

  public final void run()
  {
    ContactEntity localContactEntity = (ContactEntity)ani.a(this.b).get(this.a);
    if ((localContactEntity.name != null) && (localContactEntity.name.length() > 0))
      ani.b(this.b).setText(localContactEntity.name.substring(0, 1));
    while (true)
    {
      return;
      ani.b(this.b).setText("");
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     anj
 * JD-Core Version:    0.6.2
 */