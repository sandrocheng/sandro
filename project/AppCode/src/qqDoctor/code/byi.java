import android.os.IBinder;
import android.os.Parcel;

public final class byi
{
  private static int a = 43;
  private static int b = 41;

  static
  {
    try
    {
      a = ((Integer)di.a("android.view.IWindowManager$Stub", "TRANSACTION_setAnimationScales")).intValue();
      b = ((Integer)di.a("android.view.IWindowManager$Stub", "TRANSACTION_getAnimationScales")).intValue();
      return;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        a = 43;
        b = 41;
      }
    }
  }

  public static void a(float[] paramArrayOfFloat)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("android.view.IWindowManager");
      localParcel1.writeFloatArray(paramArrayOfFloat);
      btm.a("window").transact(a, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public static float[] a()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("android.view.IWindowManager");
      btm.a("window").transact(b, localParcel1, localParcel2, 0);
      localParcel2.readException();
      float[] arrayOfFloat2 = localParcel2.createFloatArray();
      arrayOfFloat1 = arrayOfFloat2;
      return arrayOfFloat1;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        localParcel2.recycle();
        localParcel1.recycle();
        float[] arrayOfFloat1 = null;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     byi
 * JD-Core Version:    0.6.2
 */