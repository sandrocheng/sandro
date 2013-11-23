package com.tencent.livebackground.util;


public class SpringDynamics extends Dynamics
{
    protected float mDamping;
    protected float mFriction;
    protected float mStiffness;
    
    public SpringDynamics()
    {
    }

    private float calculateAcceleration()
    {
        float f = getDistanceToLimit();
        if(f != 0.0F)
            return f * mStiffness - mDamping * mVelocity;
        else
            return -mFriction * mVelocity;
    }

    protected void onUpdate(int dt)
    {
        float f = (float)dt / 1000F;
        float acceleration = calculateAcceleration();
        mPosition = mPosition + (f * mVelocity + f * (f * (0.5F * acceleration)));
        mVelocity = mVelocity + f * (0.5F * acceleration);
        acceleration = calculateAcceleration();
        mVelocity = mVelocity + f * (0.5F * acceleration);
    }

    public void setFriction(float friction)
    {
        mFriction = friction;
    }

    public void setSpring(float stiffness, float dampingRatio)
    {
        mStiffness = stiffness;
        mDamping = 2.0F * dampingRatio * (float)Math.sqrt(stiffness);
    }

}
