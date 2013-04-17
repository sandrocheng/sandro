.class public Lcom/tencent/qqpimsecure/widget/TaskManagerWidgetProvider;
.super Lcom/tencent/qqpimsecure/widget/AbstractWidgetProvider;


# instance fields
.field private a:Lvh$a;

.field private b:Lbsr;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/widget/AbstractWidgetProvider;-><init>()V

    new-instance v0, Lbsn;

    invoke-direct {v0, p0}, Lbsn;-><init>(Lcom/tencent/qqpimsecure/widget/TaskManagerWidgetProvider;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/widget/TaskManagerWidgetProvider;->a:Lvh$a;

    return-void
.end method

.method public static synthetic a(I)Landroid/app/PendingIntent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/qqpimsecure/widget/TaskManagerWidgetProvider;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "msg_type"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "msg_data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/high16 v3, 0x800

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/widget/TaskManagerWidgetProvider;)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    const-class v0, Lbsr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpimsecure/widget/WidgetUpdateBoradcastReceiver;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;)Lbsh$a;
    .locals 2

    new-instance v0, Lbsq;

    const-class v1, Lcom/tencent/qqpimsecure/widget/TaskManagerWidgetProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lbsq;-><init>(Lcom/tencent/qqpimsecure/widget/TaskManagerWidgetProvider;Ljava/lang/String;Landroid/content/Context;)V

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    const-class v0, Lbsr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final b()Lbsh;
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/widget/TaskManagerWidgetProvider;->b:Lbsr;

    if-nez v0, :cond_0

    new-instance v0, Lbsr;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/widget/TaskManagerWidgetProvider;->b:Lbsr;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/widget/TaskManagerWidgetProvider;->b:Lbsr;

    return-object v0
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/widget/AbstractWidgetProvider;->onDisabled(Landroid/content/Context;)V

    invoke-static {}, Lvh;->a()Lvh;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/widget/TaskManagerWidgetProvider;->a:Lvh$a;

    invoke-virtual {v0, v1}, Lvh;->b(Lvh$a;)V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x661a

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/tencent/qqpimsecure/widget/AbstractWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    if-eqz p2, :cond_0

    const-string v0, "msg_type"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Lbsp;

    invoke-direct {v0, p0, p1}, Lbsp;-><init>(Lcom/tencent/qqpimsecure/widget/TaskManagerWidgetProvider;Landroid/content/Context;)V

    invoke-virtual {v0}, Lbsp;->start()V

    const/16 v0, 0x661c

    invoke-virtual {v1, v0}, Lnd;->a(I)V

    goto :goto_0

    :pswitch_1
    const-string v0, "msg_data"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lbso;

    invoke-direct {v1, v0, p1}, Lbso;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v1}, Lbso;->start()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/SplashActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x3400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/16 v0, 0x661b

    invoke-virtual {v1, v0}, Lnd;->a(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/tencent/qqpimsecure/widget/AbstractWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    invoke-static {}, Lvh;->a()Lvh;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/widget/TaskManagerWidgetProvider;->a:Lvh$a;

    invoke-virtual {v0, v1}, Lvh;->a(Lvh$a;)V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x6619

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    const-class v0, Lbsr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpimsecure/widget/WidgetUpdateBoradcastReceiver;->a(Ljava/lang/String;)V

    return-void
.end method
