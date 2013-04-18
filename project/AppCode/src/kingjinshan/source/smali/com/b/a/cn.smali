.class public final Lcom/b/a/cn;
.super Ljava/lang/Exception;
.source "Descriptors.java"


# static fields
.field private static final a:J = 0x4fccd5afd98283ccL


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/b/a/ev;

.field private final d:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/b/a/ct;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1531
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/b/a/cn;-><init>(Lcom/b/a/ct;Ljava/lang/String;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/ct;Ljava/lang/String;B)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/b/a/ct;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1580
    invoke-virtual {p1}, Lcom/b/a/ct;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cn;->b:Ljava/lang/String;

    .line 1581
    invoke-virtual {p1}, Lcom/b/a/ct;->a()Lcom/b/a/av;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cn;->c:Lcom/b/a/ev;

    .line 1582
    iput-object p2, p0, Lcom/b/a/cn;->d:Ljava/lang/String;

    .line 1583
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/cv;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1531
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/b/a/cn;-><init>(Lcom/b/a/cv;Ljava/lang/String;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/cv;Ljava/lang/String;B)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/b/a/cv;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1559
    invoke-interface {p1}, Lcom/b/a/cv;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cn;->b:Ljava/lang/String;

    .line 1560
    invoke-interface {p1}, Lcom/b/a/cv;->i()Lcom/b/a/ev;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cn;->c:Lcom/b/a/ev;

    .line 1561
    iput-object p2, p0, Lcom/b/a/cn;->d:Ljava/lang/String;

    .line 1562
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/cv;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1531
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/b/a/cn;-><init>(Lcom/b/a/cv;Ljava/lang/String;Ljava/lang/Throwable;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/cv;Ljava/lang/String;Ljava/lang/Throwable;B)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1568
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/b/a/cn;-><init>(Lcom/b/a/cv;Ljava/lang/String;B)V

    .line 1569
    invoke-virtual {p0, p3}, Lcom/b/a/cn;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1570
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/b/a/cn;->b:Ljava/lang/String;

    return-object v0
.end method

.method private b()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/b/a/cn;->c:Lcom/b/a/ev;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/b/a/cn;->d:Ljava/lang/String;

    return-object v0
.end method
