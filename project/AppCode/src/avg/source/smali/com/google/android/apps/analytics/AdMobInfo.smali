.class public Lcom/google/android/apps/analytics/AdMobInfo;
.super Ljava/lang/Object;


# static fields
.field private static final INSTANCE:Lcom/google/android/apps/analytics/AdMobInfo;


# instance fields
.field private adHitId:I

.field private random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/apps/analytics/AdMobInfo;

    invoke-direct {v0}, Lcom/google/android/apps/analytics/AdMobInfo;-><init>()V

    sput-object v0, Lcom/google/android/apps/analytics/AdMobInfo;->INSTANCE:Lcom/google/android/apps/analytics/AdMobInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/analytics/AdMobInfo;->random:Ljava/util/Random;

    return-void
.end method

.method public static getInstance()Lcom/google/android/apps/analytics/AdMobInfo;
    .locals 1

    sget-object v0, Lcom/google/android/apps/analytics/AdMobInfo;->INSTANCE:Lcom/google/android/apps/analytics/AdMobInfo;

    return-object v0
.end method


# virtual methods
.method public generateAdHitId()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/AdMobInfo;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/analytics/AdMobInfo;->adHitId:I

    iget v0, p0, Lcom/google/android/apps/analytics/AdMobInfo;->adHitId:I

    return v0
.end method

.method public getAdHitId()I
    .locals 1

    iget v0, p0, Lcom/google/android/apps/analytics/AdMobInfo;->adHitId:I

    return v0
.end method

.method public getJoinId()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/apps/analytics/AdMobInfo;->adHitId:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getVisitorIdForAds()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getSessionIdForAds()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const-string v0, "A,%s,%s,%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object v1, v3, v2

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/apps/analytics/AdMobInfo;->adHitId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setAdHitId(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/apps/analytics/AdMobInfo;->adHitId:I

    return-void
.end method
