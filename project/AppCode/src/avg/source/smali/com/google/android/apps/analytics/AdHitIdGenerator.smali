.class public Lcom/google/android/apps/analytics/AdHitIdGenerator;
.super Ljava/lang/Object;


# instance fields
.field private adMobSdkInstalled:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "com.google.ads.AdRequest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/apps/analytics/AdHitIdGenerator;->adMobSdkInstalled:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    iput-boolean v1, p0, Lcom/google/android/apps/analytics/AdHitIdGenerator;->adMobSdkInstalled:Z

    goto :goto_1
.end method

.method constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/apps/analytics/AdHitIdGenerator;->adMobSdkInstalled:Z

    return-void
.end method


# virtual methods
.method getAdHitId()I
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/apps/analytics/AdHitIdGenerator;->adMobSdkInstalled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/apps/analytics/AdMobInfo;->getInstance()Lcom/google/android/apps/analytics/AdMobInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/AdMobInfo;->generateAdHitId()I

    move-result v0

    goto :goto_0
.end method
