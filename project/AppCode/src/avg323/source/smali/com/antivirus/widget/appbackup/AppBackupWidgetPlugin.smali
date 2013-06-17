.class public Lcom/antivirus/widget/appbackup/AppBackupWidgetPlugin;
.super Lcom/avg/widget/model/plugin/WidgetTrialPlugin;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/antivirus/widget/appbackup/a;

    invoke-direct {v0}, Lcom/antivirus/widget/appbackup/a;-><init>()V

    sput-object v0, Lcom/antivirus/widget/appbackup/AppBackupWidgetPlugin;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/avg/widget/model/plugin/WidgetTrialPlugin;-><init>(Landroid/os/Parcel;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/antivirus/widget/appbackup/AppBackupWidgetPlugin;->i:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/antivirus/widget/appbackup/b;

    iput-object v0, p0, Lcom/antivirus/widget/appbackup/AppBackupWidgetPlugin;->c:Lcom/avg/widget/model/plugin/a;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 7

    sget-object v1, Lcom/antivirus/widget/appbackup/b;->a:Lcom/antivirus/widget/appbackup/b;

    const v2, 0x7f090228

    const v3, 0x7f090229

    const v4, 0x7f09022a

    const v5, 0x7f0200e1

    move-object v0, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/avg/widget/model/plugin/WidgetTrialPlugin;-><init>(Lcom/avg/widget/model/plugin/a;IIIIZ)V

    const-string v0, ""

    iput-object v0, p0, Lcom/antivirus/widget/appbackup/AppBackupWidgetPlugin;->i:Ljava/lang/String;

    return-void
.end method

.method private b(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/io/Serializable;

    invoke-virtual {p0, p1, v0, v1}, Lcom/antivirus/widget/appbackup/AppBackupWidgetPlugin;->a(Landroid/content/Context;I[Ljava/io/Serializable;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static k()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra_plugin_id"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/widget/appbackup/AppBackupWidgetPlugin;->i:Ljava/lang/String;

    return-object v0
.end method

.method protected a(Landroid/content/Context;Lcom/avg/widget/model/a;Landroid/widget/RemoteViews;)V
    .locals 2

    invoke-virtual {p0, p3, p2, p1}, Lcom/antivirus/widget/appbackup/AppBackupWidgetPlugin;->a(Landroid/widget/RemoteViews;Lcom/avg/widget/model/a;Landroid/content/Context;)V

    invoke-virtual {p0, p3, p2}, Lcom/antivirus/widget/appbackup/AppBackupWidgetPlugin;->a(Landroid/widget/RemoteViews;Lcom/avg/widget/model/a;)V

    invoke-virtual {p2}, Lcom/avg/widget/model/a;->a()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/antivirus/widget/appbackup/AppBackupWidgetPlugin;->b(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method public a(Lcom/avg/toolkit/e/a;)V
    .locals 2

    iget-object v0, p1, Lcom/avg/toolkit/e/a;->h:Lcom/avg/toolkit/e/c;

    sget-object v1, Lcom/avg/toolkit/e/c;->c:Lcom/avg/toolkit/e/c;

    invoke-virtual {v0, v1}, Lcom/avg/toolkit/e/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/antivirus/widget/appbackup/AppBackupWidgetPlugin;->h:Z

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/content/Context;Lcom/avg/widget/model/a;Landroid/widget/RemoteViews;Z)Z
    .locals 4

    invoke-static {}, Lcom/antivirus/ui/backup/apps/ah;->L()V

    invoke-static {}, Lcom/antivirus/c;->k()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const v0, 0x7f09019b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/widget/appbackup/AppBackupWidgetPlugin;->i:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/antivirus/widget/appbackup/AppBackupWidgetPlugin;->a(Landroid/content/Context;Lcom/avg/widget/model/a;Landroid/widget/RemoteViews;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/widget/appbackup/AppBackupWidgetPlugin;->i:Ljava/lang/String;

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/antivirus/ui/backup/apps/BackupMainActivity;

    return-object v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method protected e()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/antivirus/AVService;

    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    const-string v0, "widget_app_backup"

    return-object v0
.end method

.method public h()I
    .locals 1

    const v0, 0x7f09012f

    return v0
.end method

.method public i()I
    .locals 1

    const v0, 0x7f020199

    return v0
.end method

.method public j()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method
