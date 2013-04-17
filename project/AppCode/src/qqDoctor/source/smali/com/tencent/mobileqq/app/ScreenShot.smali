.class public final Lcom/tencent/mobileqq/app/ScreenShot;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mobileqq/app/ScreenShot$ByteBufferFor4X;,
        Lcom/tencent/mobileqq/app/ScreenShot$ByteBufferFor2X;,
        Lcom/tencent/mobileqq/app/ScreenShot$ByteBufferWrap;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "snapcore"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createByteBufferWrap(Ljava/nio/ByteBuffer;)Lcom/tencent/mobileqq/app/ScreenShot$ByteBufferWrap;
    .locals 2

    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/tencent/mobileqq/app/ScreenShot$ByteBufferFor4X;

    invoke-direct {v0, p0}, Lcom/tencent/mobileqq/app/ScreenShot$ByteBufferFor4X;-><init>(Ljava/nio/ByteBuffer;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/tencent/mobileqq/app/ScreenShot$ByteBufferFor2X;

    invoke-direct {v0, p0}, Lcom/tencent/mobileqq/app/ScreenShot$ByteBufferFor2X;-><init>(Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method public static native snapScreen(II)I
.end method
