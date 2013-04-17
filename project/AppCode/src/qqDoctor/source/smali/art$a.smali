.class final Lart$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Z

.field private b:[B

.field private c:I

.field private d:I

.field private synthetic e:Lart;


# direct methods
.method public constructor <init>(Lart;[BII)V
    .locals 1

    iput-object p1, p0, Lart$a;->e:Lart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lart$a;->a:Z

    iput-object p2, p0, Lart$a;->b:[B

    iput p3, p0, Lart$a;->c:I

    iput p4, p0, Lart$a;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v5, 0x1

    iput-boolean v5, p0, Lart$a;->a:Z

    iget-object v0, p0, Lart$a;->b:[B

    iget-object v1, p0, Lart$a;->e:Lart;

    invoke-static {v1}, Lart;->a(Lart;)[B

    move-result-object v1

    iget v2, p0, Lart$a;->c:I

    iget v3, p0, Lart$a;->d:I

    invoke-static {v0, v5, v1, v2, v3}, Lcom/tencent/faceverify/util/Utils;->getRecogData([BZ[BII)V

    iget-object v0, p0, Lart$a;->e:Lart;

    invoke-static {v0}, Lart;->a(Lart;)[B

    move-result-object v0

    iget v1, p0, Lart$a;->c:I

    iget v2, p0, Lart$a;->d:I

    const-class v3, Lcom/tencent/faceverify/util/FaceLoc;

    const-class v4, Lcom/tencent/faceverify/util/EyeInfo;

    invoke-static/range {v0 .. v5}, Lcom/tencent/faceverify/util/FaceLib;->faceDetect([BIILjava/lang/Class;Ljava/lang/Class;Z)I

    move-result v0

    iget-object v1, p0, Lart$a;->e:Lart;

    invoke-static {v1}, Lart;->b(Lart;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    iget-object v0, p0, Lart$a;->e:Lart;

    invoke-static {v0}, Lart;->c(Lart;)Larn;

    move-result-object v0

    invoke-virtual {v0}, Larn;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lart$a;->b:[B

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v1, p0, Lart$a;->c:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget v1, p0, Lart$a;->d:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lart$a;->a:Z

    return-void

    :cond_1
    iget-object v0, p0, Lart$a;->e:Lart;

    invoke-static {v0}, Lart;->c(Lart;)Larn;

    move-result-object v0

    invoke-virtual {v0}, Larn;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lart$a;->b:[B

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v1, p0, Lart$a;->c:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget v1, p0, Lart$a;->d:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
