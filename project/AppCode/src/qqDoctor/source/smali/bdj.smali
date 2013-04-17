.class final Lbdj;
.super Ljava/lang/Object;

# interfaces
.implements Lxi$a;


# instance fields
.field private synthetic a:Lbdi;


# direct methods
.method constructor <init>(Lbdi;)V
    .locals 0

    iput-object p1, p0, Lbdj;->a:Lbdi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lbdj;->a:Lbdi;

    iget-object v0, v0, Lbdi;->a:Lbcz;

    invoke-static {v0, p1}, Lbcz;->a(Lbcz;I)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lbdj;->a:Lbdi;

    iget-object v0, v0, Lbdi;->a:Lbcz;

    invoke-static {v0}, Lbcz;->f(Lbcz;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v0, p0, Lbdj;->a:Lbdi;

    iget-object v0, v0, Lbdi;->a:Lbcz;

    invoke-static {v0}, Lbcz;->l(Lbcz;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void
.end method
