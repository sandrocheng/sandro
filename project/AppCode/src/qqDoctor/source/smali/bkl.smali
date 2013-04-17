.class final Lbkl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lrj;

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic c:Lbki;


# direct methods
.method constructor <init>(Lbki;Lrj;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lbkl;->c:Lbki;

    iput-object p2, p0, Lbkl;->a:Lrj;

    iput-object p3, p0, Lbkl;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lbkl;->a:Lrj;

    invoke-virtual {v0}, Lrj;->c()V

    iget-object v0, p0, Lbkl;->c:Lbki;

    invoke-virtual {v0}, Lbki;->getCurrentView()Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ViewFramework;->onResume()V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x66a4

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    iget-object v0, p0, Lbkl;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void
.end method
