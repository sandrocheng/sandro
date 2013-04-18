.class public Lcom/keniu/security/MoSecurityApplication;
.super Landroid/app/Application;
.source "MoSecurityApplication.java"


# static fields
.field public static final a:Ljava/lang/String; = "preVersion"

.field private static b:Lcom/keniu/security/MoSecurityApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 23
    sput-object p0, Lcom/keniu/security/MoSecurityApplication;->b:Lcom/keniu/security/MoSecurityApplication;

    .line 24
    return-void
.end method

.method public static a()Lcom/keniu/security/MoSecurityApplication;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/keniu/security/MoSecurityApplication;->b:Lcom/keniu/security/MoSecurityApplication;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 28
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 31
    invoke-static {}, Lcom/keniu/security/g;->a()Lcom/keniu/security/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/g;->a(Landroid/content/Context;)V

    .line 33
    const-string v0, "com.ijinshan.mguard"

    const-string v1, "04f9c347e182fe08"

    invoke-static {p0, v0, v1}, Lcn/com/wali/zft/plugin;->Init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 35
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 47
    :try_start_0
    invoke-virtual {p0}, Lcom/keniu/security/MoSecurityApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keniu/security/MoSecurityApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 48
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 49
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 55
    :goto_0
    invoke-static {p0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 57
    const-string v2, "preVersion"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 61
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 62
    const-string v2, "preVersion"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 66
    :cond_1
    invoke-static {p0}, Lcom/keniu/security/monitor/MonitorNetworkConnectivity;->a(Landroid/content/Context;)V

    .line 67
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/f/ab;->a(Landroid/content/Context;)Z

    .line 68
    invoke-static {p0}, Lcom/keniu/security/d;->a(Landroid/content/Context;)V

    .line 69
    return-void

    .line 51
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v4

    goto :goto_0
.end method
