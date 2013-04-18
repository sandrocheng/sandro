.class public final Lcom/jxphone/mosecurity/c/n;
.super Ljava/lang/Object;
.source "SmsModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field private static final c:J = -0xfeb1072983ccfbbL


# instance fields
.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/sql/Date;

.field private k:I

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput p1, p0, Lcom/jxphone/mosecurity/c/n;->k:I

    .line 46
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/jxphone/mosecurity/c/n;->i:Ljava/lang/String;

    .line 73
    return-void
.end method

.method private a(Ljava/sql/Date;)V
    .locals 1
    .parameter

    .prologue
    .line 102
    invoke-virtual {p1}, Ljava/sql/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Date;

    iput-object v0, p0, Lcom/jxphone/mosecurity/c/n;->j:Ljava/sql/Date;

    .line 103
    return-void
.end method

.method private a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/jxphone/mosecurity/c/n;->l:Z

    .line 110
    return-void
.end method

.method private b(I)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput p1, p0, Lcom/jxphone/mosecurity/c/n;->d:I

    .line 52
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/jxphone/mosecurity/c/n;->h:Ljava/lang/String;

    .line 80
    return-void
.end method

.method private c(I)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput p1, p0, Lcom/jxphone/mosecurity/c/n;->e:I

    .line 59
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/jxphone/mosecurity/c/n;->g:Ljava/lang/String;

    .line 95
    return-void
.end method

.method private d(I)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput p1, p0, Lcom/jxphone/mosecurity/c/n;->f:I

    .line 66
    return-void
.end method

.method private f()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/jxphone/mosecurity/c/n;->d:I

    return v0
.end method

.method private g()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/jxphone/mosecurity/c/n;->e:I

    return v0
.end method

.method private h()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/jxphone/mosecurity/c/n;->f:I

    return v0
.end method

.method private i()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/c/n;->l:Z

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/jxphone/mosecurity/c/n;->k:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/n;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/n;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/n;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/sql/Date;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/n;->j:Ljava/sql/Date;

    invoke-virtual {v0}, Ljava/sql/Date;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/sql/Date;

    return-object p0
.end method
