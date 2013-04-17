.class public final Leq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;)V
    .locals 0

    iput-object p1, p0, Leq;->a:Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Leq;->a:Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;

    invoke-interface {v0}, Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;->onCancel()V

    return-void
.end method
