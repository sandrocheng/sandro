.class final Lbgv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lbgt;


# direct methods
.method constructor <init>(Lbgt;)V
    .locals 0

    iput-object p1, p0, Lbgv;->a:Lbgt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lbgv;->a:Lbgt;

    iget-object v0, v0, Lbgt;->b:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->a()V

    iget-object v0, p0, Lbgv;->a:Lbgt;

    invoke-static {v0}, Lbgt;->q(Lbgt;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
