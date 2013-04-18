package com.keniu.security.protection;

import android.hardware.Camera;
import android.hardware.Camera.PictureCallback;
import android.util.Log;

final class i
  implements Camera.PictureCallback
{
  i(f paramf)
  {
  }

  public final void onPictureTaken(byte[] paramArrayOfByte, Camera paramCamera)
  {
    Log.d("KnCameraPreview", "PictureCallback onPictureTaken");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.i
 * JD-Core Version:    0.6.2
 */