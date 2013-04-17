.class final Laqq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Laqp;


# direct methods
.method constructor <init>(Laqp;)V
    .locals 0

    iput-object p1, p0, Laqq;->a:Laqp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Laqq;->a:Laqp;

    iget-object v0, v0, Laqp;->a:Laqo;

    invoke-static {v0}, Laqo;->d(Laqo;)I

    move-result v0

    iget-object v1, p0, Laqq;->a:Laqp;

    iget-object v1, v1, Laqp;->a:Laqo;

    invoke-static {v1}, Laqo;->e(Laqo;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput v0, v1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Laqq;->a:Laqp;

    iget-object v0, v0, Laqp;->a:Laqo;

    invoke-static {v0}, Laqo;->e(Laqo;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
