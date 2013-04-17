.class public final Lafe;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;)V
    .locals 0

    iput-object p1, p0, Lafe;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lafe;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->a(Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;)Lho;

    move-result-object v1

    invoke-virtual {v1}, Lho;->bf()I

    move-result v1

    if-ne v3, v1, :cond_0

    iget-object v1, p0, Lafe;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->b(Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "FIRST_TIME"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_1
    iget-object v1, p0, Lafe;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->e(Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v2, v1, :cond_1

    iget-object v1, p0, Lafe;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->c(Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lafe;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->d(Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "FIRST_TIME"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lafe;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->f(Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lafe;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->g(Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/SyncCheckLogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lafe;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->h(Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0802c7
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
