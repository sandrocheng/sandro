.class public Lcom/tencent/feedback/upload/c$b;
.super Ljava/lang/Object;
.source "UploadHandlerRQDImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/feedback/upload/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:J

.field public c:J


# direct methods
.method protected constructor <init>(Lcom/tencent/feedback/upload/e;)V
    .locals 3
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/feedback/upload/c$b;->a:I

    .line 357
    iput-wide v1, p0, Lcom/tencent/feedback/upload/c$b;->b:J

    .line 358
    iput-wide v1, p0, Lcom/tencent/feedback/upload/c$b;->c:J

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2
    .parameter

    .prologue
    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResponse:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 372
    iget-wide v0, p0, Lcom/tencent/feedback/upload/c$b;->c:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/feedback/upload/c$b;->c:J

    .line 373
    return-void
.end method

.method public a(Ljava/lang/String;JLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRequest:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requestSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " apn"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 364
    iget v0, p0, Lcom/tencent/feedback/upload/c$b;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/feedback/upload/c$b;->a:I

    .line 365
    iget-wide v0, p0, Lcom/tencent/feedback/upload/c$b;->b:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/tencent/feedback/upload/c$b;->b:J

    .line 366
    return-void
.end method
