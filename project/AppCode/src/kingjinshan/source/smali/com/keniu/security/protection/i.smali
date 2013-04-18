.class final Lcom/keniu/security/protection/i;
.super Ljava/lang/Object;
.source "KnCameraPreview.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# instance fields
.field final synthetic a:Lcom/keniu/security/protection/f;


# direct methods
.method constructor <init>(Lcom/keniu/security/protection/f;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/keniu/security/protection/i;->a:Lcom/keniu/security/protection/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 146
    const-string v0, "KnCameraPreview"

    const-string v1, "PictureCallback onPictureTaken"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void
.end method
