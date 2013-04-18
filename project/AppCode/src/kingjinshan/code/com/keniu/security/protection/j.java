package com.keniu.security.protection;

import android.graphics.BitmapFactory;
import android.hardware.Camera;
import android.hardware.Camera.PictureCallback;
import android.util.Log;

final class j
  implements Camera.PictureCallback
{
  j(f paramf)
  {
  }

  public final void onPictureTaken(byte[] paramArrayOfByte, Camera paramCamera)
  {
    Log.d("KnCameraPreview", "PictureCallback onPictureTaken");
    try
    {
      f.a(this.a, BitmapFactory.decodeByteArray(paramArrayOfByte, 0, paramArrayOfByte.length));
      new k(this.a, f.b(this.a)).start();
      f.a();
      f.b();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.j
 * JD-Core Version:    0.6.2
 */