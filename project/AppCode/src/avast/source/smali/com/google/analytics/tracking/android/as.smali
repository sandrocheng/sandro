.class public Lcom/google/analytics/tracking/android/as;
.super Ljava/lang/Object;
.source "GoogleTracker.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/bo;


# static fields
.field private static final a:Ljava/text/DecimalFormat;


# instance fields
.field private final b:Lcom/google/analytics/tracking/android/bp;

.field private final c:Lcom/google/analytics/tracking/android/au;

.field private volatile d:Z

.field private volatile e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 24
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.######"

    new-instance v2, Ljava/text/DecimalFormatSymbols;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v0, v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    sput-object v0, Lcom/google/analytics/tracking/android/as;->a:Ljava/text/DecimalFormat;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/analytics/tracking/android/bp;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/as;->d:Z

    .line 31
    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/as;->e:Z

    .line 34
    if-nez p1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "trackingId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    iput-object p2, p0, Lcom/google/analytics/tracking/android/as;->b:Lcom/google/analytics/tracking/android/bp;

    .line 38
    new-instance v0, Lcom/google/analytics/tracking/android/au;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/analytics/tracking/android/au;-><init>(Lcom/google/analytics/tracking/android/at;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/as;->c:Lcom/google/analytics/tracking/android/au;

    .line 40
    iget-object v0, p0, Lcom/google/analytics/tracking/android/as;->c:Lcom/google/analytics/tracking/android/au;

    const-string v1, "trackingId"

    invoke-virtual {v0, v1, p1}, Lcom/google/analytics/tracking/android/au;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/google/analytics/tracking/android/as;->c:Lcom/google/analytics/tracking/android/au;

    const-string v1, "sampleRate"

    const-string v2, "100"

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/au;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/google/analytics/tracking/android/as;->c:Lcom/google/analytics/tracking/android/au;

    const-string v1, "sessionControl"

    const-string v2, "start"

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/au;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/as;->d:Z

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tracker closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 72
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/as;->e:Z

    .line 73
    if-nez p2, :cond_0

    .line 74
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 76
    :cond_0
    const-string v0, "hitType"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/google/analytics/tracking/android/as;->c:Lcom/google/analytics/tracking/android/au;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/google/analytics/tracking/android/au;->a(Ljava/util/Map;Ljava/lang/Boolean;)V

    .line 78
    iget-object v0, p0, Lcom/google/analytics/tracking/android/as;->b:Lcom/google/analytics/tracking/android/bp;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/as;->c:Lcom/google/analytics/tracking/android/au;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/au;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/bp;->a(Ljava/util/Map;)V

    .line 79
    iget-object v0, p0, Lcom/google/analytics/tracking/android/as;->c:Lcom/google/analytics/tracking/android/au;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/au;->a()V

    .line 80
    return-void
.end method


# virtual methods
.method public a(D)V
    .locals 3
    .parameter

    .prologue
    .line 313
    invoke-static {}, Lcom/google/analytics/tracking/android/an;->a()Lcom/google/analytics/tracking/android/an;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/ao;->w:Lcom/google/analytics/tracking/android/ao;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/an;->a(Lcom/google/analytics/tracking/android/ao;)V

    .line 314
    iget-object v0, p0, Lcom/google/analytics/tracking/android/as;->c:Lcom/google/analytics/tracking/android/au;

    const-string v1, "sampleRate"

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/au;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/as;->e:Z

    if-eqz v0, :cond_0

    .line 359
    const-string v0, "Tracking already started, setAppName call ignored"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ay;->i(Ljava/lang/String;)I

    .line 369
    :goto_0
    return-void

    .line 362
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    const-string v0, "setting appName to empty value not allowed, call ignored"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ay;->i(Ljava/lang/String;)I

    goto :goto_0

    .line 366
    :cond_1
    invoke-static {}, Lcom/google/analytics/tracking/android/an;->a()Lcom/google/analytics/tracking/android/an;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/ao;->o:Lcom/google/analytics/tracking/android/ao;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/an;->a(Lcom/google/analytics/tracking/android/ao;)V

    .line 367
    iget-object v0, p0, Lcom/google/analytics/tracking/android/as;->c:Lcom/google/analytics/tracking/android/au;

    const-string v1, "appName"

    invoke-virtual {v0, v1, p1}, Lcom/google/analytics/tracking/android/au;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/as;->a()V

    .line 120
    invoke-static {}, Lcom/google/analytics/tracking/android/an;->a()Lcom/google/analytics/tracking/android/an;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/ao;->c:Lcom/google/analytics/tracking/android/ao;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/an;->a(Lcom/google/analytics/tracking/android/ao;)V

    .line 121
    invoke-static {}, Lcom/google/analytics/tracking/android/an;->a()Lcom/google/analytics/tracking/android/an;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/an;->a(Z)V

    .line 122
    const-string v0, "event"

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/analytics/tracking/android/as;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/analytics/tracking/android/as;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 123
    invoke-static {}, Lcom/google/analytics/tracking/android/an;->a()Lcom/google/analytics/tracking/android/an;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/an;->a(Z)V

    .line 124
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/as;->a()V

    .line 142
    invoke-static {}, Lcom/google/analytics/tracking/android/an;->a()Lcom/google/analytics/tracking/android/an;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/ao;->e:Lcom/google/analytics/tracking/android/ao;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/an;->a(Lcom/google/analytics/tracking/android/ao;)V

    .line 143
    invoke-static {}, Lcom/google/analytics/tracking/android/an;->a()Lcom/google/analytics/tracking/android/an;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/an;->a(Z)V

    .line 144
    const-string v0, "exception"

    invoke-virtual {p0, p1, p2}, Lcom/google/analytics/tracking/android/as;->b(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/analytics/tracking/android/as;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 145
    invoke-static {}, Lcom/google/analytics/tracking/android/an;->a()Lcom/google/analytics/tracking/android/an;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/an;->a(Z)V

    .line 146
    return-void
.end method

.method public a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 307
    invoke-static {}, Lcom/google/analytics/tracking/android/an;->a()Lcom/google/analytics/tracking/android/an;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/ao;->u:Lcom/google/analytics/tracking/android/ao;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/an;->a(Lcom/google/analytics/tracking/android/ao;)V

    .line 308
    iget-object v0, p0, Lcom/google/analytics/tracking/android/as;->c:Lcom/google/analytics/tracking/android/au;

    const-string v1, "anonymizeIp"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/au;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/util/Map;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 196
    const-string v1, "eventCategory"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v1, "eventAction"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v1, "eventLabel"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    if-eqz p4, :cond_0

    .line 200
    const-string v1, "eventValue"

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_0
    invoke-static {}, Lcom/google/analytics/tracking/android/an;->a()Lcom/google/analytics/tracking/android/an;

    move-result-object v1

    sget-object v2, Lcom/google/analytics/tracking/android/ao;->Y:Lcom/google/analytics/tracking/android/ao;

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/an;->a(Lcom/google/analytics/tracking/android/ao;)V

    .line 203
    return-object v0
.end method

.method public b(Ljava/lang/String;Z)Ljava/util/Map;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 243
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 245
    const-string v1, "exDescription"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string v1, "exFatal"

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-static {}, Lcom/google/analytics/tracking/android/an;->a()Lcom/google/analytics/tracking/android/an;

    move-result-object v1

    sget-object v2, Lcom/google/analytics/tracking/android/ao;->H:Lcom/google/analytics/tracking/android/ao;

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/an;->a(Lcom/google/analytics/tracking/android/ao;)V

    .line 248
    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/as;->e:Z

    if-eqz v0, :cond_0

    .line 377
    const-string v0, "Tracking already started, setAppVersion call ignored"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ay;->i(Ljava/lang/String;)I

    .line 382
    :goto_0
    return-void

    .line 380
    :cond_0
    invoke-static {}, Lcom/google/analytics/tracking/android/an;->a()Lcom/google/analytics/tracking/android/an;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/ao;->q:Lcom/google/analytics/tracking/android/ao;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/an;->a(Lcom/google/analytics/tracking/android/ao;)V

    .line 381
    iget-object v0, p0, Lcom/google/analytics/tracking/android/as;->c:Lcom/google/analytics/tracking/android/au;

    const-string v1, "appVersion"

    invoke-virtual {v0, v1, p1}, Lcom/google/analytics/tracking/android/au;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 3
    .parameter

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/as;->a()V

    .line 85
    invoke-static {}, Lcom/google/analytics/tracking/android/an;->a()Lcom/google/analytics/tracking/android/an;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/ao;->m:Lcom/google/analytics/tracking/android/ao;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/an;->a(Lcom/google/analytics/tracking/android/ao;)V

    .line 86
    iget-object v1, p0, Lcom/google/analytics/tracking/android/as;->c:Lcom/google/analytics/tracking/android/au;

    const-string v2, "sessionControl"

    if-eqz p1, :cond_0

    const-string v0, "start"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/google/analytics/tracking/android/au;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/as;->a()V

    .line 109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "trackView requires a appScreen to be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    invoke-static {}, Lcom/google/analytics/tracking/android/an;->a()Lcom/google/analytics/tracking/android/an;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/ao;->b:Lcom/google/analytics/tracking/android/ao;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/an;->a(Lcom/google/analytics/tracking/android/ao;)V

    .line 113
    iget-object v0, p0, Lcom/google/analytics/tracking/android/as;->c:Lcom/google/analytics/tracking/android/au;

    const-string v1, "description"

    invoke-virtual {v0, v1, p1}, Lcom/google/analytics/tracking/android/au;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v0, "appview"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/analytics/tracking/android/as;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 115
    return-void
.end method
