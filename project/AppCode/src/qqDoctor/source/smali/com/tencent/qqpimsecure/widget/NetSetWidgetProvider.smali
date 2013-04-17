.class public Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;
.super Lcom/tencent/qqpimsecure/widget/AbstractWidgetProvider;


# instance fields
.field public a:Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

.field private b:Landroid/content/Context;

.field private c:Lbsi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/widget/AbstractWidgetProvider;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;I)Landroid/app/PendingIntent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->b:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "msg_position"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->b:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/high16 v3, 0x800

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/content/Context;)Lbsh$a;
    .locals 2

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    new-instance v0, Lbsk;

    const-class v1, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lbsk;-><init>(Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;Ljava/lang/String;Landroid/content/Context;)V

    return-object v0
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    const-class v0, Lbsi;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final b()Lbsh;
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->c:Lbsi;

    if-nez v0, :cond_0

    new-instance v0, Lbsi;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsi;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->c:Lbsi;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->c:Lbsi;

    return-object v0
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/widget/AbstractWidgetProvider;->onDisabled(Landroid/content/Context;)V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x661e

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/tencent/qqpimsecure/widget/AbstractWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object p1, p0, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a:Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    if-nez v0, :cond_0

    const-class v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a:Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    :cond_0
    const-string v0, "msg_position"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Lbsj;

    invoke-direct {v0, p0, p2}, Lbsj;-><init>(Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lbsj;->start()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->b:Landroid/content/Context;

    const-class v0, Lbsi;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpimsecure/widget/WidgetUpdateBoradcastReceiver;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->b:Landroid/content/Context;

    const-class v0, Lbsi;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpimsecure/widget/WidgetUpdateBoradcastReceiver;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/tencent/qqpimsecure/widget/AbstractWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x661d

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    return-void
.end method
