package com.tencent.livebackground.animation;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Bundle;

public interface Renderer
{

    public abstract boolean draw(Bitmap bitmap, Canvas canvas, Rect rect, long timeMillis);

    public abstract void getCurrentRect(Rect rect);

    public abstract void offset(int dx, int dy, long timeMillis);

    public abstract void sendCommand(String command, int x, int y, Bundle extras);

    public abstract void start(Rect rect, int targetX, int targetY, float toScale, float toAlpha, long timeMillis);

    public static final String COMMAND_DROP = "COMMAND_DROP";
    public static final String COMMAND_PICKUP = "COMMAND_PICKUP";
}
