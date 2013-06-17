.class public Lcom/antivirus/widget/a/a;
.super Landroid/database/ContentObserver;


# instance fields
.field private a:Ljava/text/DateFormat;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/antivirus/widget/a/a;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/widget/a/a;->a:Ljava/text/DateFormat;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const/16 v3, 0x61a8

    const/16 v2, 0x8

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/antivirus/widget/a/a;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/widget/a/a;->a:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/antivirus/widget/a/a;->a:Ljava/text/DateFormat;

    iget-object v0, p0, Lcom/antivirus/widget/a/a;->b:Landroid/content/Context;

    invoke-static {}, Lcom/antivirus/widget/appbackup/AppBackupWidgetPlugin;->k()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v3, v2, v1}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/antivirus/widget/a/a;->b:Landroid/content/Context;

    invoke-static {}, Lcom/antivirus/widget/update/UpdateWidgetPlugin;->k()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v3, v2, v1}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method
