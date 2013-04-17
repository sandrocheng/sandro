import android.database.ContentObserver;
import android.os.Handler;
import com.tencent.tmsecure.module.antitheft.AntitheftManager;
import com.tencent.tmsecure.module.aresengine.SmsEntity;

final class yd extends ContentObserver
{
  yd(yb paramyb, Handler paramHandler)
  {
    super(paramHandler);
  }

  public final void onChange(boolean paramBoolean)
  {
    super.onChange(paramBoolean);
    SmsEntity localSmsEntity;
    if (!paramBoolean)
    {
      localSmsEntity = yb.c(this.a).a(15, 1);
      if (localSmsEntity != null)
        break label28;
    }
    while (true)
    {
      return;
      label28: if (yb.b(this.a).handleSmsCommand(yb.a(this.a), localSmsEntity.phonenum, localSmsEntity.body))
        yb.c(this.a).remove(localSmsEntity);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     yd
 * JD-Core Version:    0.6.2
 */