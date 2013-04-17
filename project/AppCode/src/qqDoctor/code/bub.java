import android.content.BroadcastReceiver;
import android.content.Context;
import android.media.AudioManager;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Process;
import android.os.RemoteException;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.aresengine.AbsSysDao;
import com.tencent.tmsecure.module.aresengine.AresEngineFactor;
import com.tencent.tmsecure.module.aresengine.AresEngineManager;
import com.tencent.tmsecure.module.aresengine.IPhoneDeviceController;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import com.tencent.tmsecure.module.tools.RunableTaskManager;
import com.tencent.tmsecure.utils.SDKUtil;
import com.tencent.tmsecure.utils.ScriptHelper;
import java.util.Iterator;
import java.util.List;

public final class bub
  implements IPhoneDeviceController
{
  private btn a;
  private AudioManager b;
  private boolean c = false;
  private boolean d;

  public bub(Context paramContext)
  {
    int i = SDKUtil.getSDKVersion();
    boolean bool = false;
    if (i < 9)
      bool = true;
    this.d = bool;
    this.a = btn.a();
    this.b = ((AudioManager)paramContext.getSystemService("audio"));
  }

  public final void blockSms(Object[] paramArrayOfObject)
  {
    if ((paramArrayOfObject != null) && (paramArrayOfObject.length >= 2) && ((paramArrayOfObject[1] instanceof BroadcastReceiver)))
      ((BroadcastReceiver)paramArrayOfObject[1]).abortBroadcast();
  }

  public final void cancelMissCall()
  {
    if (ScriptHelper.providerSupportCancelMissCall())
      ScriptHelper.provider$24edfebd();
    while (true)
    {
      return;
      if (this.d)
      {
        btn localbtn = this.a;
        if (localbtn.b())
        {
          Iterator localIterator = localbtn.a.iterator();
          while (localIterator.hasNext())
          {
            btj localbtj = (btj)localIterator.next();
            Parcel localParcel1 = Parcel.obtain();
            Parcel localParcel2 = Parcel.obtain();
            try
            {
              localParcel1.writeInterfaceToken(localbtj.a);
              btm.a(localbtj.b).transact(localbtj.c, localParcel1, localParcel2, 0);
              localParcel2.readException();
              localParcel2.recycle();
              localParcel1.recycle();
            }
            catch (RemoteException localRemoteException)
            {
              localRemoteException.printStackTrace();
              localParcel2.recycle();
              localParcel1.recycle();
            }
            catch (Exception localException)
            {
              localException.printStackTrace();
              localParcel2.recycle();
              localParcel1.recycle();
            }
            finally
            {
              localParcel2.recycle();
              localParcel1.recycle();
            }
          }
        }
      }
      else if ((ScriptHelper.isRootGot()) || (Process.myUid() == 1000))
      {
        ScriptHelper.runScript(new String[] { "service call notification 3 s16 com.android.phone" });
      }
    }
  }

  public final void disableRingVibration(int paramInt)
  {
    if (this.c)
      return;
    this.c = true;
    int i = this.b.getRingerMode();
    int j = this.b.getVibrateSetting(0);
    if (i != 0)
    {
      this.b.setRingerMode(0);
      label42: if (j == 0)
        break label84;
      this.b.setVibrateSetting(0, 0);
    }
    while (true)
    {
      new Thread(new bub.a(i, j, paramInt)).start();
      break;
      i = -1;
      break label42;
      label84: j = -1;
    }
  }

  public final void hangup()
  {
    disableRingVibration(3);
    btn localbtn = this.a;
    Iterator localIterator;
    if (localbtn.b())
      localIterator = localbtn.a.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        ((RunableTaskManager)ManagerCreator.getManager(RunableTaskManager.class)).addTask(new buc(this), 1000L);
        return;
      }
      ((btj)localIterator.next()).a();
    }
  }

  public final void unBlockSms(SmsEntity paramSmsEntity, Object[] paramArrayOfObject)
  {
    if ((paramArrayOfObject != null) && (paramArrayOfObject.length >= 2))
      switch (((Integer)paramArrayOfObject[0]).intValue())
      {
      case 0:
      case 1:
      default:
      case 2:
      }
    while (true)
    {
      return;
      String str = (String)paramArrayOfObject[1];
      if (TMSApplication.getApplicaionContext().getPackageName().equals(str))
        ((AresEngineManager)ManagerCreator.getManager(AresEngineManager.class)).getAresEngineFactor().getSysDao().insert(paramSmsEntity);
    }
  }

  final class a
    implements Runnable
  {
    private int a;
    private int b;
    private int c;

    public a(int paramInt1, int paramInt2, int arg4)
    {
      this.a = paramInt1;
      this.b = paramInt2;
      int i;
      this.c = i;
    }

    public final void run()
    {
      try
      {
        Thread.currentThread();
        Thread.sleep(1000 * this.c);
        int i = bub.a(bub.this).getRingerMode();
        int j = bub.a(bub.this).getVibrateSetting(0);
        if ((this.a != -1) && (i != this.a))
          bub.a(bub.this).setRingerMode(this.a);
        if ((this.b != -1) && (j != this.b))
          bub.a(bub.this).setVibrateSetting(0, this.b);
        bub.b(bub.this);
        return;
      }
      catch (InterruptedException localInterruptedException)
      {
        while (true)
          localInterruptedException.printStackTrace();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bub
 * JD-Core Version:    0.6.2
 */