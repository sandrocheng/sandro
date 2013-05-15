.class public Lcom/avast/android/mobilesecurity/t;
.super Lcom/avast/android/generic/ae;
.source "MobileSecuritySettingsApi.java"


# static fields
.field private static final d:Ljava/lang/Object;


# instance fields
.field c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 209
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/t;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lcom/avast/android/generic/ae;-><init>(Landroid/content/Context;)V

    .line 231
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/t;->c:Landroid/content/Context;

    .line 232
    return-void
.end method

.method private l(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1196
    const-string v0, "gLastSeenVersion"

    invoke-virtual {p0, v0, p1}, Lcom/avast/android/mobilesecurity/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->b()Z

    .line 1198
    return-void
.end method


# virtual methods
.method public S()Z
    .locals 2

    .prologue
    .line 240
    const-string v0, "gSettingsWebshieldEnabled"

    const/4 v1, 0x1

    invoke-super {p0, v0, v1}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public T()Z
    .locals 2

    .prologue
    .line 253
    const-string v0, "gSettingsWebshieldPhishingEnabled"

    const/4 v1, 0x1

    invoke-super {p0, v0, v1}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public U()Z
    .locals 2

    .prologue
    .line 266
    const-string v0, "gSettingsWebshieldMalwareEnabled"

    const/4 v1, 0x1

    invoke-super {p0, v0, v1}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public V()Z
    .locals 2

    .prologue
    .line 279
    const-string v0, "gSettingsTyposquattingEnabled"

    const/4 v1, 0x1

    invoke-super {p0, v0, v1}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public W()Z
    .locals 2

    .prologue
    .line 289
    const-string v0, "gSettingsTyposquattingAutocorrect"

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public X()Z
    .locals 2

    .prologue
    .line 305
    const-string v0, "gSettingsFirewallEnabled"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Y()Z
    .locals 2

    .prologue
    .line 314
    const-string v0, "gSettingsFirewallLogEnabled"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Z()Z
    .locals 2

    .prologue
    .line 324
    const-string v0, "gSettingsFirewallIpV6Enabled"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/avast/android/generic/ae;Lcom/avast/android/generic/ae;Ljava/util/HashMap;Lcom/avast/android/generic/af;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 886
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .parameter

    .prologue
    .line 1006
    if-nez p1, :cond_0

    .line 1007
    const-string v0, "settingsScanStorageDirs"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    :goto_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->b()Z

    .line 1019
    return-void

    .line 1009
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1010
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1011
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1013
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_2

    .line 1014
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1016
    :cond_2
    const-string v0, "settingsScanStorageDirs"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/util/Set;)V
    .locals 4
    .parameter

    .prologue
    .line 1029
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1030
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/a;

    .line 1031
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/a;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1033
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 1034
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1036
    :cond_1
    const-string v0, "globalActivityLogFilter"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->b()Z

    .line 1038
    return-void
.end method

.method public aA()V
    .locals 2

    .prologue
    .line 734
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->a()V

    .line 735
    const-string v0, "scannedUrlsTotal"

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->az()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->a(Ljava/lang/String;I)V

    .line 736
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->b()Z

    .line 737
    return-void
.end method

.method public aB()I
    .locals 2

    .prologue
    .line 746
    const-string v0, "scannedStorageShieldFilesTotal"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public aC()Z
    .locals 2

    .prologue
    .line 794
    const-string v0, "gSettingsAutomaticUpdates"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public aD()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 805
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/t;->c:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 807
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 809
    if-nez v0, :cond_0

    move v0, v1

    .line 834
    :goto_0
    return v0

    .line 813
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eq v3, v2, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_2

    .line 817
    :cond_1
    const-string v0, "gSettingsAutoUpdateOnWifi"

    invoke-virtual {p0, v0, v2}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 821
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 822
    const-string v0, "gSettingsAutoUpdateOnRoaming"

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 826
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 830
    :cond_4
    const-string v0, "gSettingsAutoUpdateOnMobile"

    invoke-virtual {p0, v0, v2}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_5
    move v0, v2

    .line 834
    goto :goto_0
.end method

.method public aE()J
    .locals 5

    .prologue
    .line 849
    const-string v0, "gSettingsNextUpdate"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x3a980

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public aF()V
    .locals 2

    .prologue
    .line 865
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->a()V

    .line 866
    const-string v1, "flagApkOutdated"

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/t;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/Application;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/Application;->b()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/avast/android/mobilesecurity/t;->a(Ljava/lang/String;I)V

    .line 869
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->b()Z

    .line 870
    return-void
.end method

.method public aG()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 877
    const-string v0, "flagApkOutdated"

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;I)I

    move-result v2

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/t;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/Application;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/Application;->b()I

    move-result v0

    if-ne v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public aH()Z
    .locals 2

    .prologue
    .line 898
    const-string v0, "gSettingsPupEnabled"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public aI()Z
    .locals 2

    .prologue
    .line 907
    const-string v0, "gSettingsScanWakelock"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public aJ()Z
    .locals 2

    .prologue
    .line 917
    const-string v0, "gFirewallBlacklistMode"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public aK()Z
    .locals 2

    .prologue
    .line 921
    const-string v0, "gSettingsTrafficInfoEnabled"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public aL()I
    .locals 2

    .prologue
    .line 925
    const-string v0, "gSettingsTrafficInfoDayInMonth"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public aM()Z
    .locals 2

    .prologue
    .line 940
    const-string v0, "gRooted"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public aN()Z
    .locals 3

    .prologue
    .line 949
    sget-object v1, Lcom/avast/android/mobilesecurity/t;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 950
    :try_start_0
    const-string v0, "gConnectivityStateChangedReceiverEnabled"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;Z)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 952
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public aO()Z
    .locals 2

    .prologue
    .line 963
    const-string v0, "settingsScanApps"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public aP()Z
    .locals 2

    .prologue
    .line 967
    const-string v0, "settingsScanExternal"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public aQ()Z
    .locals 2

    .prologue
    .line 971
    const-string v0, "settingsScanAutomatic"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public aR()I
    .locals 2

    .prologue
    .line 975
    const-string v0, "settingsScanAutomaticDays"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public aS()I
    .locals 2

    .prologue
    .line 979
    const-string v0, "settingsScanAutomaticTime"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public aT()Ljava/util/List;
    .locals 2

    .prologue
    .line 988
    const-string v0, "settingsScanStorageDirs"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 989
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 990
    const/4 v0, 0x0

    .line 994
    :goto_0
    return-object v0

    .line 992
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 993
    const/4 v1, 0x0

    .line 994
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public aU()Ljava/util/Set;
    .locals 5

    .prologue
    .line 1046
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1047
    const-string v0, "globalActivityLogFilter"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1049
    if-eqz v0, :cond_1

    .line 1050
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1053
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1054
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 1055
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/a;->a(I)Lcom/avast/android/mobilesecurity/app/globalactivitylog/a;

    move-result-object v4

    .line 1057
    if-eqz v4, :cond_0

    .line 1058
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1054
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1063
    :cond_1
    const-class v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/a;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1066
    :cond_2
    return-object v1
.end method

.method public aV()J
    .locals 3

    .prologue
    .line 1086
    const-string v0, "globalActivityLogLastId"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public aW()Z
    .locals 2

    .prologue
    .line 1106
    const-string v0, "gSettingsGlobalActivityLogExternal"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public aX()Z
    .locals 2

    .prologue
    .line 1110
    const-string v0, "sideMenuShown"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public aY()Z
    .locals 2

    .prologue
    .line 1124
    const-string v0, "gSettingsUninstallProtectionEnabled"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public aZ()I
    .locals 2

    .prologue
    .line 1146
    const-string v0, "gPinTimeout"

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public aa()Z
    .locals 2

    .prologue
    .line 334
    const-string v0, "gSettingsFirewallUppermostEnabled"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public ab()Z
    .locals 2

    .prologue
    .line 344
    const-string v0, "gSettingsAppLockingEnabled"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public ac()Z
    .locals 2

    .prologue
    .line 358
    const-string v0, "gSettingsFileShieldEnabled"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public ad()Z
    .locals 2

    .prologue
    .line 378
    const-string v0, "gSettingsFileShieldReadEnabled"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public ae()Z
    .locals 2

    .prologue
    .line 399
    const-string v0, "gSettingsFileShieldWriteEnabled"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public af()Z
    .locals 2

    .prologue
    .line 420
    const-string v0, "gSettingsFileShieldMountEnabled"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public ag()Z
    .locals 2

    .prologue
    .line 441
    const-string v0, "gSettingsAppShieldEnabled"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public ah()Z
    .locals 2

    .prologue
    .line 464
    const-string v0, "gSettingsAppExecShieldEnabled"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public ai()Z
    .locals 2

    .prologue
    .line 488
    const-string v0, "gSettingsAppInstallShieldEnabled"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public aj()Z
    .locals 2

    .prologue
    .line 509
    const-string v0, "gSettingsMessageShieldEnabled"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public ak()Z
    .locals 2

    .prologue
    .line 533
    const-string v0, "gSettingsMessageIncomingShieldEnabled"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public al()Z
    .locals 2

    .prologue
    .line 557
    const-string v0, "gSettingsSmsBlockProposal"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public am()Z
    .locals 2

    .prologue
    .line 578
    const-string v0, "hasMalware"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public an()V
    .locals 2

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->a()V

    .line 583
    const-string v0, "malwareApps"

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->ar()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->a(Ljava/lang/String;I)V

    .line 584
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->b()Z

    .line 585
    return-void
.end method

.method public ao()V
    .locals 3

    .prologue
    .line 588
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->a()V

    .line 589
    const-string v0, "malwareApps"

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->ar()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->a(Ljava/lang/String;I)V

    .line 590
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->b()Z

    .line 591
    return-void
.end method

.method public ap()V
    .locals 2

    .prologue
    .line 612
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->a()V

    .line 613
    const-string v0, "malwareAppsIgnore"

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->at()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->a(Ljava/lang/String;I)V

    .line 614
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->b()Z

    .line 615
    return-void
.end method

.method public aq()V
    .locals 3

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->a()V

    .line 619
    const-string v0, "malwareAppsIgnore"

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->at()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->a(Ljava/lang/String;I)V

    .line 620
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->b()Z

    .line 621
    return-void
.end method

.method public ar()I
    .locals 2

    .prologue
    .line 630
    const-string v0, "malwareApps"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public as()I
    .locals 2

    .prologue
    .line 634
    const-string v0, "malwareFiles"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public at()I
    .locals 2

    .prologue
    .line 638
    const-string v0, "malwareAppsIgnore"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public au()I
    .locals 2

    .prologue
    .line 642
    const-string v0, "malwareFilesIgnore"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public av()I
    .locals 2

    .prologue
    .line 651
    const-string v0, "scannedAppsTotal"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public aw()V
    .locals 2

    .prologue
    .line 670
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->a()V

    .line 671
    const-string v0, "scannedAppsTotal"

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->av()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->a(Ljava/lang/String;I)V

    .line 672
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->b()Z

    .line 673
    return-void
.end method

.method public ax()I
    .locals 2

    .prologue
    .line 681
    const-string v0, "scannedMessagesTotal"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public ay()V
    .locals 2

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->a()V

    .line 702
    const-string v0, "scannedMessagesTotal"

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->ax()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->a(Ljava/lang/String;I)V

    .line 703
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->b()Z

    .line 704
    return-void
.end method

.method public az()I
    .locals 2

    .prologue
    .line 713
    const-string v0, "scannedUrlsTotal"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 1173
    const-string v0, "gLastSeenVersion"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1175
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1177
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1179
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 1180
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1181
    invoke-direct {p0, v1}, Lcom/avast/android/mobilesecurity/t;->l(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1185
    :cond_0
    :goto_0
    return-object v0

    .line 1183
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public b(I)V
    .locals 1
    .parameter

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->a()V

    .line 595
    const-string v0, "malwareApps"

    invoke-virtual {p0, v0, p1}, Lcom/avast/android/mobilesecurity/t;->a(Ljava/lang/String;I)V

    .line 596
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->b()Z

    .line 597
    return-void
.end method

.method public c(I)V
    .locals 1
    .parameter

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->a()V

    .line 601
    const-string v0, "malwareFiles"

    invoke-virtual {p0, v0, p1}, Lcom/avast/android/mobilesecurity/t;->a(Ljava/lang/String;I)V

    .line 602
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->b()Z

    .line 603
    return-void
.end method

.method public d(I)V
    .locals 1
    .parameter

    .prologue
    .line 606
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->a()V

    .line 607
    const-string v0, "malwareAppsIgnore"

    invoke-virtual {p0, v0, p1}, Lcom/avast/android/mobilesecurity/t;->a(Ljava/lang/String;I)V

    .line 608
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->b()Z

    .line 609
    return-void
.end method

.method public e(I)V
    .locals 1
    .parameter

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->a()V

    .line 625
    const-string v0, "malwareFilesIgnore"

    invoke-virtual {p0, v0, p1}, Lcom/avast/android/mobilesecurity/t;->a(Ljava/lang/String;I)V

    .line 626
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->b()Z

    .line 627
    return-void
.end method

.method public f(I)V
    .locals 2
    .parameter

    .prologue
    .line 781
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->a()V

    .line 782
    const-string v0, "scannedStorageShieldFilesTotal"

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->aB()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/t;->a(Ljava/lang/String;I)V

    .line 784
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->b()Z

    .line 785
    return-void
.end method

.method public f(Z)V
    .locals 1
    .parameter

    .prologue
    .line 300
    const-string v0, "gSettingsTyposquattingAutocorrect"

    invoke-virtual {p0, v0, p1}, Lcom/avast/android/mobilesecurity/t;->a(Ljava/lang/String;Z)V

    .line 301
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->b()Z

    .line 302
    return-void
.end method

.method public g(J)V
    .locals 1
    .parameter

    .prologue
    .line 843
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->a()V

    .line 844
    const-string v0, "gSettingsNextUpdate"

    invoke-virtual {p0, v0, p1, p2}, Lcom/avast/android/mobilesecurity/t;->a(Ljava/lang/String;J)V

    .line 845
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->b()Z

    .line 846
    return-void
.end method

.method public g(I)Z
    .locals 1
    .parameter

    .prologue
    .line 935
    const-string v0, "gSettingsTrafficInfoDayInMonth"

    invoke-virtual {p0, v0, p1}, Lcom/avast/android/mobilesecurity/t;->a(Ljava/lang/String;I)V

    .line 936
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->b()Z

    move-result v0

    return v0
.end method

.method public g(Z)Z
    .locals 1
    .parameter

    .prologue
    .line 309
    const-string v0, "gSettingsFirewallEnabled"

    invoke-virtual {p0, v0, p1}, Lcom/avast/android/mobilesecurity/t;->a(Ljava/lang/String;Z)V

    .line 310
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->b()Z

    move-result v0

    return v0
.end method

.method public h(J)V
    .locals 1
    .parameter

    .prologue
    .line 1076
    const-string v0, "globalActivityLogLastId"

    invoke-virtual {p0, v0, p1, p2}, Lcom/avast/android/mobilesecurity/t;->a(Ljava/lang/String;J)V

    .line 1077
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->b()Z

    .line 1078
    return-void
.end method

.method public h(Z)V
    .locals 1
    .parameter

    .prologue
    .line 319
    const-string v0, "gSettingsFirewallLogEnabled"

    invoke-virtual {p0, v0, p1}, Lcom/avast/android/mobilesecurity/t;->a(Ljava/lang/String;Z)V

    .line 320
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->b()Z

    .line 321
    return-void
.end method

.method public i(Z)V
    .locals 1
    .parameter

    .prologue
    .line 329
    const-string v0, "gSettingsFirewallIpV6Enabled"

    invoke-virtual {p0, v0, p1}, Lcom/avast/android/mobilesecurity/t;->a(Ljava/lang/String;Z)V

    .line 330
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->b()Z

    .line 331
    return-void
.end method

.method public j(Z)V
    .locals 1
    .parameter

    .prologue
    .line 339
    const-string v0, "gSettingsFirewallUppermostEnabled"

    invoke-virtual {p0, v0, p1}, Lcom/avast/android/mobilesecurity/t;->a(Ljava/lang/String;Z)V

    .line 340
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->b()Z

    .line 341
    return-void
.end method

.method public k(Z)V
    .locals 1
    .parameter

    .prologue
    .line 389
    const-string v0, "gSettingsFileShieldReadEnabled"

    invoke-virtual {p0, v0, p1}, Lcom/avast/android/mobilesecurity/t;->a(Ljava/lang/String;Z)V

    .line 390
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->b()Z

    .line 391
    return-void
.end method

.method public l(Z)V
    .locals 1
    .parameter

    .prologue
    .line 573
    const-string v0, "hasMalware"

    invoke-virtual {p0, v0, p1}, Lcom/avast/android/mobilesecurity/t;->a(Ljava/lang/String;Z)V

    .line 574
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->b()Z

    .line 575
    return-void
.end method

.method public m(Z)V
    .locals 1
    .parameter

    .prologue
    .line 911
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->a()V

    .line 912
    const-string v0, "gFirewallBlacklistMode"

    invoke-virtual {p0, v0, p1}, Lcom/avast/android/mobilesecurity/t;->a(Ljava/lang/String;Z)V

    .line 913
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->b()Z

    .line 914
    return-void
.end method

.method public n(Z)Z
    .locals 1
    .parameter

    .prologue
    .line 930
    const-string v0, "gSettingsTrafficInfoEnabled"

    invoke-virtual {p0, v0, p1}, Lcom/avast/android/mobilesecurity/t;->a(Ljava/lang/String;Z)V

    .line 931
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->b()Z

    move-result v0

    return v0
.end method

.method public o(Z)Z
    .locals 1
    .parameter

    .prologue
    .line 944
    const-string v0, "gRooted"

    invoke-virtual {p0, v0, p1}, Lcom/avast/android/mobilesecurity/t;->a(Ljava/lang/String;Z)V

    .line 945
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->b()Z

    move-result v0

    return v0
.end method

.method public p(Z)Z
    .locals 2
    .parameter

    .prologue
    .line 956
    sget-object v1, Lcom/avast/android/mobilesecurity/t;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 957
    :try_start_0
    const-string v0, "gConnectivityStateChangedReceiverEnabled"

    invoke-virtual {p0, v0, p1}, Lcom/avast/android/mobilesecurity/t;->a(Ljava/lang/String;Z)V

    .line 958
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->b()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 959
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public q(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1114
    const-string v0, "sideMenuShown"

    invoke-virtual {p0, v0, p1}, Lcom/avast/android/mobilesecurity/t;->a(Ljava/lang/String;Z)V

    .line 1115
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->b()Z

    .line 1116
    return-void
.end method
