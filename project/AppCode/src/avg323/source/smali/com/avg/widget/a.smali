.class public Lcom/avg/widget/a;
.super Landroid/appwidget/AppWidgetProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    const/16 v0, 0x61a8

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/avg/toolkit/i;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    const/16 v0, 0x61a8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/avg/toolkit/i;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3

    const/16 v0, 0x61a8

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/avg/toolkit/i;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    return-void
.end method
