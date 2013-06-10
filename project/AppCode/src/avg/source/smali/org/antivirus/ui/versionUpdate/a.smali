.class final Lorg/antivirus/ui/versionUpdate/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/versionUpdate/VersionUpdateDialog;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/versionUpdate/VersionUpdateDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/versionUpdate/a;->a:Lorg/antivirus/ui/versionUpdate/VersionUpdateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/antivirus/AVSettings;->setVersionUpdateNotificationLastTime(J)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
