import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import com.tencent.tmsecure.common.BaseService;
import java.util.ArrayList;

public class se extends BaseService
{
  private static Object a = new Object();
  private static int b = 0;
  private Context c;
  private ho d;

  private void a(ArrayList<String> paramArrayList, Messenger paramMessenger)
  {
    try
    {
      if (b(1) != 0)
        ha.b(this.c, this.c.getString(2131429920));
      while (true)
      {
        return;
        int i = paramArrayList.size();
        if (paramMessenger != null)
        {
          Message localMessage = Message.obtain();
          localMessage.what = 0;
          localMessage.arg1 = i;
          b(localMessage, paramMessenger);
        }
        new Thread(new sg(this, paramArrayList, paramMessenger, i)).start();
      }
    }
    finally
    {
    }
  }

  private static int b()
  {
    synchronized (a)
    {
      int i = b;
      return i;
    }
  }

  private static int b(int paramInt)
  {
    int i;
    synchronized (a)
    {
      if (b != 0)
      {
        i = b;
      }
      else
      {
        b = paramInt;
        i = 0;
      }
    }
    return i;
  }

  private void b(ArrayList<lj> paramArrayList, Messenger paramMessenger)
  {
    try
    {
      if (b(2) != 0)
        ha.b(this.c, this.c.getString(2131429920));
      while (true)
      {
        return;
        int i = paramArrayList.size();
        if (paramMessenger != null)
        {
          Message localMessage = Message.obtain();
          localMessage.what = 5;
          localMessage.arg1 = i;
          b(localMessage, paramMessenger);
        }
        new Thread(new sh(this, paramArrayList, paramMessenger, i)).start();
      }
    }
    finally
    {
    }
  }

  private static boolean b(Message paramMessage, Messenger paramMessenger)
  {
    try
    {
      paramMessenger.send(paramMessage);
      bool = true;
      return bool;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        boolean bool = false;
      }
    }
  }

  public IBinder onBind()
  {
    return null;
  }

  public void onCreate(Context paramContext)
  {
    super.onCreate(paramContext);
    this.c = paramContext;
    this.d = ho.a();
  }

  public void onDestory()
  {
    super.onDestory();
  }

  public void onStart(Intent paramIntent)
  {
    super.onStart(paramIntent);
    if (paramIntent == null);
    while (true)
    {
      return;
      String str = paramIntent.getStringExtra("extra_action");
      if (str != null)
        if (str == "extra_action_filesafe_init")
        {
          if ((!this.d.dG()) && (b(4) == 0))
            new Thread(new sf(this)).start();
        }
        else if (str == "extra_action_filesafeservice_get_state")
        {
          Messenger localMessenger = (Messenger)paramIntent.getParcelableExtra("extra_messenger");
          if (localMessenger != null)
          {
            Message localMessage = Message.obtain();
            localMessage.what = 10;
            localMessage.arg1 = b();
            b(localMessage, localMessenger);
          }
        }
        else if (str == "extra_action_encry")
        {
          a(paramIntent.getStringArrayListExtra("extra_file_path_list"), (Messenger)paramIntent.getParcelableExtra("extra_messenger"));
        }
        else if (str == "extra_action_decry")
        {
          b((ArrayList)paramIntent.getSerializableExtra("extra_file_fileCryptInfo_list"), (Messenger)paramIntent.getParcelableExtra("extra_messenger"));
        }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     se
 * JD-Core Version:    0.6.2
 */