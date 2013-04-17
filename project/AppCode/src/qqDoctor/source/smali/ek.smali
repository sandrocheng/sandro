.class public final Lek;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;)V
    .locals 0

    iput-object p1, p0, Lek;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iput-object p2, p0, Lek;->b:Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x6690

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    iget-object v0, p0, Lek;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Lek;->b:Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;

    invoke-interface {v0}, Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;->onCancel()V

    return-void
.end method
