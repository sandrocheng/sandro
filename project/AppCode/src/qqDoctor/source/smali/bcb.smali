.class final Lbcb;
.super Ljava/lang/Object;

# interfaces
.implements Lxi$a;


# instance fields
.field private synthetic a:Lbbz;


# direct methods
.method constructor <init>(Lbbz;)V
    .locals 0

    iput-object p1, p0, Lbcb;->a:Lbbz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    iget-object v0, p0, Lbcb;->a:Lbbz;

    iget-object v0, v0, Lbbz;->a:Lbby;

    invoke-static {v0}, Lbby;->h(Lbby;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbcb;->a:Lbbz;

    iget-object v0, v0, Lbbz;->a:Lbby;

    invoke-static {v0}, Lbby;->h(Lbby;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lbcb;->a:Lbbz;

    iget-object v0, v0, Lbbz;->a:Lbby;

    invoke-static {v0, p1}, Lbby;->a(Lbby;I)V

    iget-object v0, p0, Lbcb;->a:Lbbz;

    iget-object v0, v0, Lbbz;->a:Lbby;

    invoke-static {v0}, Lbby;->b(Lbby;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
