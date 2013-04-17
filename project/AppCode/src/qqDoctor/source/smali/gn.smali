.class public final Lgn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lkw;

.field private synthetic c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic d:Lge;


# direct methods
.method public constructor <init>(Lge;ZLkw;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 1

    iput-object p1, p0, Lgn;->d:Lge;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgn;->a:Z

    iput-object p3, p0, Lgn;->b:Lkw;

    iput-object p4, p0, Lgn;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    :try_start_0
    iget-boolean v0, p0, Lgn;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgn;->d:Lge;

    iget-object v1, p0, Lgn;->b:Lkw;

    iget-object v2, v0, Lge;->a:Landroid/content/Context;

    const v3, 0x7f0b03ef

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lge;->a:Landroid/content/Context;

    const v4, 0x7f0b03f3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v5, v0, Lge;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    const v2, 0x7f0b0045

    new-instance v3, Lgp;

    invoke-direct {v3, v0, v1, v4}, Lgp;-><init>(Lge;Lkw;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v0, 0x2

    invoke-virtual {v4, v2, v3, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v0, 0x7f0b0033

    new-instance v1, Lgq;

    invoke-direct {v1, v4}, Lgq;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v2, 0x1

    invoke-virtual {v4, v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v4}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lgn;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lgn;->d:Lge;

    iget-object v0, v0, Lge;->b:Lge$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgn;->d:Lge;

    iget-object v0, v0, Lge;->b:Lge$a;

    iget-object v1, p0, Lgn;->b:Lkw;

    iget-object v0, v0, Lge$a;->a:Lbod;

    invoke-virtual {v0, v1}, Lbod;->b(Lkw;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lgn;->d:Lge;

    iget-object v0, v0, Lge;->a:Landroid/content/Context;

    const v1, 0x7f0b01c2

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0
.end method
