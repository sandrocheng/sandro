.class public final Lye;
.super Lcom/tencent/tmsecure/module/plugin/AbsPluginControler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/plugin/AbsPluginControler;-><init>()V

    return-void
.end method


# virtual methods
.method public final startActivityForResult(Landroid/app/Activity;ILcom/tencent/tmsecure/module/plugin/PluginIntent;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {p3}, Lcom/tencent/tmsecure/module/plugin/PluginIntent;->convertToBundle(Lcom/tencent/tmsecure/module/plugin/PluginIntent;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {p1, p2, v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/PluginActivity;->startPluginView(Landroid/app/Activity;ILandroid/content/Intent;)V

    return-void
.end method
