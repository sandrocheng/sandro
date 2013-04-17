.class final Laur;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lauq;


# direct methods
.method constructor <init>(Lauq;)V
    .locals 0

    iput-object p1, p0, Laur;->a:Lauq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Laur;->a:Lauq;

    iget-object v0, v0, Lauq;->a:Latz;

    invoke-static {v0}, Latz;->r(Latz;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laur;->a:Lauq;

    iget-object v0, v0, Lauq;->a:Latz;

    invoke-static {v0}, Latz;->r(Latz;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Laur;->a:Lauq;

    iget-object v0, v0, Lauq;->a:Latz;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Latz;->a(Latz;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    :cond_0
    iget-object v0, p0, Laur;->a:Lauq;

    iget-object v0, v0, Lauq;->a:Latz;

    invoke-static {v0}, Latz;->s(Latz;)Lcf;

    move-result-object v0

    invoke-interface {v0}, Lcf;->f()V

    iget-object v0, p0, Laur;->a:Lauq;

    iget-object v0, v0, Lauq;->a:Latz;

    invoke-static {v0}, Latz;->t(Latz;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Laur;->a:Lauq;

    iget-object v0, v0, Lauq;->a:Latz;

    invoke-static {v0}, Latz;->t(Latz;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Laur;->a:Lauq;

    iget-object v0, v0, Lauq;->a:Latz;

    invoke-static {v0}, Latz;->u(Latz;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    :cond_1
    iget-object v0, p0, Laur;->a:Lauq;

    iget-object v0, v0, Lauq;->a:Latz;

    invoke-static {v0}, Latz;->v(Latz;)Z

    return-void
.end method
