.class final Lbku;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic b:Lbkn;


# direct methods
.method constructor <init>(Lbkn;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lbku;->b:Lbkn;

    iput-object p2, p0, Lbku;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lbku;->b:Lbkn;

    invoke-static {v0}, Lbkn;->z(Lbkn;)Lzq;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lzq;->h:Z

    iget-object v0, p0, Lbku;->b:Lbkn;

    invoke-static {v0}, Lbkn;->A(Lbkn;)Z

    iget-object v0, p0, Lbku;->b:Lbkn;

    invoke-virtual {v0}, Lbkn;->onBackClick()V

    iget-object v0, p0, Lbku;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void
.end method
