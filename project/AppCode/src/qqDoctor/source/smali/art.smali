.class public final Lart;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lart$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Larn;

.field private c:Lart$a;

.field private d:[B

.field private e:Landroid/os/Looper;

.field private f:Z

.field private g:Z

.field private h:Landroid/os/Message;

.field private i:I


# direct methods
.method public constructor <init>(Larn;Landroid/os/Looper;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string v0, "DetectHandler"

    iput-object v0, p0, Lart;->a:Ljava/lang/String;

    iput-object p1, p0, Lart;->b:Larn;

    iput-object p2, p0, Lart;->e:Landroid/os/Looper;

    iget-object v0, p0, Lart;->b:Larn;

    invoke-virtual {v0}, Larn;->f()La;

    move-result-object v0

    iget-object v0, v0, La;->b:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lart;->d:[B

    iput-boolean v2, p0, Lart;->g:Z

    iput-boolean v2, p0, Lart;->f:Z

    iget-object v0, p0, Lart;->b:Larn;

    invoke-virtual {v0}, Larn;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lart;->h:Landroid/os/Message;

    return-void
.end method

.method static synthetic a(Lart;)[B
    .locals 1

    iget-object v0, p0, Lart;->d:[B

    return-object v0
.end method

.method static synthetic b(Lart;)Z
    .locals 1

    iget-boolean v0, p0, Lart;->g:Z

    return v0
.end method

.method static synthetic c(Lart;)Larn;
    .locals 1

    iget-object v0, p0, Lart;->b:Larn;

    return-object v0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v1, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v0, p0, Lart;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lart;->i:I

    iget-boolean v0, p0, Lart;->f:Z

    if-nez v0, :cond_1

    invoke-static {}, Larn;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lart;->f:Z

    :cond_1
    iget-object v0, p0, Lart;->c:Lart$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lart;->c:Lart$a;

    iget-boolean v0, v0, Lart$a;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lart;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleMessage in DetectHandler early return 1 @messageId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lart;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lart;->c:Lart$a;

    invoke-virtual {p0, v0}, Lart;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v1, Lart$a;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p0, Lart;->i:I

    invoke-direct {v1, p0, v0, v2, v3}, Lart$a;-><init>(Lart;[BII)V

    invoke-virtual {p0, v1}, Lart;->post(Ljava/lang/Runnable;)Z

    iput-object v1, p0, Lart;->c:Lart$a;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lart;->a:Ljava/lang/String;

    iput-boolean v1, p0, Lart;->g:Z

    :cond_3
    iget-object v0, p0, Lart;->c:Lart$a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lart;->c:Lart$a;

    iget-boolean v0, v0, Lart$a;->a:Z

    if-nez v0, :cond_3

    :cond_4
    iget-boolean v0, p0, Lart;->f:Z

    if-eqz v0, :cond_5

    invoke-static {}, Larn;->c()Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lart;->f:Z

    :cond_5
    iget-object v0, p0, Lart;->h:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lart;->e:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
