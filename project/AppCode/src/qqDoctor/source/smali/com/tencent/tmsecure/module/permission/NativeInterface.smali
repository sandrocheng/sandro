.class public final Lcom/tencent/tmsecure/module/permission/NativeInterface;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "native-1.0.0"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native dlopenAddr()I
.end method

.method public static native dlsymAddr()I
.end method

.method public static native test(Ljava/lang/String;)V
.end method
