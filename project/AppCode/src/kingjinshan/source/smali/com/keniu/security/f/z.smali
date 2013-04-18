.class public final Lcom/keniu/security/f/z;
.super Ljava/lang/Object;
.source "UpdateIni.java"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:Ljava/lang/String; = "switch"

.field public static final e:Ljava/lang/String; = "info"

.field public static final f:Ljava/lang/String; = "global"

.field public static final g:Ljava/lang/String; = "description"

.field public static final h:Ljava/lang/String; = "version"

.field public static final i:Ljava/lang/String; = "size"

.field public static final j:Ljava/lang/String; = "path"

.field public static final k:Ljava/lang/String; = "md5"

.field public static final l:Ljava/lang/String; = "md5_target"

.field public static final m:Ljava/lang/String; = "delta"

.field public static final n:Ljava/lang/String; = "compressed"

.field public static final o:Ljava/lang/String; = "description"

.field public static final p:Ljava/lang/String; = "data_switch"

.field public static final q:I = 0x0

.field public static final r:I = 0x1

.field public static final s:I = 0x2

.field public static final t:I = 0x3

.field public static final u:I = 0x4

.field public static final v:I = 0x5

.field public static final w:I = 0x6

.field public static final x:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static a(Lcom/keniu/security/f/h;Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 183
    const-string v0, "switch"

    invoke-static {p0, v0, p1}, Lcom/keniu/security/f/z;->a(Lcom/keniu/security/f/h;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-static {v0}, Lcom/keniu/security/f/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "force"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v1, "allow"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-string v1, "allow_apk"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const-string v1, "allow_data"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const-string v1, "deny"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    const-string v1, "deny_apk"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    :cond_5
    const-string v1, "deny_data"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-static {p0}, Lcom/keniu/security/f/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 174
    :goto_0
    return v0

    .line 144
    :cond_0
    const-string v0, "force"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 146
    const/4 v0, 0x1

    goto :goto_0

    .line 148
    :cond_1
    const-string v0, "allow"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 150
    const/4 v0, 0x2

    goto :goto_0

    .line 152
    :cond_2
    const-string v0, "allow_apk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 154
    const/4 v0, 0x3

    goto :goto_0

    .line 156
    :cond_3
    const-string v0, "allow_data"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 158
    const/4 v0, 0x4

    goto :goto_0

    .line 160
    :cond_4
    const-string v0, "deny"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 162
    const/4 v0, 0x5

    goto :goto_0

    .line 164
    :cond_5
    const-string v0, "deny_apk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    .line 166
    const/4 v0, 0x6

    goto :goto_0

    .line 168
    :cond_6
    const-string v0, "deny_data"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    .line 170
    const/4 v0, 0x7

    goto :goto_0

    :cond_7
    move v0, v1

    .line 174
    goto :goto_0
.end method

.method public static a(Lcom/keniu/security/f/h;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 192
    invoke-virtual {p0, p1}, Lcom/keniu/security/f/h;->a(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 193
    if-nez v0, :cond_0

    move-object v0, v3

    .line 208
    :goto_0
    return-object v0

    .line 198
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 199
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 202
    invoke-static {v0, p2}, Lcom/keniu/security/f/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 204
    invoke-virtual {p0, p1, v0}, Lcom/keniu/security/f/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v3

    .line 208
    goto :goto_0
.end method
