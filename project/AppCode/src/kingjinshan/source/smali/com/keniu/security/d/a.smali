.class public final Lcom/keniu/security/d/a;
.super Ljava/lang/Object;
.source "APKModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field private static final f:J = -0x308c51ae5ff60a0cL


# instance fields
.field public e:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:J

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:J

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v1, p0, Lcom/keniu/security/d/a;->l:Z

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/d/a;->n:Z

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/keniu/security/d/a;->e:I

    .line 30
    iput-boolean v1, p0, Lcom/keniu/security/d/a;->p:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/keniu/security/d/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/keniu/security/d/a;->i:J

    .line 60
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/keniu/security/d/a;->g:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/keniu/security/d/a;->n:Z

    .line 120
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/keniu/security/d/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final b(J)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-wide p1, p0, Lcom/keniu/security/d/a;->m:J

    .line 108
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/keniu/security/d/a;->h:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public final b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/keniu/security/d/a;->l:Z

    .line 132
    return-void
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/keniu/security/d/a;->i:J

    return-wide v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/keniu/security/d/a;->j:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/keniu/security/d/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/keniu/security/d/a;->k:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/keniu/security/d/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/keniu/security/d/a;->o:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/keniu/security/d/a;->m:J

    return-wide v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/keniu/security/d/a;->n:Z

    return v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/keniu/security/d/a;->l:Z

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/keniu/security/d/a;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/d/a;->p:Z

    .line 156
    return-void
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/keniu/security/d/a;->p:Z

    return v0
.end method
