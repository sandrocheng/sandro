.class public Lcom/google/analytics/tracking/android/u;
.super Ljava/lang/Object;
.source "ExceptionReporter.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final b:Lcom/google/analytics/tracking/android/bo;

.field private final c:Lcom/google/analytics/tracking/android/bk;

.field private d:Lcom/google/analytics/tracking/android/t;


# direct methods
.method public constructor <init>(Lcom/google/analytics/tracking/android/bo;Lcom/google/analytics/tracking/android/bk;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tracker cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    if-nez p2, :cond_1

    .line 44
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "serviceManager cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_1
    iput-object p3, p0, Lcom/google/analytics/tracking/android/u;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 47
    iput-object p1, p0, Lcom/google/analytics/tracking/android/u;->b:Lcom/google/analytics/tracking/android/bo;

    .line 48
    iput-object p2, p0, Lcom/google/analytics/tracking/android/u;->c:Lcom/google/analytics/tracking/android/bk;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExceptionReporter created, original handler is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p3, :cond_2

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ay;->e(Ljava/lang/String;)I

    .line 51
    return-void

    .line 49
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 64
    const-string v0, ""

    .line 65
    iget-object v0, p0, Lcom/google/analytics/tracking/android/u;->d:Lcom/google/analytics/tracking/android/t;

    if-nez v0, :cond_1

    .line 67
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 72
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tracking Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/ay;->e(Ljava/lang/String;)I

    .line 73
    iget-object v1, p0, Lcom/google/analytics/tracking/android/u;->b:Lcom/google/analytics/tracking/android/bo;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/google/analytics/tracking/android/bo;->a(Ljava/lang/String;Z)V

    .line 75
    iget-object v0, p0, Lcom/google/analytics/tracking/android/u;->c:Lcom/google/analytics/tracking/android/bk;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/bk;->c()V

    .line 76
    iget-object v0, p0, Lcom/google/analytics/tracking/android/u;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "Passing exception to original handler."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ay;->e(Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/google/analytics/tracking/android/u;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 80
    :cond_0
    return-void

    .line 69
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 70
    :goto_1
    iget-object v1, p0, Lcom/google/analytics/tracking/android/u;->d:Lcom/google/analytics/tracking/android/t;

    invoke-interface {v1, v0, p2}, Lcom/google/analytics/tracking/android/t;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
