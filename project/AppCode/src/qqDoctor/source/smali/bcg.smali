.class final Lbcg;
.super Ljava/lang/Object;

# interfaces
.implements Lxi$a;


# instance fields
.field private synthetic a:Lbcf;


# direct methods
.method constructor <init>(Lbcf;)V
    .locals 0

    iput-object p1, p0, Lbcg;->a:Lbcf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lbcg;->a:Lbcf;

    iget-object v0, v0, Lbcf;->a:Lbce;

    invoke-static {v0}, Lbce;->a(Lbce;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbcg;->a:Lbcf;

    iget-object v0, v0, Lbcf;->a:Lbce;

    invoke-static {v0}, Lbce;->a(Lbce;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lbcg;->a:Lbcf;

    iget-object v0, v0, Lbcf;->a:Lbce;

    invoke-static {v0, p1}, Lbce;->a(Lbce;I)V

    iget-object v0, p0, Lbcg;->a:Lbcf;

    iget-object v0, v0, Lbcf;->a:Lbce;

    invoke-static {v0}, Lbce;->d(Lbce;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
