.class final Lbrx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lbrp;

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;


# direct methods
.method constructor <init>(Lbrp;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lbrx;->a:Lbrp;

    iput-object p2, p0, Lbrx;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x66ae

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    iget-object v0, p0, Lbrx;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    new-instance v0, Lsq;

    iget-object v1, p0, Lbrx;->a:Lbrp;

    invoke-static {v1}, Lbrp;->U(Lbrp;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lsq;-><init>(Landroid/content/Context;)V

    new-instance v1, Lbry;

    invoke-direct {v1, p0}, Lbry;-><init>(Lbrx;)V

    invoke-virtual {v0, v1}, Lsq;->a(Lsq$a;)V

    invoke-virtual {v0}, Lsq;->c()V

    return-void
.end method
