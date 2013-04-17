.class final Laus;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lauq;


# direct methods
.method constructor <init>(Lauq;)V
    .locals 0

    iput-object p1, p0, Laus;->a:Lauq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Laus;->a:Lauq;

    iget-object v0, v0, Lauq;->a:Latz;

    invoke-static {v0}, Latz;->r(Latz;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laus;->a:Lauq;

    iget-object v0, v0, Lauq;->a:Latz;

    invoke-static {v0}, Latz;->r(Latz;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Laus;->a:Lauq;

    iget-object v0, v0, Lauq;->a:Latz;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Latz;->a(Latz;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    :cond_0
    return-void
.end method
