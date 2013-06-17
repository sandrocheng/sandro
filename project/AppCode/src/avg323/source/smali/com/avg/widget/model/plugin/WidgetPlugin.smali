.class public abstract Lcom/avg/widget/model/plugin/WidgetPlugin;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:Lcom/avg/widget/model/plugin/a;


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avg/widget/model/plugin/WidgetPlugin;->a:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avg/widget/model/plugin/WidgetPlugin;->b:Z

    return-void
.end method

.method protected constructor <init>(Lcom/avg/widget/model/plugin/a;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/avg/widget/model/plugin/WidgetPlugin;->c:Lcom/avg/widget/model/plugin/a;

    iput-boolean p2, p0, Lcom/avg/widget/model/plugin/WidgetPlugin;->a:Z

    iput-boolean p3, p0, Lcom/avg/widget/model/plugin/WidgetPlugin;->b:Z

    return-void
.end method


# virtual methods
.method protected varargs a(Landroid/content/Context;I[Ljava/io/Serializable;)Landroid/app/PendingIntent;
    .locals 4

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/avg/widget/model/plugin/WidgetPlugin;->e()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "__SAC"

    const/16 v1, 0x61a8

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "__SAC2"

    const/4 v1, 0x4

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "WidgetItem"

    invoke-virtual {p0}, Lcom/avg/widget/model/plugin/WidgetPlugin;->j()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p3

    if-ge v1, v0, :cond_0

    aget-object v0, p3, v1

    check-cast v0, Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p3, v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x800

    invoke-static {p1, p2, v2, v0}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public a(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/widget/RemoteViews;Lcom/avg/widget/model/a;)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/avg/widget/model/a;->e()I

    move-result v3

    invoke-virtual {p0}, Lcom/avg/widget/model/plugin/WidgetPlugin;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p2}, Lcom/avg/widget/model/a;->c()I

    move-result v0

    invoke-virtual {p0}, Lcom/avg/widget/model/plugin/WidgetPlugin;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method protected a(Landroid/widget/RemoteViews;Lcom/avg/widget/model/a;Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/avg/widget/model/plugin/WidgetPlugin;->c:Lcom/avg/widget/model/plugin/a;

    invoke-interface {v0}, Lcom/avg/widget/model/plugin/a;->a()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/avg/widget/model/a;->b()I

    move-result v0

    iget-object v1, p0, Lcom/avg/widget/model/plugin/WidgetPlugin;->c:Lcom/avg/widget/model/plugin/a;

    invoke-interface {v1}, Lcom/avg/widget/model/plugin/a;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/avg/widget/model/plugin/WidgetPlugin;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/avg/widget/model/a;->c()I

    move-result v0

    invoke-virtual {p0, p3}, Lcom/avg/widget/model/plugin/WidgetPlugin;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0}, Lcom/avg/widget/model/plugin/WidgetPlugin;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/avg/widget/model/a;->e()I

    move-result v0

    invoke-virtual {p0}, Lcom/avg/widget/model/plugin/WidgetPlugin;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public abstract a()Z
.end method

.method public abstract a(Landroid/content/Context;Lcom/avg/widget/model/a;Landroid/widget/RemoteViews;Z)Z
.end method

.method public abstract b()Z
.end method

.method public abstract c()Ljava/lang/Class;
.end method

.method public abstract d()I
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract e()Ljava/lang/Class;
.end method

.method protected abstract f()Ljava/lang/String;
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public abstract h()I
.end method

.method public abstract i()I
.end method

.method public abstract j()I
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/avg/widget/model/plugin/WidgetPlugin;->a:Z

    return v0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/avg/widget/model/plugin/WidgetPlugin;->b:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/avg/widget/model/plugin/WidgetPlugin;->a:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/avg/widget/model/plugin/WidgetPlugin;->b:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/avg/widget/model/plugin/WidgetPlugin;->c:Lcom/avg/widget/model/plugin/a;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
