import android.graphics.Point;
import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;
import android.hardware.Camera.Parameters;
import android.hardware.Camera.Size;
import android.os.Message;
import java.util.Iterator;
import java.util.List;

final class aro
  implements Runnable
{
  aro(arn paramarn)
  {
  }

  public final void run()
  {
    try
    {
      int i = arn.a(this.a);
      j = arn.b(this.a);
      int k = arn.c(this.a);
      Camera.CameraInfo localCameraInfo = new Camera.CameraInfo();
      int m = Camera.getNumberOfCameras();
      Camera localCamera = null;
      if (m > 0)
      {
        i2 = 0;
        if (i2 < m);
      }
      else
      {
        if (localCamera != null)
          break label127;
        localPoint = null;
      }
      while (true)
      {
        if (localPoint != null)
          break label403;
        ha.b(arn.d(this.a), 2131430004);
        arn.e(this.a).obtainMessage(10, 1, 0).sendToTarget();
        return;
        Camera.getCameraInfo(i2, localCameraInfo);
        if (localCameraInfo.facing != k)
          break label483;
        localCamera = Camera.open(i2);
        break label483;
        label127: List localList = localCamera.getParameters().getSupportedPreviewSizes();
        localCamera.release();
        if (localList == null)
        {
          localPoint = null;
        }
        else
        {
          d1 = i / j;
          localIterator1 = localList.iterator();
          localObject = null;
          d2 = 1.7976931348623157E+308D;
          if (localIterator1.hasNext())
            break;
          if (localObject == null)
          {
            d3 = 1.7976931348623157E+308D;
            localIterator2 = localList.iterator();
            if (localIterator2.hasNext())
              break label350;
          }
          localPoint = new Point(localObject.width, localObject.height);
        }
      }
    }
    catch (RuntimeException localRuntimeException)
    {
      while (true)
      {
        int j;
        int i2;
        Point localPoint;
        double d1;
        Iterator localIterator1;
        Object localObject;
        double d2;
        double d3;
        Iterator localIterator2;
        localRuntimeException.printStackTrace();
        ha.b(arn.d(this.a), 2131430002);
        arn.e(this.a).obtainMessage(10, 1, 0).sendToTarget();
        continue;
        Camera.Size localSize1 = (Camera.Size)localIterator1.next();
        if ((Math.abs(localSize1.width / localSize1.height - d1) <= 0.1D) && (Math.abs(localSize1.height - j) < d2))
        {
          d2 = Math.abs(localSize1.height - j);
          localObject = localSize1;
          continue;
          label350: Camera.Size localSize2 = (Camera.Size)localIterator2.next();
          if (Math.abs(localSize2.height - j) < d3)
          {
            int i1 = Math.abs(localSize2.height - j);
            d3 = i1;
            localObject = localSize2;
            continue;
            label403: arn.a(this.a, new a(localPoint.x, localPoint.y));
            boolean bool = arn.a(this.a, arn.f(this.a));
            arm localarm = arn.e(this.a);
            if (bool);
            for (int n = 0; ; n = 1)
            {
              localarm.obtainMessage(10, n, 0).sendToTarget();
              break;
            }
            label483: i2++;
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aro
 * JD-Core Version:    0.6.2
 */