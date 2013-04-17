import android.os.Handler;
import android.os.Message;
import com.tencent.tmsecure.common.TMSService;
import java.io.File;
import java.util.List;

final class bn extends Handler
{
  bn(bl parambl)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    case 4:
    default:
    case 1:
    case 2:
    case 3:
    case 5:
    case 6:
    case 7:
    }
    while (true)
    {
      return;
      bl.c(this.a).a((bd)paramMessage.obj);
      continue;
      bd localbd3 = (bd)paramMessage.obj;
      if (localbd3.i > 0.0F)
      {
        bl.c(this.a).a(localbd3);
        continue;
        bd localbd2 = (bd)paramMessage.obj;
        bl.c(this.a).e();
        File localFile = bl.a(localbd2);
        if ((localFile != null) && (localFile.exists()))
          bl.d(this.a).a(bl.a(localbd2));
        if (bl.a())
        {
          TMSService.stopService(bl.class);
          continue;
          bd localbd1 = (bd)paramMessage.obj;
          bl.c(this.a).b(localbd1);
          continue;
          bl.c(this.a).e();
          continue;
          List localList = (List)paramMessage.obj;
          for (int i = 0; i < localList.size(); i++)
            localList.get(i);
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     bn
 * JD-Core Version:    0.6.2
 */