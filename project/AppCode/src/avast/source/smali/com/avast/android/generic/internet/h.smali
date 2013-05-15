.class public Lcom/avast/android/generic/internet/h;
.super Ljava/lang/Object;
.source "HttpSender.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public a:Lcom/avast/a/a/a/ak;

.field public b:Lcom/avast/android/generic/internet/k;

.field public c:Lcom/avast/android/generic/internet/d;

.field public d:Lcom/avast/android/generic/b/a;

.field public e:Z

.field public f:Z

.field public g:I

.field public h:J

.field public i:I

.field public j:Landroid/os/Bundle;

.field final synthetic k:Lcom/avast/android/generic/internet/HttpSender;


# direct methods
.method public constructor <init>(Lcom/avast/android/generic/internet/HttpSender;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 98
    iput-object p1, p0, Lcom/avast/android/generic/internet/h;->k:Lcom/avast/android/generic/internet/HttpSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object v3, p0, Lcom/avast/android/generic/internet/h;->a:Lcom/avast/a/a/a/ak;

    .line 101
    iput-object v3, p0, Lcom/avast/android/generic/internet/h;->b:Lcom/avast/android/generic/internet/k;

    .line 103
    iput-object v3, p0, Lcom/avast/android/generic/internet/h;->d:Lcom/avast/android/generic/b/a;

    .line 104
    iput-boolean v2, p0, Lcom/avast/android/generic/internet/h;->e:Z

    .line 105
    iput-boolean v2, p0, Lcom/avast/android/generic/internet/h;->f:Z

    .line 106
    iput v2, p0, Lcom/avast/android/generic/internet/h;->g:I

    .line 107
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/android/generic/internet/h;->h:J

    .line 108
    iput v2, p0, Lcom/avast/android/generic/internet/h;->i:I

    .line 109
    iput-object v3, p0, Lcom/avast/android/generic/internet/h;->j:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public a(Lcom/avast/android/generic/internet/h;)I
    .locals 4
    .parameter

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/avast/android/generic/internet/h;->h:J

    iget-wide v2, p1, Lcom/avast/android/generic/internet/h;->h:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 113
    const/4 v0, 0x1

    .line 117
    :goto_0
    return v0

    .line 114
    :cond_0
    iget-wide v0, p0, Lcom/avast/android/generic/internet/h;->h:J

    iget-wide v2, p1, Lcom/avast/android/generic/internet/h;->h:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 115
    const/4 v0, -0x1

    goto :goto_0

    .line 117
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/avast/android/generic/internet/h;->a:Lcom/avast/a/a/a/ak;

    if-nez v0, :cond_0

    .line 122
    const-string v0, "(empty)"

    .line 124
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/avast/android/generic/internet/h;->a:Lcom/avast/a/a/a/ak;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 98
    check-cast p1, Lcom/avast/android/generic/internet/h;

    invoke-virtual {p0, p1}, Lcom/avast/android/generic/internet/h;->a(Lcom/avast/android/generic/internet/h;)I

    move-result v0

    return v0
.end method
