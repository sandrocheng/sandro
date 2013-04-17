.class final Lbgd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lbfy;


# direct methods
.method constructor <init>(Lbfy;)V
    .locals 0

    iput-object p1, p0, Lbgd;->a:Lbfy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lbgd;->a:Lbfy;

    invoke-static {v0}, Lbfy;->d(Lbfy;)Lcd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbgd;->a:Lbfy;

    invoke-static {v0}, Lbfy;->d(Lbfy;)Lcd;

    move-result-object v0

    invoke-interface {v0}, Lcd;->e()V

    :cond_0
    iget-object v0, p0, Lbgd;->a:Lbfy;

    invoke-static {v0}, Lbfy;->e(Lbfy;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbgd;->a:Lbfy;

    invoke-static {v0}, Lbfy;->e(Lbfy;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    :cond_1
    return-void
.end method
