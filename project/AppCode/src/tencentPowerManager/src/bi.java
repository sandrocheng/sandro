import android.os.IBinder;
import android.os.Parcel;
import java.lang.reflect.Field;

public final class bi
{
  private static int a = 43;
  private static int b = 41;

  static
  {
    try
    {
      Class localClass1 = Class.forName("android.view.IWindowManager$Stub");
      Field localField1 = localClass1.getDeclaredField("TRANSACTION_setAnimationScales");
      localField1.setAccessible(true);
      a = ((Integer)localField1.get(localClass1)).intValue();
      Class localClass2 = Class.forName("android.view.IWindowManager$Stub");
      Field localField2 = localClass2.getDeclaredField("TRANSACTION_getAnimationScales");
      localField2.setAccessible(true);
      b = ((Integer)localField2.get(localClass2)).intValue();
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
      bh.a("window").transact(a, localParcel1, localParcel2, 0);
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
      bh.a("window").transact(b, localParcel1, localParcel2, 0);
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

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     bi
 * JD-Core Version:    0.6.2
 */