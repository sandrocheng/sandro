.class final Lbdl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic b:Lbdk;


# direct methods
.method constructor <init>(Lbdk;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lbdl;->b:Lbdk;

    iput-object p2, p0, Lbdl;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lbdl;->b:Lbdk;

    invoke-static {v0}, Lbdk;->a(Lbdk;)Lho;

    move-result-object v0

    invoke-virtual {v0, v2}, Lho;->z(Z)V

    iget-object v0, p0, Lbdl;->b:Lbdk;

    invoke-static {v0}, Lbdk;->a(Lbdk;)Lho;

    move-result-object v0

    const/16 v1, -0x64

    invoke-virtual {v0, v1}, Lho;->H(I)V

    iget-object v0, p0, Lbdl;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    invoke-static {v2}, Lxi;->a(Z)V

    iget-object v0, p0, Lbdl;->b:Lbdk;

    invoke-static {v0}, Lbdk;->a(Lbdk;)Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->p()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbdl;->b:Lbdk;

    invoke-static {v0}, Lbdk;->a(Lbdk;)Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->n()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbdl;->b:Lbdk;

    invoke-static {v0}, Lbdk;->a(Lbdk;)Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->cd()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbdl;->b:Lbdk;

    invoke-static {v0}, Lbdk;->a(Lbdk;)Lho;

    move-result-object v0

    invoke-virtual {v0, v2}, Lho;->d(Z)V

    :cond_0
    iget-object v0, p0, Lbdl;->b:Lbdk;

    invoke-static {v0}, Lbdk;->b(Lbdk;)V

    iget-object v0, p0, Lbdl;->b:Lbdk;

    invoke-virtual {v0}, Lbdk;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
