.class public Lbl;
.super Lbh;

# interfaces
.implements Lca;


# static fields
.field private static i:Lca;

.field private static j:Landroid/content/Context;


# instance fields
.field private k:Landroid/content/SharedPreferences;

.field private l:Landroid/content/SharedPreferences$Editor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lbl;->i:Lca;

    sput-object v0, Lbl;->j:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v3, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lbh;-><init>()V

    iput-object v0, p0, Lbl;->k:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lbl;->l:Landroid/content/SharedPreferences$Editor;

    sput-object p1, Lbl;->j:Landroid/content/Context;

    if-eqz p1, :cond_0

    sget-object v0, Lbl;->j:Landroid/content/Context;

    const-string v1, "SettingInfo"

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lbl;->k:Landroid/content/SharedPreferences;

    :cond_0
    iget-object v0, p0, Lbl;->k:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbl;->k:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lbl;->l:Landroid/content/SharedPreferences$Editor;

    :cond_1
    sget-object v0, Lbl;->j:Landroid/content/Context;

    const-string v1, "ConfigFactory"

    const-string v2, "initEnvironment enter"

    invoke-static {v1, v2}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lbk;->a()Z

    const-string v1, "ConfigFactory"

    const-string v2, "initEnvironment local mode envir"

    invoke-static {v1, v2}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ConfigFactory"

    const-string v2, "initLocalModeEnvir enter"

    invoke-static {v1, v2}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lbi;

    invoke-direct {v1, v0}, Lbi;-><init>(Landroid/content/Context;)V

    iget-boolean v0, v1, Lbi;->b:Z

    if-eqz v0, :cond_8

    const-string v0, "ConfigFactory"

    const-string v1, "initLocalModeEnvir initReleaseEnvironment"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ConfigFactory"

    const-string v1, "initEnvironment initReleaseEnvironment"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sync.3g.qq.com"

    sput-object v0, Lbh;->f:Ljava/lang/String;

    const-string v0, "http://jsync.3g.qq.com/android"

    sput-object v0, Lbh;->g:Ljava/lang/String;

    sput-boolean v5, Lbh;->c:Z

    const-string v0, "ConfigFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setLOGCAT_DISPLAY_ENABLE lOGCAT_DISPLAY_ENABLE=false"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v5, Lbh;->b:Z

    sput v3, Lbh;->d:I

    sput v7, Lbh;->e:I

    :goto_0
    const-string v0, "ConfigFactory"

    const-string v1, "initLocalModeEnvir end"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ConfigFactory"

    const-string v1, "initEnvironment end"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ConfigDao"

    const-string v1, "ExceptionReportSetting"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget v0, Lbh;->e:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    const-string v0, "ConfigDao"

    const-string v1, "ExceptionReportSetting end"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ConfigDao"

    const-string v1, "AdaptiveOldLocalConfig() enter"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lca$a;->a:Lca$a;

    iget-object v1, p0, Lbl;->k:Landroid/content/SharedPreferences;

    invoke-virtual {v0}, Lca$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "ConfigDao"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AdaptiveOldLocalConfig() localConfigVersion="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lbh;->f:Ljava/lang/String;

    iget-object v1, p0, Lbl;->l:Landroid/content/SharedPreferences$Editor;

    sget-object v2, Lca$a;->f:Lca$a;

    invoke-virtual {v2}, Lca$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v0, Lbl;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lbl;->j:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v3, "000000000000000"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const-string v1, "123456789012345"

    :cond_3
    if-eqz v2, :cond_4

    const-string v3, "qqphonebook"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PHNB:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    :goto_2
    iget-object v3, p0, Lbl;->l:Landroid/content/SharedPreferences$Editor;

    sget-object v4, Lca$a;->h:Lca$a;

    invoke-virtual {v4}, Lca$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbl;->l:Landroid/content/SharedPreferences$Editor;

    sget-object v3, Lca$a;->i:Lca$a;

    invoke-virtual {v3}, Lca$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :try_start_1
    sget-object v0, Lbl;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget-object v1, p0, Lbl;->l:Landroid/content/SharedPreferences$Editor;

    sget-object v3, Lca$a;->j:Lca$a;

    invoke-virtual {v3}, Lca$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    sget-object v0, Lbl;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/files/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbl;->l:Landroid/content/SharedPreferences$Editor;

    sget-object v2, Lca$a;->g:Lca$a;

    invoke-virtual {v2}, Lca$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lbl;->k:Landroid/content/SharedPreferences;

    sget-object v1, Lca$a;->k:Lca$a;

    invoke-virtual {v1}, Lca$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lbl;->l:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lca$a;->k:Lca$a;

    invoke-virtual {v1}, Lca$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_5
    iget-object v0, p0, Lbl;->l:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Lbi;

    sget-object v1, Lbl;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Lbi;-><init>(Landroid/content/Context;)V

    iget-object v0, v0, Lbi;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iput-object v0, p0, Lbl;->h:Ljava/lang/String;

    :cond_6
    sget-object v0, Lca$a;->m:Lca$a;

    iget-object v1, p0, Lbl;->k:Landroid/content/SharedPreferences;

    invoke-virtual {v0}, Lca$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "ConfigDao"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initDefaultConfig() isFirstRun="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_7

    const-string v0, "ConfigDao"

    const-string v1, "initDefaultConfig() init as default"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lca$a;->a:Lca$a;

    iget-object v1, p0, Lbl;->l:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v0}, Lca$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v0, Lca$a;->t:Lca$a;

    iget-object v1, p0, Lbl;->l:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v0}, Lca$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v0, Lca$a;->s:Lca$a;

    iget-object v1, p0, Lbl;->l:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v0}, Lca$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v0, Lca$a;->n:Lca$a;

    iget-object v1, p0, Lbl;->l:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v0}, Lca$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_7
    return-void

    :cond_8
    sget-boolean v0, Lbh;->a:Z

    if-eqz v0, :cond_9

    const-string v0, "ConfigFactory"

    const-string v1, "initLocalModeEnvir initDebugEnvironmentWithReleaseServer"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sync.3g.qq.com"

    sput-object v0, Lbh;->f:Ljava/lang/String;

    const-string v0, "http://jsync.3g.qq.com/android"

    sput-object v0, Lbh;->g:Ljava/lang/String;

    sput-boolean v5, Lbh;->c:Z

    const-string v0, "ConfigFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setLOGCAT_DISPLAY_ENABLE lOGCAT_DISPLAY_ENABLE=false"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v5, Lbh;->b:Z

    sput v3, Lbh;->d:I

    sput v7, Lbh;->e:I

    const-string v0, "ConfigFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setLOGCAT_DISPLAY_ENABLE lOGCAT_DISPLAY_ENABLE=true"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v6, Lbh;->b:Z

    goto/16 :goto_0

    :cond_9
    const-string v0, "ConfigFactory"

    const-string v1, "initLocalModeEnvir initDebugEnvironment"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "newsynctest.cs0309.3g.qq.com"

    sput-object v0, Lbh;->f:Ljava/lang/String;

    const-string v0, "http://jsync.cs0309.3g.qq.com/android"

    sput-object v0, Lbh;->g:Ljava/lang/String;

    const-string v0, "ConfigFactory"

    const-string v1, "initDebugServer"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v6, Lbh;->c:Z

    const-string v0, "ConfigFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setLOGCAT_DISPLAY_ENABLE lOGCAT_DISPLAY_ENABLE=true"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v6, Lbh;->b:Z

    sput v3, Lbh;->d:I

    sput v7, Lbh;->e:I

    goto/16 :goto_0

    :pswitch_1
    const/4 v0, 0x0

    :try_start_2
    invoke-static {v0}, Lcom/tencent/feedback/eup/ExceptionUpload;->setDefaultEUP(Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string v1, "ConfigDao"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ExceptionReportSetting e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldk;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_2
    const/4 v0, 0x1

    :try_start_3
    invoke-static {v0}, Lcom/tencent/feedback/eup/ExceptionUpload;->setDefaultEUP(Z)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    :cond_a
    const-string v3, "qqpimsecure"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "QMDOMO:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_b
    const-string v3, "com.tencent.mm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "QQWX:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_c
    const-string v3, "com.tencent.pengyou"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "QQPY:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    const-string v1, "ConfigDao"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initConfigDao(), "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldk;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static f()Lca;
    .locals 3

    sget-object v0, Lbl;->i:Lca;

    if-eqz v0, :cond_0

    sget-object v0, Lbl;->j:Landroid/content/Context;

    if-nez v0, :cond_3

    :cond_0
    const-class v1, Lbl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lbl;->i:Lca;

    if-eqz v0, :cond_1

    sget-object v0, Lbl;->j:Landroid/content/Context;

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lbl;

    sget-object v2, Lde;->b:Landroid/content/Context;

    invoke-direct {v0, v2}, Lbl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lbl;->i:Lca;

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    sget-object v0, Lbl;->i:Lca;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lca$a;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lbl;->k:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Lca$a;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lca$a;I)V
    .locals 2

    iget-object v0, p0, Lbl;->l:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lca$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final a(Lca$a;J)V
    .locals 2

    iget-object v0, p0, Lbl;->l:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lca$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final a(Lca$a;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lbl;->l:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lca$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lbl;->j:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lbl;->j:Landroid/content/Context;

    invoke-static {p1, v0}, La;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method public final b(Lca$a;)I
    .locals 3

    iget-object v0, p0, Lbl;->k:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Lca$a;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final c(Lca$a;)J
    .locals 4

    iget-object v0, p0, Lbl;->k:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Lca$a;->a()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(Lca$a;)Z
    .locals 3

    iget-object v0, p0, Lbl;->k:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Lca$a;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbl;->h:Ljava/lang/String;

    return-object v0
.end method
