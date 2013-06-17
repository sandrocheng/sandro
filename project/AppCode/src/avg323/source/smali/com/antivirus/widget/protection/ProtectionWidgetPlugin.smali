.class public Lcom/antivirus/widget/protection/ProtectionWidgetPlugin;
.super Lcom/avg/widget/model/plugin/WidgetPlugin;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private d:Lcom/antivirus/core/scanners/c;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/antivirus/widget/protection/b;

    invoke-direct {v0}, Lcom/antivirus/widget/protection/b;-><init>()V

    sput-object v0, Lcom/antivirus/widget/protection/ProtectionWidgetPlugin;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/antivirus/widget/protection/a;->c:Lcom/antivirus/widget/protection/a;

    invoke-direct {p0, v0, v1, v1}, Lcom/avg/widget/model/plugin/WidgetPlugin;-><init>(Lcom/avg/widget/model/plugin/a;ZZ)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/avg/widget/model/plugin/WidgetPlugin;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/antivirus/widget/protection/a;

    iput-object v0, p0, Lcom/antivirus/widget/protection/ProtectionWidgetPlugin;->c:Lcom/avg/widget/model/plugin/a;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/antivirus/widget/protection/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/antivirus/widget/protection/ProtectionWidgetPlugin;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private b(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 5

    const/4 v4, 0x6

    const/4 v3, 0x1

    sget-object v1, Lcom/antivirus/widget/protection/c;->a:[I

    iget-object v0, p0, Lcom/antivirus/widget/protection/ProtectionWidgetPlugin;->c:Lcom/avg/widget/model/plugin/a;

    check-cast v0, Lcom/antivirus/widget/protection/a;

    invoke-virtual {v0}, Lcom/antivirus/widget/protection/a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not supported protection state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/antivirus/widget/protection/ProtectionWidgetPlugin;->c:Lcom/avg/widget/model/plugin/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-array v0, v4, [Ljava/io/Serializable;

    const/4 v1, 0x0

    const-string v2, "ScannerClient"

    aput-object v2, v0, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "StartedFromWidget"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "avmsStartScan"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v4, v0}, Lcom/antivirus/widget/protection/ProtectionWidgetPlugin;->a(Landroid/content/Context;I[Ljava/io/Serializable;)Landroid/app/PendingIntent;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-direct {p0}, Lcom/antivirus/widget/protection/ProtectionWidgetPlugin;->n()[Ljava/io/Serializable;

    move-result-object v0

    invoke-virtual {p0, p1, v4, v0}, Lcom/antivirus/widget/protection/ProtectionWidgetPlugin;->a(Landroid/content/Context;I[Ljava/io/Serializable;)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static k()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra_plugin_id"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private n()[Ljava/io/Serializable;
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/avg/ui/general/o;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/io/Serializable;

    const-string v1, "EXTRA_GOTO"

    aput-object v1, v0, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "ScannerClient"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/antivirus/widget/protection/ProtectionWidgetPlugin;->d:Lcom/antivirus/core/scanners/c;

    aput-object v2, v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v4, [Ljava/io/Serializable;

    const-string v1, "ScannerClient"

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/antivirus/widget/protection/ProtectionWidgetPlugin;->d:Lcom/antivirus/core/scanners/c;

    aput-object v1, v0, v2

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Landroid/content/Context;Lcom/avg/widget/model/a;Landroid/widget/RemoteViews;)V
    .locals 2

    invoke-virtual {p0, p3, p2, p1}, Lcom/antivirus/widget/protection/ProtectionWidgetPlugin;->a(Landroid/widget/RemoteViews;Lcom/avg/widget/model/a;Landroid/content/Context;)V

    invoke-virtual {p0, p3, p2}, Lcom/antivirus/widget/protection/ProtectionWidgetPlugin;->a(Landroid/widget/RemoteViews;Lcom/avg/widget/model/a;)V

    invoke-virtual {p2}, Lcom/avg/widget/model/a;->a()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/antivirus/widget/protection/ProtectionWidgetPlugin;->b(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/content/Context;Lcom/avg/widget/model/a;Landroid/widget/RemoteViews;Z)Z
    .locals 6

    new-instance v0, Lcom/antivirus/core/scanners/h;

    invoke-direct {v0}, Lcom/antivirus/core/scanners/h;-><init>()V

    invoke-virtual {v0, p1}, Lcom/antivirus/core/scanners/h;->a(Landroid/content/Context;)V

    iget-wide v1, v0, Lcom/antivirus/core/scanners/h;->b:J

    invoke-virtual {v0}, Lcom/antivirus/core/scanners/h;->e()I

    move-result v3

    const-wide/16 v4, 0x0

    cmp-long v0, v1, v4

    if-nez v0, :cond_1

    sget-object v0, Lcom/antivirus/widget/protection/a;->c:Lcom/antivirus/widget/protection/a;

    :goto_0
    iput-object v0, p0, Lcom/antivirus/widget/protection/ProtectionWidgetPlugin;->c:Lcom/avg/widget/model/plugin/a;

    iget-object v0, p0, Lcom/antivirus/widget/protection/ProtectionWidgetPlugin;->c:Lcom/avg/widget/model/plugin/a;

    check-cast v0, Lcom/antivirus/widget/protection/a;

    sget-object v1, Lcom/antivirus/widget/protection/a;->b:Lcom/antivirus/widget/protection/a;

    invoke-virtual {v0, v1}, Lcom/antivirus/widget/protection/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/antivirus/core/scanners/c;->a:Lcom/antivirus/core/scanners/c;

    iput-object v0, p0, Lcom/antivirus/widget/protection/ProtectionWidgetPlugin;->d:Lcom/antivirus/core/scanners/c;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/widget/protection/ProtectionWidgetPlugin;->e:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/antivirus/widget/protection/ProtectionWidgetPlugin;->a(Landroid/content/Context;Lcom/avg/widget/model/a;Landroid/widget/RemoteViews;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    if-lez v3, :cond_2

    sget-object v0, Lcom/antivirus/widget/protection/a;->b:Lcom/antivirus/widget/protection/a;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/antivirus/widget/protection/a;->a:Lcom/antivirus/widget/protection/a;

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    iget-object v0, p0, Lcom/antivirus/widget/protection/ProtectionWidgetPlugin;->c:Lcom/avg/widget/model/plugin/a;

    check-cast v0, Lcom/antivirus/widget/protection/a;

    sget-object v1, Lcom/antivirus/widget/protection/a;->b:Lcom/antivirus/widget/protection/a;

    invoke-virtual {v0, v1}, Lcom/antivirus/widget/protection/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/Class;
    .locals 2

    invoke-static {}, Lcom/avg/ui/general/o;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/antivirus/ui/tablet/DualPaneActivity;

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/antivirus/widget/protection/c;->a:[I

    iget-object v0, p0, Lcom/antivirus/widget/protection/ProtectionWidgetPlugin;->c:Lcom/avg/widget/model/plugin/a;

    check-cast v0, Lcom/antivirus/widget/protection/a;

    invoke-virtual {v0}, Lcom/antivirus/widget/protection/a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal protection state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-class v0, Lcom/antivirus/ui/main/HandheldMainActivity;

    goto :goto_0

    :pswitch_1
    const-class v0, Lcom/antivirus/ui/scan/results/ScanResultsActivity;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected e()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/antivirus/AVService;

    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/widget/protection/ProtectionWidgetPlugin;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/antivirus/widget/protection/ProtectionWidgetPlugin;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    const-string v0, "widget_protection"

    return-object v0
.end method

.method public h()I
    .locals 1

    const v0, 0x7f09020f

    return v0
.end method

.method public i()I
    .locals 1

    const v0, 0x7f0201a1

    return v0
.end method

.method public j()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
