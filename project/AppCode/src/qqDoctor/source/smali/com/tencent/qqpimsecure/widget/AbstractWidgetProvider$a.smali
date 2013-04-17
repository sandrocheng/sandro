.class public final Lcom/tencent/qqpimsecure/widget/AbstractWidgetProvider$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/widget/AbstractWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/widget/AbstractWidgetProvider;


# direct methods
.method protected constructor <init>(Lcom/tencent/qqpimsecure/widget/AbstractWidgetProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/widget/AbstractWidgetProvider$a;->a:Lcom/tencent/qqpimsecure/widget/AbstractWidgetProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lbsh;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "widget AbstractUpdateManager getClassSimpleName() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/widget/AbstractWidgetProvider$a;->a:Lcom/tencent/qqpimsecure/widget/AbstractWidgetProvider;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/widget/AbstractWidgetProvider;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/widget/AbstractWidgetProvider$a;->a:Lcom/tencent/qqpimsecure/widget/AbstractWidgetProvider;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/widget/AbstractWidgetProvider;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/widget/AbstractWidgetProvider$a;->a:Lcom/tencent/qqpimsecure/widget/AbstractWidgetProvider;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/widget/AbstractWidgetProvider;->b()Lbsh;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
