.class public final Ld;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field private final a:La;

.field private b:Landroid/os/Handler;

.field private c:I


# direct methods
.method constructor <init>(La;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld;->a:La;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Handler;I)V
    .locals 0

    iput-object p1, p0, Ld;->b:Landroid/os/Handler;

    iput p2, p0, Ld;->c:I

    return-void
.end method

.method public final onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 4

    iget-object v0, p0, Ld;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ld;->a:La;

    iget-object v0, v0, La;->b:Landroid/graphics/Point;

    iget-object v1, p0, Ld;->b:Landroid/os/Handler;

    iget v2, p0, Ld;->c:I

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x0

    iput-object v0, p0, Ld;->b:Landroid/os/Handler;

    goto :goto_0
.end method
