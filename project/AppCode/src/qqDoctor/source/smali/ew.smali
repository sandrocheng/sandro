.class public final Lew;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lew;->a:Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;

    iput-object p2, p0, Lew;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lew;->a:Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lew;->a:Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;

    invoke-interface {v0}, Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;->onRetry()V

    :cond_0
    iget-object v0, p0, Lew;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void
.end method
