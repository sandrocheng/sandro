.class public final Lagg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/ui/activity/market/SDcardNotEnoughDialog;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/market/SDcardNotEnoughDialog;)V
    .locals 0

    iput-object p1, p0, Lagg;->a:Lcom/tencent/qqpimsecure/ui/activity/market/SDcardNotEnoughDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lagg;->a:Lcom/tencent/qqpimsecure/ui/activity/market/SDcardNotEnoughDialog;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/market/SDcardNotEnoughDialog;->a(Lcom/tencent/qqpimsecure/ui/activity/market/SDcardNotEnoughDialog;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/software/ApkManagerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lagg;->a:Lcom/tencent/qqpimsecure/ui/activity/market/SDcardNotEnoughDialog;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/market/SDcardNotEnoughDialog;->a(Lcom/tencent/qqpimsecure/ui/activity/market/SDcardNotEnoughDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lagg;->a:Lcom/tencent/qqpimsecure/ui/activity/market/SDcardNotEnoughDialog;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/market/SDcardNotEnoughDialog;->a(Lcom/tencent/qqpimsecure/ui/activity/market/SDcardNotEnoughDialog;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
