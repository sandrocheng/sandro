.class final Lorg/antivirus/ui/versionUpdate/f;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/antivirus/a/i;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/versionUpdate/f;->a:Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/versionUpdate/f;->a:Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    invoke-static {v0}, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->e(Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/antivirus/ui/versionUpdate/f;->a:Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    invoke-static {v0}, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->e(Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    goto :goto_0
.end method

.method public final a(II)V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/ui/versionUpdate/f;->a:Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    invoke-static {v0}, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->e(Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/antivirus/ui/versionUpdate/f;->a:Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    new-instance v1, Lorg/antivirus/ui/versionUpdate/g;

    invoke-direct {v1, p0, p2, p1}, Lorg/antivirus/ui/versionUpdate/g;-><init>(Lorg/antivirus/ui/versionUpdate/f;II)V

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Ljava/io/File;)V
    .locals 6

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lorg/antivirus/ui/versionUpdate/f;->a:Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    invoke-virtual {v0}, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v5, "packageinstaller"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    :goto_0
    const/high16 v1, 0x1000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/ui/versionUpdate/f;->a:Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    invoke-virtual {v0, v2}, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/antivirus/ui/versionUpdate/f;->a()V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/versionUpdate/f;->a:Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    invoke-static {v0}, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->h(Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)Z

    move-result v0

    return v0
.end method
