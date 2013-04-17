.class public abstract Lcom/tencent/qqpimsecure/widget/AbstractWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/widget/AbstractWidgetProvider$a;
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/qqpimsecure/widget/AbstractWidgetProvider$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    new-instance v0, Lcom/tencent/qqpimsecure/widget/AbstractWidgetProvider$a;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/widget/AbstractWidgetProvider$a;-><init>(Lcom/tencent/qqpimsecure/widget/AbstractWidgetProvider;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/widget/AbstractWidgetProvider;->a:Lcom/tencent/qqpimsecure/widget/AbstractWidgetProvider$a;

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;)Lbsh$a;
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method protected abstract b()Lbsh;
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    invoke-static {}, Lbss;->a()Lbss;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/widget/AbstractWidgetProvider;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbss;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lbsh;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/tencent/qqpimsecure/widget/AbstractWidgetProvider;->a(Landroid/content/Context;)Lbsh$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbsh;->b(Lbsh$a;)V

    :cond_0
    invoke-static {}, Lbss;->a()Lbss;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/widget/AbstractWidgetProvider;->a:Lcom/tencent/qqpimsecure/widget/AbstractWidgetProvider$a;

    invoke-virtual {v0, v1}, Lbss;->b(Lcom/tencent/qqpimsecure/widget/AbstractWidgetProvider$a;)V

    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    invoke-static {}, Lbss;->a()Lbss;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/widget/AbstractWidgetProvider;->a:Lcom/tencent/qqpimsecure/widget/AbstractWidgetProvider$a;

    invoke-virtual {v0, v1}, Lbss;->a(Lcom/tencent/qqpimsecure/widget/AbstractWidgetProvider$a;)V

    invoke-static {}, Lbss;->a()Lbss;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/widget/AbstractWidgetProvider;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbss;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lbsh;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/tencent/qqpimsecure/widget/AbstractWidgetProvider;->a(Landroid/content/Context;)Lbsh$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbsh;->a(Lbsh$a;)V

    return-void
.end method
