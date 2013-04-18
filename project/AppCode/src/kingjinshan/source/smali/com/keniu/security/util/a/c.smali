.class final Lcom/keniu/security/util/a/c;
.super Ljava/lang/Object;
.source "IniReader.java"


# instance fields
.field a:Ljava/util/ArrayList;

.field protected b:Ljava/util/HashMap;

.field c:Ljava/util/ArrayList;

.field d:Ljava/util/ArrayList;

.field e:Ljava/util/ArrayList;

.field private f:[Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private transient h:Ljava/lang/String;

.field private transient i:Ljava/util/Properties;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/util/a/c;->a:Ljava/util/ArrayList;

    .line 11
    const-string v0, "#"

    iput-object v0, p0, Lcom/keniu/security/util/a/c;->g:Ljava/lang/String;

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/util/a/c;->b:Ljava/util/HashMap;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/util/a/c;->c:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/util/a/c;->d:Ljava/util/ArrayList;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/util/a/c;->e:Ljava/util/ArrayList;

    .line 38
    invoke-direct {p0, p1}, Lcom/keniu/security/util/a/c;->b(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, -0x1

    .line 43
    .line 44
    if-eqz p1, :cond_3

    .line 45
    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/util/a/c;->f:[Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/keniu/security/util/a/c;->f:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 47
    iget-object v1, p0, Lcom/keniu/security/util/a/c;->f:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/16 v3, 0x23

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v5, :cond_1

    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget-object v3, p0, Lcom/keniu/security/util/a/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/util/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/keniu/security/util/a/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_3
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 56
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 57
    const-string v1, ""

    .line 60
    const/16 v2, 0x23

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v4, :cond_1

    .line 62
    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 63
    array-length v3, v2

    if-eqz v3, :cond_0

    .line 64
    const/4 v1, 0x1

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 66
    :cond_0
    iget-object v2, p0, Lcom/keniu/security/util/a/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_1
    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v4, :cond_2

    .line 69
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/keniu/security/util/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v1, p0, Lcom/keniu/security/util/a/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_2
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 86
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/keniu/security/util/a/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/keniu/security/util/a/c;->b:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/keniu/security/util/a/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/keniu/security/util/a/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_0
    if-eqz p1, :cond_1

    .line 90
    iget-object v0, p0, Lcom/keniu/security/util/a/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 96
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected final a()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/keniu/security/util/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/keniu/security/util/a/c;->a:Ljava/util/ArrayList;

    .line 81
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
