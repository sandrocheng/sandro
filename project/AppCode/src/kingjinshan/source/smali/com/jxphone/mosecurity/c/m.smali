.class public final Lcom/jxphone/mosecurity/c/m;
.super Ljava/lang/Object;
.source "SmsGroupModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = -0x88a26fd0253c9b9L


# instance fields
.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Lcom/keniu/security/d/f;

.field private e:Ljava/sql/Date;

.field private f:J

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jxphone/mosecurity/c/m;->g:Z

    .line 31
    return-void
.end method

.method private a(J)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/jxphone/mosecurity/c/m;->f:J

    .line 46
    return-void
.end method

.method private a(Lcom/keniu/security/d/f;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/jxphone/mosecurity/c/m;->d:Lcom/keniu/security/d/f;

    .line 70
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/jxphone/mosecurity/c/m;->b:Ljava/lang/String;

    .line 58
    return-void
.end method

.method private a(Ljava/sql/Date;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/jxphone/mosecurity/c/m;->e:Ljava/sql/Date;

    .line 52
    return-void
.end method

.method private a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/jxphone/mosecurity/c/m;->g:Z

    .line 39
    return-void
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/c/m;->g:Z

    return v0
.end method

.method private b()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/jxphone/mosecurity/c/m;->f:J

    return-wide v0
.end method

.method private b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/jxphone/mosecurity/c/m;->c:Z

    .line 64
    return-void
.end method

.method private c()Ljava/sql/Date;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/m;->e:Ljava/sql/Date;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/m;->b:Ljava/lang/String;

    return-object v0
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/c/m;->c:Z

    return v0
.end method

.method private f()Lcom/keniu/security/d/f;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/m;->d:Lcom/keniu/security/d/f;

    return-object v0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/jxphone/mosecurity/c/m;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/jxphone/mosecurity/c/m;->f:J

    .line 74
    return-void
.end method
