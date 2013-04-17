.class public interface abstract Lcom/tencent/tmsecure/module/optimize/ICpuHelper;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getAvailableCpus()I
.end method

.method public abstract getCpuInfoMaxFreq()I
.end method

.method public abstract getCpuInfoMinFreq()I
.end method

.method public abstract getKernelMax()I
.end method

.method public abstract getOnlineCpus()[Ljava/lang/String;
.end method

.method public abstract getScalingAvaliableFrequencies()[I
.end method

.method public abstract getScalingAvaliableGovernors()[Ljava/lang/String;
.end method

.method public abstract getScalingCurFreq()I
.end method

.method public abstract getScalingGovernor()Ljava/lang/String;
.end method

.method public abstract getScalingMaxFreq()I
.end method

.method public abstract getScalingMinFreq()I
.end method

.method public abstract setScalingFreq(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract setScalingGovernor(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract setScalingMaxFreq(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract setScalingMinFreq(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method
