.class public final Lcom/keniu/security/f/aa;
.super Ljava/lang/Object;
.source "UpdateIni.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p0}, Lcom/keniu/security/f/aa;->a()V

    .line 61
    return-void
.end method

.method private static b(Lcom/keniu/security/f/h;Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 102
    const-string v0, "size"

    invoke-virtual {p0, p1, v0}, Lcom/keniu/security/f/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v0}, Lcom/keniu/security/f/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 108
    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private static c(Lcom/keniu/security/f/h;Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 113
    const-string v0, "delta"

    invoke-virtual {p0, p1, v0}, Lcom/keniu/security/f/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-static {v0}, Lcom/keniu/security/f/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    .line 126
    :goto_0
    return v0

    .line 118
    :cond_0
    const-string v1, "binary"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 120
    const/4 v0, 0x1

    goto :goto_0

    .line 122
    :cond_1
    const-string v1, "sqlite"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 124
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 126
    goto :goto_0
.end method

.method private static d(Lcom/keniu/security/f/h;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 131
    const-string v0, "compressed"

    invoke-virtual {p0, p1, v0}, Lcom/keniu/security/f/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-static {v0}, Lcom/keniu/security/f/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 77
    iput-object v1, p0, Lcom/keniu/security/f/aa;->a:Ljava/lang/String;

    .line 78
    iput v0, p0, Lcom/keniu/security/f/aa;->b:I

    .line 79
    iput-object v1, p0, Lcom/keniu/security/f/aa;->c:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/keniu/security/f/aa;->d:Ljava/lang/String;

    .line 81
    iput v0, p0, Lcom/keniu/security/f/aa;->e:I

    .line 82
    iput-boolean v0, p0, Lcom/keniu/security/f/aa;->f:Z

    .line 83
    return-void
.end method

.method public final a(Lcom/keniu/security/f/h;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/keniu/security/f/aa;->a()V

    .line 67
    const-string v0, "path"

    invoke-virtual {p1, p2, v0}, Lcom/keniu/security/f/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/f/aa;->a:Ljava/lang/String;

    .line 68
    const-string v0, "size"

    invoke-virtual {p1, p2, v0}, Lcom/keniu/security/f/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/f/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    :goto_0
    iput v0, p0, Lcom/keniu/security/f/aa;->b:I

    .line 69
    const-string v0, "md5"

    invoke-virtual {p1, p2, v0}, Lcom/keniu/security/f/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/f/aa;->c:Ljava/lang/String;

    .line 70
    const-string v0, "md5_target"

    invoke-virtual {p1, p2, v0}, Lcom/keniu/security/f/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/f/aa;->d:Ljava/lang/String;

    .line 71
    const-string v0, "delta"

    invoke-virtual {p1, p2, v0}, Lcom/keniu/security/f/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/f/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "binary"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    move v0, v3

    :goto_1
    iput v0, p0, Lcom/keniu/security/f/aa;->e:I

    .line 72
    const-string v0, "compressed"

    invoke-virtual {p1, p2, v0}, Lcom/keniu/security/f/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/f/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    move v0, v3

    :goto_2
    iput-boolean v0, p0, Lcom/keniu/security/f/aa;->f:Z

    .line 73
    return-void

    .line 68
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 71
    :cond_1
    const-string v1, "sqlite"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    .line 72
    goto :goto_2
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 87
    iget v0, p0, Lcom/keniu/security/f/aa;->b:I

    .line 88
    iget-boolean v1, p0, Lcom/keniu/security/f/aa;->f:Z

    if-eqz v1, :cond_0

    .line 90
    mul-int/lit8 v0, v0, 0x4

    .line 93
    :cond_0
    iget v1, p0, Lcom/keniu/security/f/aa;->e:I

    if-eqz v1, :cond_1

    .line 95
    mul-int/lit8 v0, v0, 0x3

    .line 97
    :cond_1
    return v0
.end method
