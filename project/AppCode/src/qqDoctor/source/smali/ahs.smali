.class public final Lahs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareRemoveDialog;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareRemoveDialog;)V
    .locals 0

    iput-object p1, p0, Lahs;->a:Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareRemoveDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "start_analysis"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lahs;->a:Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareRemoveDialog;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareRemoveDialog;->a(Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareRemoveDialog;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareCenterActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lahs;->a:Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareRemoveDialog;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareRemoveDialog;->a(Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareRemoveDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lahs;->a:Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareRemoveDialog;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareRemoveDialog;->a(Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareRemoveDialog;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x6731

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    return-void
.end method
