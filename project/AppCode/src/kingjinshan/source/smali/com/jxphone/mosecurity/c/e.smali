.class public final Lcom/jxphone/mosecurity/c/e;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x1772355976b7aefdL


# instance fields
.field private b:I

.field private c:I

.field private d:Lcom/jxphone/mosecurity/c/f;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/jxphone/mosecurity/c/e;->c:I

    .line 27
    sget-object v0, Lcom/jxphone/mosecurity/c/f;->a:Lcom/jxphone/mosecurity/c/f;

    iput-object v0, p0, Lcom/jxphone/mosecurity/c/e;->d:Lcom/jxphone/mosecurity/c/f;

    return-void
.end method

.method private a()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/jxphone/mosecurity/c/e;->b:I

    return v0
.end method

.method private b()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/jxphone/mosecurity/c/e;->c:I

    return v0
.end method

.method private b(I)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput p1, p0, Lcom/jxphone/mosecurity/c/e;->b:I

    .line 37
    return-void
.end method

.method private c()Lcom/jxphone/mosecurity/c/f;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/e;->d:Lcom/jxphone/mosecurity/c/f;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method private e()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/jxphone/mosecurity/c/e;->f:J

    return-wide v0
.end method

.method private f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/e;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput p1, p0, Lcom/jxphone/mosecurity/c/e;->c:I

    .line 49
    return-void
.end method

.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/jxphone/mosecurity/c/e;->f:J

    .line 61
    return-void
.end method

.method public final a(Lcom/jxphone/mosecurity/c/f;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/jxphone/mosecurity/c/e;->d:Lcom/jxphone/mosecurity/c/f;

    .line 46
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/jxphone/mosecurity/c/e;->e:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/jxphone/mosecurity/c/e;->g:Ljava/lang/String;

    .line 67
    return-void
.end method
