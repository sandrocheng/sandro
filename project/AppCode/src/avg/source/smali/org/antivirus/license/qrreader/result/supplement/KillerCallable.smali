.class final Lorg/antivirus/license/qrreader/result/supplement/KillerCallable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final future:Ljava/util/concurrent/Future;

.field private final timeout:J

.field private final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/antivirus/license/qrreader/result/supplement/KillerCallable;->future:Ljava/util/concurrent/Future;

    iput-wide p2, p0, Lorg/antivirus/license/qrreader/result/supplement/KillerCallable;->timeout:J

    iput-object p4, p0, Lorg/antivirus/license/qrreader/result/supplement/KillerCallable;->unit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/antivirus/license/qrreader/result/supplement/KillerCallable;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final call()Ljava/lang/Void;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/antivirus/license/qrreader/result/supplement/KillerCallable;->future:Ljava/util/concurrent/Future;

    iget-wide v1, p0, Lorg/antivirus/license/qrreader/result/supplement/KillerCallable;->timeout:J

    iget-object v3, p0, Lorg/antivirus/license/qrreader/result/supplement/KillerCallable;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lorg/antivirus/license/qrreader/result/supplement/KillerCallable;->future:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0
.end method
