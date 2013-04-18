.class final Lcom/keniu/security/protection/j;
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
    .line 151
    iput-object p1, p0, Lcom/keniu/security/protection/j;->a:Lcom/keniu/security/protection/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 155
    const-string v0, "KnCameraPreview"

    const-string v1, "PictureCallback onPictureTaken"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/protection/j;->a:Lcom/keniu/security/protection/f;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keniu/security/protection/f;->a(Lcom/keniu/security/protection/f;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 158
    new-instance v0, Lcom/keniu/security/protection/k;

    iget-object v1, p0, Lcom/keniu/security/protection/j;->a:Lcom/keniu/security/protection/f;

    iget-object v2, p0, Lcom/keniu/security/protection/j;->a:Lcom/keniu/security/protection/f;

    invoke-static {v2}, Lcom/keniu/security/protection/f;->b(Lcom/keniu/security/protection/f;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/protection/k;-><init>(Lcom/keniu/security/protection/f;Landroid/graphics/Bitmap;)V

    .line 159
    invoke-virtual {v0}, Lcom/keniu/security/protection/k;->start()V

    .line 160
    iget-object v0, p0, Lcom/keniu/security/protection/j;->a:Lcom/keniu/security/protection/f;

    invoke-static {}, Lcom/keniu/security/protection/f;->a()V

    .line 161
    iget-object v0, p0, Lcom/keniu/security/protection/j;->a:Lcom/keniu/security/protection/f;

    invoke-static {}, Lcom/keniu/security/protection/f;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
