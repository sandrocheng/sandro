.class public final Lcom/jxphone/mosecurity/d/k;
.super Ljava/lang/Object;
.source "PasswordHepler.java"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:Ljava/lang/String; = "safe_password"

.field public static final e:Ljava/lang/String; = "dummy_password"

.field private static final f:Ljava/lang/String; = "password"


# instance fields
.field private final g:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/jxphone/mosecurity/d/k;->g:Landroid/content/Context;

    .line 36
    return-void
.end method

.method private a(Ljava/lang/String;Z)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/jxphone/mosecurity/d/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 89
    invoke-static {p1}, Lcom/jxphone/mosecurity/d/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    if-eqz p2, :cond_0

    .line 91
    const-string v1, "dummy_password"

    const-string v2, ""

    invoke-static {v2}, Lcom/jxphone/mosecurity/d/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    const/4 v0, 0x2

    .line 99
    :goto_0
    return v0

    .line 95
    :cond_0
    const-string v2, "safe_password"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    const/4 v0, 0x1

    goto :goto_0

    .line 99
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/jxphone/mosecurity/d/k;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 39
    invoke-static {p0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "password"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "password"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "safe_password"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "safe_password"

    invoke-static {v1}, Lcom/jxphone/mosecurity/d/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 40
    :cond_1
    new-instance v0, Lcom/jxphone/mosecurity/d/k;

    invoke-direct {v0, p0}, Lcom/jxphone/mosecurity/d/k;-><init>(Landroid/content/Context;)V

    .line 41
    return-object v0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 50
    invoke-static {p0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 51
    const-string v1, "password"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    if-nez v1, :cond_0

    .line 63
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 56
    const-string v3, "password"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 58
    const-string v3, "safe_password"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    if-nez v0, :cond_1

    .line 60
    const-string v0, "safe_password"

    invoke-static {v1}, Lcom/jxphone/mosecurity/d/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 62
    :cond_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 183
    :try_start_0
    const-string v0, "sha-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 184
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 4
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/jxphone/mosecurity/d/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 76
    invoke-static {p1}, Lcom/jxphone/mosecurity/d/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    const-string v2, "safe_password"

    const-string v3, ""

    invoke-static {v3}, Lcom/jxphone/mosecurity/d/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    const/4 v0, 0x1

    .line 84
    :goto_0
    return v0

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/jxphone/mosecurity/d/k;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Lcom/keniu/security/a;->av()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "dummy_password"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    const/4 v0, 0x2

    goto :goto_0

    .line 84
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()Z
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/jxphone/mosecurity/d/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 171
    const-string v1, "safe_password"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jxphone/mosecurity/d/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/a;->av()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 125
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v6

    .line 142
    :goto_0
    return v0

    .line 127
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v6

    .line 128
    goto :goto_0

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/jxphone/mosecurity/d/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 131
    if-eqz p4, :cond_2

    const-string v1, "dummy_password"

    .line 132
    :goto_1
    invoke-virtual {p0, p4}, Lcom/jxphone/mosecurity/d/k;->a(Z)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/jxphone/mosecurity/d/k;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {p1}, Lcom/jxphone/mosecurity/d/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz p4, :cond_3

    const-string v3, "dummy_password"

    const-string v4, ""

    invoke-static {v4}, Lcom/jxphone/mosecurity/d/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    :goto_2
    if-nez v2, :cond_5

    move v0, v6

    .line 133
    goto :goto_0

    .line 131
    :cond_2
    const-string v1, "safe_password"

    goto :goto_1

    .line 132
    :cond_3
    const-string v4, "safe_password"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v7

    goto :goto_2

    :cond_4
    move v2, v6

    goto :goto_2

    .line 135
    :cond_5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 136
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 137
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 141
    :goto_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v0, v7

    .line 142
    goto :goto_0

    .line 139
    :cond_6
    if-eqz p4, :cond_7

    move-object v2, p2

    :goto_4
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    :cond_7
    invoke-static {p2}, Lcom/jxphone/mosecurity/d/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method public final a(Z)Z
    .locals 3
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/jxphone/mosecurity/d/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 176
    if-eqz p1, :cond_0

    const-string v1, "dummy_password"

    .line 177
    :goto_0
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 176
    :cond_0
    const-string v1, "safe_password"

    goto :goto_0

    .line 178
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 105
    iget-object v0, p0, Lcom/jxphone/mosecurity/d/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/jxphone/mosecurity/logic/h;->c(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/d;

    move-result-object v0

    sget-object v1, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-interface {v0, v1}, Lcom/jxphone/mosecurity/logic/a/d;->b(Lcom/jxphone/mosecurity/c/c;)[Lcom/jxphone/mosecurity/c/b;

    move-result-object v0

    .line 107
    array-length v1, v0

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 108
    invoke-virtual {v3}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    const/4 v0, 0x1

    .line 112
    :goto_1
    return v0

    .line 107
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    .line 112
    goto :goto_1
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lcom/jxphone/mosecurity/d/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 153
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 154
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 155
    const-string v1, "dummy_password"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 159
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0

    .line 157
    :cond_0
    const-string v1, "dummy_password"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
