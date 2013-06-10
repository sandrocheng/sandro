.class public Lorg/antivirus/widget/a/a/c;
.super Lorg/antivirus/widget/a/a/i;


# instance fields
.field private a:I

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/antivirus/widget/a/a/i;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/antivirus/widget/a/a/c;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/antivirus/widget/a/a/c;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/os/Bundle;Landroid/widget/RemoteViews;Lorg/antivirus/widget/a/l;Z)Z
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    :cond_0
    const-string v0, "level"

    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v0, "scale"

    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v0, "status"

    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    move v0, v6

    :goto_0
    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v3

    if-nez p5, :cond_2

    iget v3, p0, Lorg/antivirus/widget/a/a/c;->a:I

    if-ne v3, v1, :cond_2

    iget-boolean v3, p0, Lorg/antivirus/widget/a/a/c;->b:Z

    if-ne v3, v0, :cond_2

    :goto_1
    return v2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iput v1, p0, Lorg/antivirus/widget/a/a/c;->a:I

    iput-boolean v0, p0, Lorg/antivirus/widget/a/a/c;->b:Z

    invoke-static {v1, v0}, Lorg/antivirus/widget/a/d;->a(IZ)Lorg/antivirus/widget/a/d;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x25

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/antivirus/widget/a/d;->a()I

    move-result v0

    invoke-static {v0, v1, v5, p3, p4}, Lorg/antivirus/widget/a/a/c;->a(ILjava/lang/String;Ljava/lang/String;Landroid/widget/RemoteViews;Lorg/antivirus/widget/a/l;)V

    const/16 v0, 0x8

    invoke-static {p3, p4, v2, v0}, Lorg/antivirus/widget/a/a/c;->a(Landroid/widget/RemoteViews;Lorg/antivirus/widget/a/l;II)V

    sget-object v1, Lorg/antivirus/widget/a/i;->b:Lorg/antivirus/widget/a/i;

    const-class v3, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    const/16 v4, 0x14d

    new-array v5, v2, [Ljava/io/Serializable;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/antivirus/widget/a/a/c;->a(Landroid/content/Context;Lorg/antivirus/widget/a/i;ZLjava/lang/Class;I[Ljava/io/Serializable;)Landroid/app/PendingIntent;

    move-result-object v0

    iget v1, p4, Lorg/antivirus/widget/a/l;->a:I

    invoke-virtual {p3, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    move v2, v6

    goto :goto_1
.end method
