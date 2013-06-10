.class final Lorg/antivirus/widget/activities/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lorg/antivirus/widget/activities/WidgetConfigurationActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/widget/activities/WidgetConfigurationActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/widget/activities/a;->a:Lorg/antivirus/widget/activities/WidgetConfigurationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/widget/activities/a;->a:Lorg/antivirus/widget/activities/WidgetConfigurationActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->a(Lorg/antivirus/widget/activities/WidgetConfigurationActivity;Z)Z

    iget-object v0, p0, Lorg/antivirus/widget/activities/a;->a:Lorg/antivirus/widget/activities/WidgetConfigurationActivity;

    check-cast p2, Lorg/antivirus/AVService$LocalBinder;

    invoke-virtual {p2}, Lorg/antivirus/AVService$LocalBinder;->getFeatures()Lorg/antivirus/core/b/a;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->a(Lorg/antivirus/widget/activities/WidgetConfigurationActivity;Lorg/antivirus/core/b/a;)Lorg/antivirus/core/b/a;

    iget-object v0, p0, Lorg/antivirus/widget/activities/a;->a:Lorg/antivirus/widget/activities/WidgetConfigurationActivity;

    invoke-static {v0}, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->a(Lorg/antivirus/widget/activities/WidgetConfigurationActivity;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "Disconnected"

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/widget/activities/a;->a:Lorg/antivirus/widget/activities/WidgetConfigurationActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/antivirus/widget/activities/WidgetConfigurationActivity;->a(Lorg/antivirus/widget/activities/WidgetConfigurationActivity;Z)Z

    return-void
.end method
