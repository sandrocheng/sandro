.class public Lcom/tencent/faceverify/util/FaceLib;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "FaceVerify"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native faceDetect([BIILjava/lang/Class;Ljava/lang/Class;Z)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Ljava/lang/Class",
            "<",
            "Lcom/tencent/faceverify/util/FaceLoc;",
            ">;",
            "Ljava/lang/Class",
            "<",
            "Lcom/tencent/faceverify/util/EyeInfo;",
            ">;Z)I"
        }
    .end annotation
.end method

.method public static native faceImgCut([IIILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([III",
            "Ljava/lang/Class",
            "<",
            "Lcom/tencent/faceverify/util/ImageSize;",
            ">;",
            "Ljava/lang/Class",
            "<",
            "Lcom/tencent/faceverify/util/FaceLoc;",
            ">;",
            "Ljava/lang/Class",
            "<",
            "Lcom/tencent/faceverify/util/EyeInfo;",
            ">;)I"
        }
    .end annotation
.end method

.method public static native faceInit()I
.end method

.method public static native faceRelease()I
.end method
