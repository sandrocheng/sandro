.class public Lorg/antivirus/widget/a/a/k;
.super Lorg/antivirus/widget/a/a/i;


# instance fields
.field private a:D

.field private b:Lorg/antivirus/widget/a/g;

.field private c:Ljava/text/DecimalFormat;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/antivirus/widget/a/a/i;-><init>()V

    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lorg/antivirus/widget/a/a/k;->a:D

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/widget/a/a/k;->b:Lorg/antivirus/widget/a/g;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/antivirus/widget/a/a/k;->c:Ljava/text/DecimalFormat;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/os/Bundle;Landroid/widget/RemoteViews;Lorg/antivirus/widget/a/l;Z)Z
    .locals 8

    if-nez p2, :cond_0

    invoke-static {}, Lorg/antivirus/AVSettings;->isTrafficCounterOn()Z

    move-result v0

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v1, "dataPlanSet"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/antivirus/tuneup/ba;->a(Landroid/content/Context;)Lorg/antivirus/tuneup/ba;

    move-result-object v0

    invoke-virtual {v0}, Lorg/antivirus/tuneup/ba;->b()[D

    move-result-object v0

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    invoke-static {}, Lorg/antivirus/AVSettings;->getDataPlanNotificationThreshold()I

    move-result v2

    const-string v3, "dataPercentLeft"

    invoke-virtual {p2, v3, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v0, "dataThreshold"

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const-string v0, "dataPercentLeft"

    const-wide/high16 v1, -0x4010

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    const-string v2, "dataPlanSet"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2, v0, v1}, Lorg/antivirus/widget/a/g;->a(ZD)Lorg/antivirus/widget/a/g;

    move-result-object v2

    const-wide/high16 v3, 0x4024

    mul-double/2addr v0, v3

    double-to-int v0, v0

    int-to-double v0, v0

    const-wide/high16 v3, 0x4024

    div-double/2addr v0, v3

    if-nez p5, :cond_2

    sget-object v3, Lorg/antivirus/widget/a/g;->i:Lorg/antivirus/widget/a/g;

    invoke-virtual {v3, v2}, Lorg/antivirus/widget/a/g;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lorg/antivirus/widget/a/g;->i:Lorg/antivirus/widget/a/g;

    iget-object v4, p0, Lorg/antivirus/widget/a/a/k;->b:Lorg/antivirus/widget/a/g;

    invoke-virtual {v3, v4}, Lorg/antivirus/widget/a/g;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sget-object v3, Lorg/antivirus/widget/a/g;->i:Lorg/antivirus/widget/a/g;

    invoke-virtual {v3, v2}, Lorg/antivirus/widget/a/g;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-wide v3, p0, Lorg/antivirus/widget/a/a/k;->a:D

    cmpl-double v3, v3, v0

    if-nez v3, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iput-object v2, p0, Lorg/antivirus/widget/a/a/k;->b:Lorg/antivirus/widget/a/g;

    iput-wide v0, p0, Lorg/antivirus/widget/a/a/k;->a:D

    sget-object v0, Lorg/antivirus/widget/a/a/l;->a:[I

    invoke-virtual {v2}, Lorg/antivirus/widget/a/g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/antivirus/widget/a/a/k;->c:Ljava/text/DecimalFormat;

    iget-wide v3, p0, Lorg/antivirus/widget/a/a/k;->a:D

    invoke-virtual {v1, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2}, Lorg/antivirus/widget/a/g;->a()I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, p3, p4}, Lorg/antivirus/widget/a/a/k;->a(ILjava/lang/String;Ljava/lang/String;Landroid/widget/RemoteViews;Lorg/antivirus/widget/a/l;)V

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-static {p3, p4, v0, v1}, Lorg/antivirus/widget/a/a/k;->a(Landroid/widget/RemoteViews;Lorg/antivirus/widget/a/l;II)V

    iget v6, p4, Lorg/antivirus/widget/a/l;->a:I

    invoke-virtual {v2}, Lorg/antivirus/widget/a/g;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v1, Lorg/antivirus/widget/a/i;->c:Lorg/antivirus/widget/a/i;

    const/4 v2, 0x0

    const-class v3, Lorg/antivirus/tuneup/TrafficMeterActivity;

    const/16 v4, 0x8

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/io/Serializable;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/antivirus/widget/a/a/k;->a(Landroid/content/Context;Lorg/antivirus/widget/a/i;ZLjava/lang/Class;I[Ljava/io/Serializable;)Landroid/app/PendingIntent;

    move-result-object v0

    :goto_2
    invoke-virtual {p3, v6, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    const v0, 0x7f09019f

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    sget-object v1, Lorg/antivirus/widget/a/i;->c:Lorg/antivirus/widget/a/i;

    const/4 v2, 0x0

    const-class v3, Lorg/antivirus/tuneup/DataPlanSettingsActivity;

    const/16 v4, 0x8

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/io/Serializable;

    const/4 v0, 0x0

    const-string v7, "new_activation"

    aput-object v7, v5, v0

    const/4 v0, 0x1

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/antivirus/widget/a/a/k;->a(Landroid/content/Context;Lorg/antivirus/widget/a/i;ZLjava/lang/Class;I[Ljava/io/Serializable;)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
