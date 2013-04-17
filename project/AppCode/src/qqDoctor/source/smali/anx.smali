.class public final Lanx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/view/MainPageView;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/view/MainPageView;)V
    .locals 0

    iput-object p1, p0, Lanx;->a:Lcom/tencent/qqpimsecure/view/MainPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lanx;->a:Lcom/tencent/qqpimsecure/view/MainPageView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/MainPageView;->c(Lcom/tencent/qqpimsecure/view/MainPageView;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    sget-boolean v0, Lqc;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lanx;->a:Lcom/tencent/qqpimsecure/view/MainPageView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/MainPageView;->d(Lcom/tencent/qqpimsecure/view/MainPageView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lanx;->a:Lcom/tencent/qqpimsecure/view/MainPageView;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/view/MainPageView;->e(Lcom/tencent/qqpimsecure/view/MainPageView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0384

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lanx;->a:Lcom/tencent/qqpimsecure/view/MainPageView;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/view/MainPageView;->f(Lcom/tencent/qqpimsecure/view/MainPageView;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/PhoneCheckActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lanx;->a:Lcom/tencent/qqpimsecure/view/MainPageView;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/view/MainPageView;->g(Lcom/tencent/qqpimsecure/view/MainPageView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
