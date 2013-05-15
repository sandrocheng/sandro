.class Lcom/avast/android/generic/util/ga/c;
.super Ljava/lang/Object;
.source "EasyTrackerAdapter.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/bo;


# instance fields
.field a:Lcom/google/analytics/tracking/android/bo;

.field final synthetic b:Lcom/avast/android/generic/util/ga/a;


# direct methods
.method private constructor <init>(Lcom/avast/android/generic/util/ga/a;Lcom/google/analytics/tracking/android/bo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/avast/android/generic/util/ga/c;->b:Lcom/avast/android/generic/util/ga/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p2, p0, Lcom/avast/android/generic/util/ga/c;->a:Lcom/google/analytics/tracking/android/bo;

    .line 118
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/generic/util/ga/a;Lcom/google/analytics/tracking/android/bo;Lcom/avast/android/generic/util/ga/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcom/avast/android/generic/util/ga/c;-><init>(Lcom/avast/android/generic/util/ga/a;Lcom/google/analytics/tracking/android/bo;)V

    return-void
.end method


# virtual methods
.method public a(D)V
    .locals 1
    .parameter

    .prologue
    .line 271
    iget-object v0, p0, Lcom/avast/android/generic/util/ga/c;->a:Lcom/google/analytics/tracking/android/bo;

    invoke-interface {v0, p1, p2}, Lcom/google/analytics/tracking/android/bo;->a(D)V

    .line 272
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 225
    iget-object v0, p0, Lcom/avast/android/generic/util/ga/c;->a:Lcom/google/analytics/tracking/android/bo;

    invoke-interface {v0, p1}, Lcom/google/analytics/tracking/android/bo;->a(Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 286
    iget-object v0, p0, Lcom/avast/android/generic/util/ga/c;->b:Lcom/avast/android/generic/util/ga/a;

    invoke-static {v0}, Lcom/avast/android/generic/util/ga/a;->a(Lcom/avast/android/generic/util/ga/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/avast/android/generic/util/ga/c;->a:Lcom/google/analytics/tracking/android/bo;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/analytics/tracking/android/bo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 289
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 293
    iget-object v0, p0, Lcom/avast/android/generic/util/ga/c;->b:Lcom/avast/android/generic/util/ga/a;

    invoke-static {v0}, Lcom/avast/android/generic/util/ga/a;->a(Lcom/avast/android/generic/util/ga/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/avast/android/generic/util/ga/c;->a:Lcom/google/analytics/tracking/android/bo;

    invoke-interface {v0, p1, p2}, Lcom/google/analytics/tracking/android/bo;->a(Ljava/lang/String;Z)V

    .line 296
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 210
    iget-object v0, p0, Lcom/avast/android/generic/util/ga/c;->a:Lcom/google/analytics/tracking/android/bo;

    invoke-interface {v0, p1}, Lcom/google/analytics/tracking/android/bo;->a(Z)V

    .line 211
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lcom/avast/android/generic/util/ga/c;->a:Lcom/google/analytics/tracking/android/bo;

    invoke-interface {v0, p1}, Lcom/google/analytics/tracking/android/bo;->b(Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 276
    iget-object v0, p0, Lcom/avast/android/generic/util/ga/c;->a:Lcom/google/analytics/tracking/android/bo;

    invoke-interface {v0, p1}, Lcom/google/analytics/tracking/android/bo;->b(Z)V

    .line 277
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 335
    iget-object v0, p0, Lcom/avast/android/generic/util/ga/c;->b:Lcom/avast/android/generic/util/ga/a;

    invoke-static {v0}, Lcom/avast/android/generic/util/ga/a;->a(Lcom/avast/android/generic/util/ga/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/avast/android/generic/util/ga/c;->a:Lcom/google/analytics/tracking/android/bo;

    invoke-interface {v0, p1}, Lcom/google/analytics/tracking/android/bo;->c(Ljava/lang/String;)V

    .line 338
    :cond_0
    return-void
.end method
