.class public final Lcom/keniu/security/sync/b/b;
.super Ljava/lang/Object;
.source "PrefItem.java"


# static fields
.field private static final a:J = -0x7a32c1737f335b5aL


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/keniu/security/sync/b/b;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 82
    new-instance v0, Lcom/keniu/security/sync/b/b;

    invoke-direct {v0}, Lcom/keniu/security/sync/b/b;-><init>()V

    .line 84
    :try_start_0
    const-string v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "key"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "value"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    move-object v0, v2

    .line 93
    :goto_0
    return-object v0

    .line 87
    :cond_1
    const-string v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/b/b;->b:Ljava/lang/String;

    .line 88
    const-string v1, "key"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/b/b;->c:Ljava/lang/String;

    .line 89
    const-string v1, "value"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/b/b;->d:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/keniu/security/sync/b/b;->b:Ljava/lang/String;

    .line 22
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/keniu/security/sync/b/b;->c:Ljava/lang/String;

    .line 30
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/keniu/security/sync/b/b;->d:Ljava/lang/String;

    .line 38
    return-void
.end method

.method private d()Lcom/keniu/security/sync/b/b;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/keniu/security/sync/b/b;

    invoke-direct {v0}, Lcom/keniu/security/sync/b/b;-><init>()V

    .line 48
    iget-object v1, p0, Lcom/keniu/security/sync/b/b;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/keniu/security/sync/b/b;->b:Ljava/lang/String;

    .line 49
    iget-object v1, p0, Lcom/keniu/security/sync/b/b;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/keniu/security/sync/b/b;->c:Ljava/lang/String;

    .line 50
    iget-object v1, p0, Lcom/keniu/security/sync/b/b;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/keniu/security/sync/b/b;->d:Ljava/lang/String;

    .line 51
    return-object v0
.end method

.method private e()Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/keniu/security/sync/b/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/keniu/security/sync/b/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/keniu/security/sync/b/b;->b:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/keniu/security/sync/b/b;->c:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/keniu/security/sync/b/b;->d:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/keniu/security/sync/b/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/keniu/security/sync/b/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 98
    if-ne p0, p1, :cond_0

    move v0, v3

    .line 114
    :goto_0
    return v0

    .line 99
    :cond_0
    if-nez p1, :cond_1

    move v0, v2

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    .line 101
    :cond_2
    check-cast p1, Lcom/keniu/security/sync/b/b;

    .line 102
    iget-object v0, p0, Lcom/keniu/security/sync/b/b;->b:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 103
    iget-object v0, p1, Lcom/keniu/security/sync/b/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_0

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/sync/b/b;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/keniu/security/sync/b/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    .line 105
    goto :goto_0

    .line 106
    :cond_4
    iget-object v0, p0, Lcom/keniu/security/sync/b/b;->c:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 107
    iget-object v0, p1, Lcom/keniu/security/sync/b/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_0

    .line 108
    :cond_5
    iget-object v0, p0, Lcom/keniu/security/sync/b/b;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/keniu/security/sync/b/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    .line 109
    goto :goto_0

    .line 110
    :cond_6
    iget-object v0, p0, Lcom/keniu/security/sync/b/b;->d:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 111
    iget-object v0, p1, Lcom/keniu/security/sync/b/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_0

    .line 112
    :cond_7
    iget-object v0, p0, Lcom/keniu/security/sync/b/b;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/keniu/security/sync/b/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v2

    .line 113
    goto :goto_0

    :cond_8
    move v0, v3

    .line 114
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 69
    iget-object v0, p0, Lcom/keniu/security/sync/b/b;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 72
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/keniu/security/sync/b/b;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    .line 73
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/keniu/security/sync/b/b;->d:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    .line 74
    return v0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/b/b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 72
    :cond_1
    iget-object v1, p0, Lcom/keniu/security/sync/b/b;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 73
    :cond_2
    iget-object v1, p0, Lcom/keniu/security/sync/b/b;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    const-string v1, "{ type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-object v1, p0, Lcom/keniu/security/sync/b/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string v1, ", key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v1, p0, Lcom/keniu/security/sync/b/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, ", value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-object v1, p0, Lcom/keniu/security/sync/b/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
