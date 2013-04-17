.class final Lqe;
.super Ljava/lang/Object;

# interfaces
.implements Lqc$a;


# instance fields
.field private synthetic a:Lqc;


# direct methods
.method constructor <init>(Lqc;)V
    .locals 0

    iput-object p1, p0, Lqe;->a:Lqc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Llc;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lqe;->a:Lqc;

    const/4 v1, 0x5

    iget-object v2, v0, Lqc;->e:Landroid/os/Handler;

    invoke-virtual {v2, v1, v3, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v0, v0, Lqc;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final b(Llc;)V
    .locals 2

    iget-object v0, p0, Lqe;->a:Lqc;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lqc;->a(ILlc;)V

    return-void
.end method

.method public final c(Llc;)V
    .locals 4

    const/4 v3, 0x3

    iget-object v0, p0, Lqe;->a:Lqc;

    const/4 v1, 0x5

    iget-object v2, v0, Lqc;->e:Landroid/os/Handler;

    invoke-virtual {v2, v1, v3, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v0, v0, Lqc;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
