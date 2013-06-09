.class Lcom/google/android/apps/analytics/Referrer;
.super Ljava/lang/Object;


# instance fields
.field private final index:I

.field private final referrer:Ljava/lang/String;

.field private final timeStamp:J

.field private final visit:I


# direct methods
.method constructor <init>(Ljava/lang/String;JII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/analytics/Referrer;->referrer:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/apps/analytics/Referrer;->timeStamp:J

    iput p4, p0, Lcom/google/android/apps/analytics/Referrer;->visit:I

    iput p5, p0, Lcom/google/android/apps/analytics/Referrer;->index:I

    return-void
.end method


# virtual methods
.method getIndex()I
    .locals 1

    iget v0, p0, Lcom/google/android/apps/analytics/Referrer;->index:I

    return v0
.end method

.method getReferrerString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/Referrer;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/apps/analytics/Referrer;->timeStamp:J

    return-wide v0
.end method

.method getVisit()I
    .locals 1

    iget v0, p0, Lcom/google/android/apps/analytics/Referrer;->visit:I

    return v0
.end method
