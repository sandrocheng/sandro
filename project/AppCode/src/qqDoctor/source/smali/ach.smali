.class public final Lach;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/service/UssdBlockedReceiver;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/service/UssdBlockedReceiver;)V
    .locals 0

    iput-object p1, p0, Lach;->a:Lcom/tencent/qqpimsecure/service/UssdBlockedReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lach;->a:Lcom/tencent/qqpimsecure/service/UssdBlockedReceiver;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/UssdBlockedReceiver;->b(Lcom/tencent/qqpimsecure/service/UssdBlockedReceiver;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lach;->a:Lcom/tencent/qqpimsecure/service/UssdBlockedReceiver;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/service/UssdBlockedReceiver;->a(Lcom/tencent/qqpimsecure/service/UssdBlockedReceiver;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lach;->a:Lcom/tencent/qqpimsecure/service/UssdBlockedReceiver;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/UssdBlockedReceiver;->c(Lcom/tencent/qqpimsecure/service/UssdBlockedReceiver;)Z

    return-void
.end method
