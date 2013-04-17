.class final Lbru;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic b:Lbrp;


# direct methods
.method constructor <init>(Lbrp;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lbru;->b:Lbrp;

    iput-object p2, p0, Lbru;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lbru;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Lbru;->b:Lbrp;

    invoke-static {v0}, Lbrp;->R(Lbrp;)Lacr;

    move-result-object v0

    invoke-virtual {v0}, Lacr;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbru;->b:Lbrp;

    invoke-static {v0}, Lbrp;->R(Lbrp;)Lacr;

    move-result-object v0

    invoke-virtual {v0}, Lacr;->c()V

    iget-object v0, p0, Lbru;->b:Lbrp;

    invoke-static {v0}, Lbrp;->S(Lbrp;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setEnabled(Z)V

    :cond_0
    return-void
.end method
