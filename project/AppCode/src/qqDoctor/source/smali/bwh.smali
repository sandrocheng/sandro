.class final Lbwh;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/content/SharedPreferences;

.field b:Landroid/content/SharedPreferences$Editor;

.field c:Lbwt;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lbwh;->d:Landroid/content/Context;

    iget-object v0, p0, Lbwh;->d:Landroid/content/Context;

    const-string v1, "traffic_xml"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lbwh;->a:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lbwh;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lbwh;->b:Landroid/content/SharedPreferences$Editor;

    new-instance v0, Lbwt;

    invoke-direct {v0}, Lbwt;-><init>()V

    iput-object v0, p0, Lbwh;->c:Lbwt;

    const-class v0, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

    new-instance v1, Lbwi;

    invoke-direct {v1, p0}, Lbwi;-><init>(Lbwh;)V

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;->addListener(Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;)Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)I
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lbwh;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_1
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public final a([Ljava/lang/String;)V
    .locals 9

    const-wide/16 v7, 0x0

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lbwh;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lbwh;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v2}, Lbwh;->b(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/TrafficEntity;

    move-result-object v4

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    if-eqz v4, :cond_1

    iget-object v5, p0, Lbwh;->c:Lbwt;

    invoke-virtual {v5, v3}, Lbwt;->b(I)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mLastUpValue:J

    iget-object v5, p0, Lbwh;->c:Lbwt;

    invoke-virtual {v5, v3}, Lbwt;->a(I)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mLastDownValue:J

    iput-wide v7, v4, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mMobileDownValue:J

    iput-wide v7, v4, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mMobileUpValue:J

    iput-wide v7, v4, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mWIFIDownValue:J

    iput-wide v7, v4, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mWIFIUpValue:J

    iget-object v3, p0, Lbwh;->b:Landroid/content/SharedPreferences$Editor;

    invoke-static {v4}, Lcom/tencent/tmsecure/module/network/TrafficEntity;->toString(Lcom/tencent/tmsecure/module/network/TrafficEntity;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lbwh;->b:Landroid/content/SharedPreferences$Editor;

    const-string v4, "EMPTY"

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/TrafficEntity;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lbwh;->a(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lbwh;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    if-eqz v2, :cond_0

    const-string v1, "EMPTY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v2}, Lcom/tencent/tmsecure/module/network/TrafficEntity;->fromString(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/TrafficEntity;

    move-result-object v0

    :cond_0
    return-object v0
.end method
