.class public abstract Lorg/antivirus/widget/a/a/n;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static varargs a(Landroid/content/Context;Lorg/antivirus/widget/a/i;ZLjava/lang/Class;I[Ljava/io/Serializable;)Landroid/app/PendingIntent;
    .locals 4

    new-instance v2, Landroid/content/Intent;

    const-class v0, Lorg/antivirus/AVService;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "__SAC"

    const/16 v1, 0x1f7

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "WidgetItem"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "isService"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "DelegatedIntentClass"

    invoke-virtual {v2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p5

    if-ge v1, v0, :cond_0

    aget-object v0, p5, v1

    check-cast v0, Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p5, v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x800

    invoke-static {p0, p4, v2, v0}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method protected static a(ILjava/lang/String;Ljava/lang/String;Landroid/widget/RemoteViews;Lorg/antivirus/widget/a/l;)V
    .locals 1

    if-ltz p0, :cond_0

    iget v0, p4, Lorg/antivirus/widget/a/l;->b:I

    invoke-virtual {p3, v0, p0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :cond_0
    if-eqz p1, :cond_1

    iget v0, p4, Lorg/antivirus/widget/a/l;->c:I

    invoke-virtual {p3, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_1
    if-eqz p2, :cond_2

    iget v0, p4, Lorg/antivirus/widget/a/l;->d:I

    invoke-virtual {p3, v0, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method protected static a(Landroid/widget/RemoteViews;Lorg/antivirus/widget/a/l;II)V
    .locals 1

    iget v0, p1, Lorg/antivirus/widget/a/l;->d:I

    invoke-virtual {p0, v0, p3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget v0, p1, Lorg/antivirus/widget/a/l;->c:I

    invoke-virtual {p0, v0, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Landroid/os/Bundle;Landroid/widget/RemoteViews;Lorg/antivirus/widget/a/l;Z)Z
.end method
