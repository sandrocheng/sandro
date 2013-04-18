.class final Lcom/keniu/security/protection/h;
.super Ljava/lang/Object;
.source "KnCameraPreview.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# instance fields
.field final synthetic a:Lcom/keniu/security/protection/f;


# direct methods
.method constructor <init>(Lcom/keniu/security/protection/f;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/keniu/security/protection/h;->a:Lcom/keniu/security/protection/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShutter()V
    .locals 2

    .prologue
    .line 139
    const-string v0, "KnCameraPreview"

    const-string v1, "ShutterCallback onShutter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void
.end method
