.class public final Lez;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;)V
    .locals 0

    iput-object p1, p0, Lez;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iput-object p2, p0, Lez;->b:Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lez;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Lez;->b:Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lez;->b:Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;

    invoke-interface {v0}, Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;->onCancel()V

    :cond_0
    return-void
.end method
