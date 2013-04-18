.class public final Lcom/keniu/security/d/e;
.super Ljava/lang/Object;
.source "ProcessModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:I = 0x2

.field public static final b:I = 0x4

.field private static final d:J = -0xf4131ba9c2e21daL


# instance fields
.field public c:I

.field private e:J

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:J

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/keniu/security/d/e;->i:J

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/keniu/security/d/e;->c:I

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/keniu/security/d/e;->j:Z

    return-void
.end method

.method private f()J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/keniu/security/d/e;->e:J

    return-wide v0
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput p1, p0, Lcom/keniu/security/d/e;->h:I

    .line 73
    return-void
.end method

.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/keniu/security/d/e;->e:J

    .line 41
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/keniu/security/d/e;->f:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/keniu/security/d/e;->j:Z

    .line 29
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/keniu/security/d/e;->j:Z

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/keniu/security/d/e;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final b(J)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/keniu/security/d/e;->i:J

    .line 65
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/keniu/security/d/e;->g:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/keniu/security/d/e;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/keniu/security/d/e;->i:J

    return-wide v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/keniu/security/d/e;->h:I

    return v0
.end method
