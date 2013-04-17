.class public final Lzc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/app/Activity;

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic c:Lay;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;Lay;)V
    .locals 1

    iput-object p1, p0, Lzc;->a:Landroid/app/Activity;

    iput-object p2, p0, Lzc;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const/4 v0, 0x0

    iput-object v0, p0, Lzc;->c:Lay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lzc;->a:Landroid/app/Activity;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/RootGuideActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lzc;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lzc;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Lzc;->c:Lay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzc;->c:Lay;

    :cond_0
    return-void
.end method
