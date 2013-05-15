.class Lcom/avast/android/generic/f/a/e;
.super Ljava/lang/Object;
.source "SmsSender.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public a:Lcom/avast/android/generic/util/bc;

.field public b:Ljava/lang/String;

.field public c:Lcom/avast/android/generic/f/a/a;

.field public d:Z

.field public e:I

.field public f:J

.field final synthetic g:Lcom/avast/android/generic/f/a/b;


# direct methods
.method private constructor <init>(Lcom/avast/android/generic/f/a/b;)V
    .locals 2
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/avast/android/generic/f/a/e;->g:Lcom/avast/android/generic/f/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/avast/android/generic/f/a/e;->e:I

    .line 47
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/android/generic/f/a/e;->f:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/generic/f/a/b;Lcom/avast/android/generic/f/a/c;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/avast/android/generic/f/a/e;-><init>(Lcom/avast/android/generic/f/a/b;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/avast/android/generic/f/a/e;)I
    .locals 4
    .parameter

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/avast/android/generic/f/a/e;->f:J

    iget-wide v2, p1, Lcom/avast/android/generic/f/a/e;->f:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 51
    const/4 v0, 0x1

    .line 55
    :goto_0
    return v0

    .line 52
    :cond_0
    iget-wide v0, p0, Lcom/avast/android/generic/f/a/e;->f:J

    iget-wide v2, p1, Lcom/avast/android/generic/f/a/e;->f:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 53
    const/4 v0, -0x1

    goto :goto_0

    .line 55
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 40
    check-cast p1, Lcom/avast/android/generic/f/a/e;

    invoke-virtual {p0, p1}, Lcom/avast/android/generic/f/a/e;->a(Lcom/avast/android/generic/f/a/e;)I

    move-result v0

    return v0
.end method
