.class public final Lex;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;

.field private synthetic c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lex;->a:Landroid/content/Context;

    iput-object p2, p0, Lex;->b:Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;

    iput-object p3, p0, Lex;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lex;->a:Landroid/content/Context;

    invoke-static {v0}, Lfs;->a(Landroid/content/Context;)I

    iget-object v0, p0, Lex;->b:Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lex;->b:Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;

    invoke-interface {v0}, Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;->onCancel()V

    :cond_0
    iget-object v0, p0, Lex;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void
.end method
