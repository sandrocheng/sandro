.class Lcom/google/analytics/tracking/android/ag;
.super Ljava/lang/Object;
.source "GAServiceProxy.java"


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:J

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    iput-object p1, p0, Lcom/google/analytics/tracking/android/ag;->a:Ljava/util/Map;

    .line 386
    iput-wide p2, p0, Lcom/google/analytics/tracking/android/ag;->b:J

    .line 387
    iput-object p4, p0, Lcom/google/analytics/tracking/android/ag;->c:Ljava/lang/String;

    .line 388
    iput-object p5, p0, Lcom/google/analytics/tracking/android/ag;->d:Ljava/util/List;

    .line 389
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ag;->a:Ljava/util/Map;

    return-object v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 396
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/ag;->b:J

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ag;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ag;->d:Ljava/util/List;

    return-object v0
.end method
