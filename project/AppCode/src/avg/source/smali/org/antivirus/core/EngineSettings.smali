.class public Lorg/antivirus/core/EngineSettings;
.super Ljava/lang/Object;


# static fields
.field public static final APP_NAME:Ljava/lang/String; = "Antivirus Pro"

.field public static final APP_VERSION:Ljava/lang/String; = "3.0.3"

.field public static final APP_VERSION_REVISION:Ljava/lang/String; = "174757"

.field public static final AWS_DOMAIN:Ljava/lang/String; = "aws.droidsecurity.com"

.field public static final AWS_URI:Ljava/lang/String; = "https://aws.droidsecurity.com"

.field public static final AWS_XMLRPC_URI:Ljava/lang/String; = "https://aws.droidsecurity.com/xmlrpc"

.field public static final HOTFIX_URI:Ljava/lang/String; = "https://droidsecurity.appspot.com/openrest/dsfs/antivirus/jars/hotfixes28.apk"

.field public static final IS_IGNORE_NON_MARKET_CHECK:Z = false

.field public static final IS_SECURE_COMMS:Z = true

.field public static final KEY_UNIQUE_IDENTIFIER:Ljava/lang/String; = "droidsecurity.uniqueid"

.field public static final WEBSERVICE_SERVER_URI:Ljava/lang/String; = "https://droidsecurity.appspot.com"

.field public static final WWW_SERVER_DOMAIN_NAME:Ljava/lang/String; = "www.avgmobilation.com"

.field public static final XMLRPC_SERVER_URI:Ljava/lang/String; = "https://droidsecurity.appspot.com/secure/xmlrpc"


# instance fields
.field public mPref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "av"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/core/EngineSettings;->mPref:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public decryptit(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x5

    const/4 v1, 0x0

    if-nez p1, :cond_1

    const-string v0, "got null"

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_0

    move v2, v1

    move v0, v1

    :goto_1
    if-ge v2, v5, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_2

    const/4 v0, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-nez v0, :cond_0

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/a/a/a/a/a;->a(Ljava/lang/String;)[B

    move-result-object v2

    move v0, v1

    :goto_2
    array-length v1, v2

    if-ge v0, v1, :cond_4

    aget-byte v1, v2, v0

    xor-int/lit8 v1, v1, 0xb

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public encryptit(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string v0, "got null"

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    const-string p1, ""

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move v0, v1

    :goto_0
    array-length v2, v3

    if-ge v0, v2, :cond_1

    aget-byte v2, v3, v0

    xor-int/lit8 v2, v2, 0xb

    int-to-byte v2, v2

    aput-byte v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, ""

    move-object v2, v0

    move v0, v1

    :goto_1
    const/4 v4, 0x5

    if-ge v0, v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x5f

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    invoke-static {v3, v1}, Lorg/a/a/a/a/a;->a([BZ)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAWSserver()Z
    .locals 3

    iget-object v0, p0, Lorg/antivirus/core/EngineSettings;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "use_aws_server"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getAppUpdateAggregate(Z)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/antivirus/core/EngineSettings;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "app_update_agregate"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAutoScanInterval()J
    .locals 4

    iget-object v0, p0, Lorg/antivirus/core/EngineSettings;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "auto_scan_interval"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAutoScanLastTime()J
    .locals 4

    iget-object v0, p0, Lorg/antivirus/core/EngineSettings;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "auto_scan_last_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCloudServicesNextUpdate()J
    .locals 4

    iget-object v0, p0, Lorg/antivirus/core/EngineSettings;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "cloud_services_next_update"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCloudServicesUpdateTime()J
    .locals 4

    iget-object v0, p0, Lorg/antivirus/core/EngineSettings;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "cloud_services_update_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDeviceRegisterLastParams()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/antivirus/core/EngineSettings;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "device_control_last_params"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/antivirus/core/EngineSettings;->decryptit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGpsInDevice()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/antivirus/core/EngineSettings;->mPref:Landroid/content/SharedPreferences;

    const-string v2, "gps_in_device_sp"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getHiddenUniqueId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "droidsecurity.uniqueid"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIgnoreFiles()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/antivirus/core/EngineSettings;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "ignore_files"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIgnorePackages()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/antivirus/core/EngineSettings;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "ignore_packages"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIgnoreSettings()I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/antivirus/core/EngineSettings;->mPref:Landroid/content/SharedPreferences;

    const-string v2, "ignore_settings"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getLastSecurityUpdate()J
    .locals 4

    iget-object v0, p0, Lorg/antivirus/core/EngineSettings;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "last_update_long"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/antivirus/core/EngineSettings;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "line1number"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextSecurityUpdate()J
    .locals 4

    iget-object v0, p0, Lorg/antivirus/core/EngineSettings;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "next_update_long"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getReferrerReceived()Z
    .locals 3

    iget-object v0, p0, Lorg/antivirus/core/EngineSettings;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "referrer_received"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getSecDbVersion()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/antivirus/core/EngineSettings;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "secbd_firewall"

    const-string v2, "55050121"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecurityThreats1()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/antivirus/core/EngineSettings;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "security_threats_1"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecurityThreats2()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/antivirus/core/EngineSettings;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "security_threats_2"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecurityThreatsCount1()I
    .locals 3

    iget-object v0, p0, Lorg/antivirus/core/EngineSettings;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "security_threats_count_1"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSecurityThreatsCount2()I
    .locals 3

    iget-object v0, p0, Lorg/antivirus/core/EngineSettings;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "security_threats_count_2"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSecurityThreatsCurrentLog()I
    .locals 3

    iget-object v0, p0, Lorg/antivirus/core/EngineSettings;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "security_threats_current_log"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSimID()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/antivirus/core/EngineSettings;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "sim_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/antivirus/core/EngineSettings;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "droidsecurity.uniqueid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateInterval()J
    .locals 4

    iget-object v0, p0, Lorg/antivirus/core/EngineSettings;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "update_interval"

    const-wide/32 v2, 0x5265c00

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public isAutoScanSMS()Z
    .locals 3

    iget-object v0, p0, Lorg/antivirus/core/EngineSettings;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "auto_scan_sms"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPUPEnabled()Z
    .locals 3

    iget-object v0, p0, Lorg/antivirus/core/EngineSettings;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "enable_pup"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSDScanEnabled()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/antivirus/core/EngineSettings;->mPref:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lorg/antivirus/core/EngineSettings;->mPref:Landroid/content/SharedPreferences;

    const-string v2, "do_sd_Scan"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public removeIgnoreFile(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/antivirus/core/EngineSettings;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "ignore_files"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/core/EngineSettings;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "ignore_files"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public removeIgnorePackages(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/antivirus/core/EngineSettings;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "ignore_packages"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/core/EngineSettings;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "ignore_packages"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setAWSserver()V
    .locals 2

    const-string v0, "use_aws_server"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/antivirus/core/EngineSettings;->setAndCommit(Ljava/lang/String;Z)V

    return-void
.end method

.method public setAndCommit(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/core/EngineSettings;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setAndCommit(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/core/EngineSettings;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setAndCommit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/core/EngineSettings;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setAndCommit(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/core/EngineSettings;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setAppUpdateAggregate(Ljava/lang/String;)V
    .locals 1

    const-string v0, "app_update_agregate"

    invoke-virtual {p0, v0, p1}, Lorg/antivirus/core/EngineSettings;->setAndCommit(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAutoScanInterval(J)V
    .locals 1

    const-string v0, "auto_scan_interval"

    invoke-virtual {p0, v0, p1, p2}, Lorg/antivirus/core/EngineSettings;->setAndCommit(Ljava/lang/String;J)V

    return-void
.end method

.method public setAutoScanLastTime(J)V
    .locals 1

    const-string v0, "auto_scan_last_time"

    invoke-virtual {p0, v0, p1, p2}, Lorg/antivirus/core/EngineSettings;->setAndCommit(Ljava/lang/String;J)V

    return-void
.end method

.method public setAutoScanSMS(Z)V
    .locals 1

    const-string v0, "auto_scan_sms"

    invoke-virtual {p0, v0, p1}, Lorg/antivirus/core/EngineSettings;->setAndCommit(Ljava/lang/String;Z)V

    return-void
.end method

.method public setCloudServicesNextUpdate(J)V
    .locals 1

    const-string v0, "cloud_services_next_update"

    invoke-virtual {p0, v0, p1, p2}, Lorg/antivirus/core/EngineSettings;->setAndCommit(Ljava/lang/String;J)V

    return-void
.end method

.method public setCloudServicesUpdateTime(J)V
    .locals 1

    const-string v0, "cloud_services_update_time"

    invoke-virtual {p0, v0, p1, p2}, Lorg/antivirus/core/EngineSettings;->setAndCommit(Ljava/lang/String;J)V

    return-void
.end method

.method public setDefaultValuesIfNeeded(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/antivirus/core/EngineSettings;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "first_use_sdk"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/antivirus/core/EngineSettings;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ignore_settings"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "sim_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "line1number"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "last_update_long"

    const-wide/32 v2, 0x4adbcef8

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "auto_scan_sms"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "first_use_sdk"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public setDeviceRegisterLastParams(Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/antivirus/core/EngineSettings;->encryptit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "device_control_last_params"

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public setGpsInDevice(Z)V
    .locals 1

    const-string v0, "gps_in_device_sp"

    invoke-virtual {p0, v0, p1}, Lorg/antivirus/core/EngineSettings;->setAndCommit(Ljava/lang/String;Z)V

    return-void
.end method

.method public setHiddenUniqueId(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "droidsecurity.uniqueid"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setIgnoreFile(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lorg/antivirus/core/EngineSettings;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "ignore_files"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/core/EngineSettings;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "ignore_files"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setIgnorePackages(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/antivirus/core/EngineSettings;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "ignore_packages"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lorg/antivirus/core/EngineSettings;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ignore_packages"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setIgnoreSettings(I)V
    .locals 1

    const-string v0, "ignore_settings"

    invoke-virtual {p0, v0, p1}, Lorg/antivirus/core/EngineSettings;->setAndCommit(Ljava/lang/String;I)V

    return-void
.end method

.method public setLastSecurityUpdate(J)V
    .locals 1

    const-string v0, "last_update_long"

    invoke-virtual {p0, v0, p1, p2}, Lorg/antivirus/core/EngineSettings;->setAndCommit(Ljava/lang/String;J)V

    return-void
.end method

.method public setLine1Number(Ljava/lang/String;)V
    .locals 1

    const-string v0, "line1number"

    invoke-virtual {p0, v0, p1}, Lorg/antivirus/core/EngineSettings;->setAndCommit(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNextSecurityUpdate(J)V
    .locals 1

    const-string v0, "next_update_long"

    invoke-virtual {p0, v0, p1, p2}, Lorg/antivirus/core/EngineSettings;->setAndCommit(Ljava/lang/String;J)V

    return-void
.end method

.method public setPUPEnabled(Z)V
    .locals 1

    const-string v0, "enable_pup"

    invoke-virtual {p0, v0, p1}, Lorg/antivirus/core/EngineSettings;->setAndCommit(Ljava/lang/String;Z)V

    return-void
.end method

.method public setReferrerReceived(Z)V
    .locals 1

    const-string v0, "referrer_received"

    invoke-virtual {p0, v0, p1}, Lorg/antivirus/core/EngineSettings;->setAndCommit(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSDScanEnabled(Z)V
    .locals 1

    const-string v0, "do_sd_Scan"

    invoke-virtual {p0, v0, p1}, Lorg/antivirus/core/EngineSettings;->setAndCommit(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSecDbVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "secbd_firewall"

    invoke-virtual {p0, v0, p1}, Lorg/antivirus/core/EngineSettings;->setAndCommit(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSecurityThreats1(Ljava/lang/String;)V
    .locals 1

    const-string v0, "security_threats_1"

    invoke-virtual {p0, v0, p1}, Lorg/antivirus/core/EngineSettings;->setAndCommit(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSecurityThreats2(Ljava/lang/String;)V
    .locals 1

    const-string v0, "security_threats_2"

    invoke-virtual {p0, v0, p1}, Lorg/antivirus/core/EngineSettings;->setAndCommit(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSecurityThreatsCount1(I)V
    .locals 1

    const-string v0, "security_threats_count_1"

    invoke-virtual {p0, v0, p1}, Lorg/antivirus/core/EngineSettings;->setAndCommit(Ljava/lang/String;I)V

    return-void
.end method

.method public setSecurityThreatsCount2(I)V
    .locals 1

    const-string v0, "security_threats_count_2"

    invoke-virtual {p0, v0, p1}, Lorg/antivirus/core/EngineSettings;->setAndCommit(Ljava/lang/String;I)V

    return-void
.end method

.method public setSecurityThreatsCurrentLog(I)V
    .locals 1

    const-string v0, "security_threats_current_log"

    invoke-virtual {p0, v0, p1}, Lorg/antivirus/core/EngineSettings;->setAndCommit(Ljava/lang/String;I)V

    return-void
.end method

.method public setSimID(Ljava/lang/String;)V
    .locals 1

    const-string v0, "sim_id"

    invoke-virtual {p0, v0, p1}, Lorg/antivirus/core/EngineSettings;->setAndCommit(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUniqueId(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    const-string v0, "droidsecurity.uniqueid"

    invoke-virtual {p0, v0, p1}, Lorg/antivirus/core/EngineSettings;->setAndCommit(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lorg/antivirus/core/EngineSettings;->setHiddenUniqueId(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public setUpdateInterval(J)V
    .locals 1

    const-string v0, "update_interval"

    invoke-virtual {p0, v0, p1, p2}, Lorg/antivirus/core/EngineSettings;->setAndCommit(Ljava/lang/String;J)V

    return-void
.end method
