.class final Lbbr;
.super Ljava/lang/Object;

# interfaces
.implements Lxi$a;


# instance fields
.field private synthetic a:Lbbq;


# direct methods
.method constructor <init>(Lbbq;)V
    .locals 0

    iput-object p1, p0, Lbbr;->a:Lbbq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lbbr;->a:Lbbq;

    iget-object v0, v0, Lbbq;->a:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbbr;->a:Lbbq;

    iget-object v0, v0, Lbbq;->a:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lbbr;->a:Lbbq;

    iget-object v0, v0, Lbbq;->a:Lbbp;

    invoke-static {v0, p1}, Lbbp;->a(Lbbp;I)V

    iget-object v0, p0, Lbbr;->a:Lbbq;

    iget-object v0, v0, Lbbq;->a:Lbbp;

    invoke-static {v0}, Lbbp;->d(Lbbp;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
