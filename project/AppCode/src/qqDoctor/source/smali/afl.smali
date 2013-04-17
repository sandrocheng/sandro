.class public final Lafl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/ui/activity/UninstallWarningActivity;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/UninstallWarningActivity;)V
    .locals 0

    iput-object p1, p0, Lafl;->a:Lcom/tencent/qqpimsecure/ui/activity/UninstallWarningActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lafl;->a:Lcom/tencent/qqpimsecure/ui/activity/UninstallWarningActivity;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/ui/activity/UninstallWarningActivity;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Lafl;->a:Lcom/tencent/qqpimsecure/ui/activity/UninstallWarningActivity;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/UninstallWarningActivity;->finish()V

    iget-object v0, p0, Lafl;->a:Lcom/tencent/qqpimsecure/ui/activity/UninstallWarningActivity;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/ui/activity/UninstallWarningActivity;->b:Lyj;

    invoke-virtual {v0}, Lyj;->a()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lafl;->a:Lcom/tencent/qqpimsecure/ui/activity/UninstallWarningActivity;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/permission/PermissionControlActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lafl;->a:Lcom/tencent/qqpimsecure/ui/activity/UninstallWarningActivity;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/ui/activity/UninstallWarningActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
