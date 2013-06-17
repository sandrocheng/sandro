.class public Lcom/google/a/a/a/bf;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/text/DecimalFormat;


# instance fields
.field private final b:Lcom/google/a/a/a/bi;

.field private final c:Lcom/google/a/a/a/bh;

.field private volatile d:Z

.field private volatile e:Z

.field private f:J

.field private g:J

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.######"

    new-instance v2, Ljava/text/DecimalFormatSymbols;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v0, v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    sput-object v0, Lcom/google/a/a/a/bf;->a:Ljava/text/DecimalFormat;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/a/a/a/bf;->d:Z

    iput-boolean v0, p0, Lcom/google/a/a/a/bf;->e:Z

    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/google/a/a/a/bf;->f:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/a/a/bf;->h:Z

    iput-object v2, p0, Lcom/google/a/a/a/bf;->b:Lcom/google/a/a/a/bi;

    iput-object v2, p0, Lcom/google/a/a/a/bf;->c:Lcom/google/a/a/a/bh;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/a/a/a/bi;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/a/a/a/bf;->d:Z

    iput-boolean v0, p0, Lcom/google/a/a/a/bf;->e:Z

    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/google/a/a/a/bf;->f:J

    iput-boolean v3, p0, Lcom/google/a/a/a/bf;->h:Z

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "trackingId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/google/a/a/a/bf;->b:Lcom/google/a/a/a/bi;

    new-instance v0, Lcom/google/a/a/a/bh;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/a/a/a/bh;-><init>(Lcom/google/a/a/a/bg;)V

    iput-object v0, p0, Lcom/google/a/a/a/bf;->c:Lcom/google/a/a/a/bh;

    iget-object v0, p0, Lcom/google/a/a/a/bf;->c:Lcom/google/a/a/a/bh;

    const-string v1, "trackingId"

    invoke-virtual {v0, v1, p1}, Lcom/google/a/a/a/bh;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/a/a/a/bf;->c:Lcom/google/a/a/a/bh;

    const-string v1, "sampleRate"

    const-string v2, "100"

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/a/bh;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/a/a/a/bf;->c:Lcom/google/a/a/a/bh;

    const-string v1, "sessionControl"

    const-string v2, "start"

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/a/bh;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/a/a/a/bf;->c:Lcom/google/a/a/a/bh;

    const-string v1, "useSecure"

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/a/bh;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/a/a/a/bf;->e:Z

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_0
    const-string v0, "hitType"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/a/a/a/bf;->c:Lcom/google/a/a/a/bh;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/google/a/a/a/bh;->a(Ljava/util/Map;Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/google/a/a/a/bf;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Too many hits sent too quickly, throttling invoked."

    invoke-static {v0}, Lcom/google/a/a/a/aq;->i(Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/google/a/a/a/bf;->c:Lcom/google/a/a/a/bh;

    invoke-virtual {v0}, Lcom/google/a/a/a/bh;->a()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/bf;->b:Lcom/google/a/a/a/bi;

    iget-object v1, p0, Lcom/google/a/a/a/bf;->c:Lcom/google/a/a/a/bh;

    invoke-virtual {v1}, Lcom/google/a/a/a/bh;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/a/a/a/bi;->a(Ljava/util/Map;)V

    goto :goto_0
.end method

.method private b()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/a/a/a/bf;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tracker closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Long;)V
    .locals 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index must be > 0, ignoring setCustomMetric call for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/a/a/aq;->h(Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/a/a/a/bf;->c:Lcom/google/a/a/a/bh;

    const-string v2, "customMetric"

    invoke-static {v2, p1}, Lcom/google/a/a/a/bj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/a/a/a/bh;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index must be > 0, ignoring setCustomDimension call for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/a/a/aq;->h(Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/bf;->c:Lcom/google/a/a/a/bh;

    const-string v1, "customDimension"

    invoke-static {v1, p1}, Lcom/google/a/a/a/bj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/a/a/a/bh;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/a/a/a/bf;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "Tracking already started, setAppName call ignored"

    invoke-static {v0}, Lcom/google/a/a/a/aq;->i(Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "setting appName to empty value not allowed, call ignored"

    invoke-static {v0}, Lcom/google/a/a/a/aq;->i(Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/a/a/a/ah;->a()Lcom/google/a/a/a/ah;

    move-result-object v0

    sget-object v1, Lcom/google/a/a/a/ai;->o:Lcom/google/a/a/a/ai;

    invoke-virtual {v0, v1}, Lcom/google/a/a/a/ah;->a(Lcom/google/a/a/a/ai;)V

    iget-object v0, p0, Lcom/google/a/a/a/bf;->c:Lcom/google/a/a/a/bh;

    const-string v1, "appName"

    invoke-virtual {v0, v1, p1}, Lcom/google/a/a/a/bh;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/a/a/a/bf;->b()V

    invoke-static {}, Lcom/google/a/a/a/ah;->a()Lcom/google/a/a/a/ah;

    move-result-object v0

    sget-object v1, Lcom/google/a/a/a/ai;->c:Lcom/google/a/a/a/ai;

    invoke-virtual {v0, v1}, Lcom/google/a/a/a/ah;->a(Lcom/google/a/a/a/ai;)V

    invoke-static {}, Lcom/google/a/a/a/ah;->a()Lcom/google/a/a/a/ah;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/a/a/a/ah;->a(Z)V

    const-string v0, "event"

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/a/a/a/bf;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/a/a/a/bf;->a(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/google/a/a/a/ah;->a()Lcom/google/a/a/a/ah;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/a/a/a/ah;->a(Z)V

    return-void
.end method

.method public a(Ljava/util/Map;Ljava/util/Map;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/a/a/a/bf;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p0, v2, v0}, Lcom/google/a/a/a/bf;->a(ILjava/lang/Long;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method declared-synchronized a()Z
    .locals 11

    const-wide/32 v5, 0x1d4c0

    const-wide/16 v9, 0x7d0

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/a/a/a/bf;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/a/a/a/bf;->f:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    iget-wide v3, p0, Lcom/google/a/a/a/bf;->g:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    const-wide/32 v5, 0x1d4c0

    iget-wide v7, p0, Lcom/google/a/a/a/bf;->f:J

    add-long/2addr v3, v7

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/a/a/a/bf;->f:J

    :cond_1
    iput-wide v1, p0, Lcom/google/a/a/a/bf;->g:J

    iget-wide v1, p0, Lcom/google/a/a/a/bf;->f:J

    cmp-long v1, v1, v9

    if-ltz v1, :cond_2

    iget-wide v1, p0, Lcom/google/a/a/a/bf;->f:J

    sub-long/2addr v1, v9

    iput-wide v1, p0, Lcom/google/a/a/a/bf;->f:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    const-string v0, "Excessive tracking detected.  Tracking call ignored."

    invoke-static {v0}, Lcom/google/a/a/a/aq;->i(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/util/Map;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "eventCategory"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "eventAction"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "eventLabel"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_0

    const-string v1, "eventValue"

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lcom/google/a/a/a/ah;->a()Lcom/google/a/a/a/ah;

    move-result-object v1

    sget-object v2, Lcom/google/a/a/a/ai;->Y:Lcom/google/a/a/a/ai;

    invoke-virtual {v1, v2}, Lcom/google/a/a/a/ah;->a(Lcom/google/a/a/a/ai;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/a/a/a/bf;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "Tracking already started, setAppVersion call ignored"

    invoke-static {v0}, Lcom/google/a/a/a/aq;->i(Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/a/a/a/ah;->a()Lcom/google/a/a/a/ah;

    move-result-object v0

    sget-object v1, Lcom/google/a/a/a/ai;->q:Lcom/google/a/a/a/ai;

    invoke-virtual {v0, v1}, Lcom/google/a/a/a/ah;->a(Lcom/google/a/a/a/ai;)V

    iget-object v0, p0, Lcom/google/a/a/a/bf;->c:Lcom/google/a/a/a/bh;

    const-string v1, "appVersion"

    invoke-virtual {v0, v1, p1}, Lcom/google/a/a/a/bh;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/a/a/a/bf;->b()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "trackView requires a appScreen to be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/google/a/a/a/ah;->a()Lcom/google/a/a/a/ah;

    move-result-object v0

    sget-object v1, Lcom/google/a/a/a/ai;->b:Lcom/google/a/a/a/ai;

    invoke-virtual {v0, v1}, Lcom/google/a/a/a/ah;->a(Lcom/google/a/a/a/ai;)V

    iget-object v0, p0, Lcom/google/a/a/a/bf;->c:Lcom/google/a/a/a/bh;

    const-string v1, "description"

    invoke-virtual {v0, v1, p1}, Lcom/google/a/a/a/bh;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "appview"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/a/a/a/bf;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/google/a/a/a/ah;->a()Lcom/google/a/a/a/ah;

    move-result-object v0

    sget-object v1, Lcom/google/a/a/a/ai;->A:Lcom/google/a/a/a/ai;

    invoke-virtual {v0, v1}, Lcom/google/a/a/a/ah;->a(Lcom/google/a/a/a/ai;)V

    iget-object v0, p0, Lcom/google/a/a/a/bf;->c:Lcom/google/a/a/a/bh;

    const-string v1, "referrer"

    invoke-virtual {v0, v1, p1}, Lcom/google/a/a/a/bh;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
