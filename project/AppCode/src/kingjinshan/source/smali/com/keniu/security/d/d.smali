.class public Lcom/keniu/security/d/d;
.super Ljava/lang/Object;
.source "MalwareModel.java"

# interfaces
.implements Lcom/keniu/security/d/c;
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Ljava/lang/String; = "Virus.Client.Def"

.field public static final b:I = 0x6

.field public static final c:I = 0x5

.field public static final d:I = 0x5

.field public static final e:I = 0x4

.field public static final f:I = 0x3

.field public static final l:I = 0x2

.field public static final m:I = 0x1

.field public static final n:I = 0x1

.field public static final o:I = 0x0

.field private static final y:J = 0x66cd3ef0dbe7968L


# instance fields
.field public p:I

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:I

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Z

.field public x:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput v0, p0, Lcom/keniu/security/d/d;->p:I

    .line 38
    iput v0, p0, Lcom/keniu/security/d/d;->s:I

    .line 39
    iput-boolean v0, p0, Lcom/keniu/security/d/d;->w:Z

    .line 40
    iput-boolean v0, p0, Lcom/keniu/security/d/d;->x:Z

    .line 43
    const-string v0, "Virus.Client.Def"

    iput-object v0, p0, Lcom/keniu/security/d/d;->t:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 53
    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(I)Z
    .locals 1
    .parameter

    .prologue
    .line 58
    if-lez p0, :cond_0

    const/4 v0, 0x5

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(I)Z
    .locals 1
    .parameter

    .prologue
    .line 48
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/keniu/security/d/d;->s:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 68
    iget v0, p0, Lcom/keniu/security/d/d;->s:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 73
    iget v0, p0, Lcom/keniu/security/d/d;->s:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/keniu/security/d/d;->s:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
