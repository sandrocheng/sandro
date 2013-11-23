package com.tencent.livebackground.util;

public abstract class Dynamics
{
    protected long mLastTime;
    protected float mMaxPosition;
    protected float mMinPosition;
    protected float mPosition;
    protected float mVelocity;
    
    public Dynamics()
    {
        mMaxPosition = Float.MAX_VALUE;
        mMinPosition = Float.MIN_VALUE;
        mLastTime = 0L;
    }

    public void adjustPositionAndVelocity()
    {
        mVelocity = 0.0F;
        if(mPosition < mMinPosition)
            mPosition = mMinPosition;
        else
        if(mPosition > mMaxPosition)
        {
            mPosition = mMaxPosition;
            return;
        }
    }

    protected float getDistanceToLimit()
    {
        float distance = 0.0F;
        if(mPosition > mMaxPosition)
        {
        	distance = mMaxPosition - mPosition;
        } else
        {
            if(mPosition < mMinPosition)
                return mMinPosition - mPosition;
        }
        return distance;
    }

    public float getPosition()
    {
        return mPosition;
    }

    public float getVelocity()
    {
        return mVelocity;
    }

    public boolean isAtRest(float velocityTolerance, float positionTolerance)
    {
        boolean velocityFlag;
        boolean positionFlag;
        if(Math.abs(mVelocity) < velocityTolerance)
        	velocityFlag = true;
        else
        	velocityFlag = false;
        if(mPosition - positionTolerance < mMaxPosition && positionTolerance + mPosition > mMinPosition)
        	positionFlag = true;
        else
        	positionFlag = false;
        return velocityFlag && positionFlag;
    }

    protected abstract void onUpdate(int dt);

    public void setMaxPosition(float maxPosition)
    {
        mMaxPosition = maxPosition;
    }

    public void setMinPosition(float minPosition)
    {
        mMinPosition = minPosition;
    }

    public void setState(float position, float velocity, long timeMillis)
    {
        mVelocity = velocity;
        mPosition = position;
        mLastTime = timeMillis;
    }

    public void update(long timeMillis)
    {
        int timeDiff = (int)(timeMillis - mLastTime);
        if(timeDiff > 500)
        	timeDiff = 500;
        for(; timeDiff > 0; timeDiff -= 10)
            onUpdate(Math.min(timeDiff, 10));

        mLastTime = timeMillis;
    }
}
