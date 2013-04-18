.class public final Lkdebug/c;
.super Ljava/lang/Object;
.source "KformFile.java"


# instance fields
.field private a:[B

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, "application/octet-stream"

    iput-object v0, p0, Lkdebug/c;->d:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lkdebug/c;->e:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lkdebug/c;->b:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lkdebug/c;->c:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, "application/octet-stream"

    iput-object v0, p0, Lkdebug/c;->d:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lkdebug/c;->a:[B

    .line 22
    iput-object p1, p0, Lkdebug/c;->b:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lkdebug/c;->c:Ljava/lang/String;

    .line 24
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lkdebug/c;->b:Ljava/lang/String;

    .line 46
    return-void
.end method

.method private a([B)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lkdebug/c;->a:[B

    .line 38
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lkdebug/c;->c:Ljava/lang/String;

    .line 54
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lkdebug/c;->d:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lkdebug/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final b()[B
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lkdebug/c;->a:[B

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lkdebug/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lkdebug/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lkdebug/c;->d:Ljava/lang/String;

    return-object v0
.end method
