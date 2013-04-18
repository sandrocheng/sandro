.class public final Lcom/hoi/antivirus/a;
.super Ljava/lang/Object;
.source "VirusRecord.java"


# static fields
.field public static final a:I = 0x6

.field public static final b:I = 0x5

.field public static final c:I = 0x4

.field public static final d:I = 0x3

.field public static final e:I = 0x2

.field public static final f:I = 0x1

.field public static final g:I = 0x0

.field private static final l:I = -0x1

.field private static final m:Ljava/lang/String; = "name"

.field private static final n:Ljava/lang/String; = "type"

.field private static final o:Ljava/lang/String; = "desc"

.field private static final p:Ljava/lang/String; = "hash"

.field private static final q:Ljava/lang/String; = "UTF-8"

.field private static final r:Z = true

.field private static final s:I = 0x2

.field private static final t:I = 0x4

.field private static final u:B = 0x0t

.field private static final v:B = 0x1t

.field private static final w:B = 0x2t

.field private static final x:B = 0x3t


# instance fields
.field public h:Ljava/lang/String;

.field public i:I

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object v0, p0, Lcom/hoi/antivirus/a;->h:Ljava/lang/String;

    .line 188
    iput-object v0, p0, Lcom/hoi/antivirus/a;->j:Ljava/lang/String;

    .line 189
    iput-object v0, p0, Lcom/hoi/antivirus/a;->k:Ljava/lang/String;

    .line 190
    const/4 v0, -0x1

    iput v0, p0, Lcom/hoi/antivirus/a;->i:I

    .line 191
    return-void
.end method

.method private static a([BIB[B)I
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 142
    add-int/lit8 v0, p1, 0x1

    aput-byte p2, p0, p1

    .line 143
    array-length v1, p3

    int-to-long v1, v1

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/hoi/antivirus/a;->a(JI)[B

    move-result-object v1

    move v2, v0

    move v0, v5

    .line 144
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 145
    add-int/lit8 v3, v2, 0x1

    aget-byte v4, v1, v0

    aput-byte v4, p0, v2

    .line 144
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_0

    :cond_0
    move v0, v5

    move v1, v2

    .line 146
    :goto_1
    array-length v2, p3

    if-ge v0, v2, :cond_1

    .line 147
    add-int/lit8 v2, v1, 0x1

    aget-byte v3, p3, v0

    aput-byte v3, p0, v1

    .line 146
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_1

    .line 148
    :cond_1
    return v1
.end method

.method public static a([B)Lcom/hoi/antivirus/a;
    .locals 7
    .parameter

    .prologue
    .line 98
    new-instance v0, Lcom/hoi/antivirus/a;

    invoke-direct {v0}, Lcom/hoi/antivirus/a;-><init>()V

    .line 99
    const/4 v1, 0x0

    .line 100
    array-length v2, p0

    .line 101
    :goto_0
    if-ge v1, v2, :cond_0

    .line 102
    add-int/lit8 v3, v1, 0x1

    int-to-byte v3, v3

    aget-byte v1, p0, v1

    .line 103
    const/4 v4, 0x2

    invoke-static {p0, v3, v4}, Lcom/hoi/antivirus/a;->b([BII)J

    move-result-wide v4

    long-to-int v4, v4

    .line 104
    add-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    .line 106
    packed-switch v1, :pswitch_data_0

    .line 118
    :goto_1
    add-int v1, v3, v4

    int-to-byte v1, v1

    .line 123
    goto :goto_0

    .line 108
    :pswitch_0
    invoke-static {p0, v3, v4}, Lcom/hoi/antivirus/a;->a([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hoi/antivirus/a;->h:Ljava/lang/String;

    goto :goto_1

    .line 111
    :pswitch_1
    invoke-static {p0, v3, v4}, Lcom/hoi/antivirus/a;->b([BII)J

    move-result-wide v5

    long-to-int v1, v5

    iput v1, v0, Lcom/hoi/antivirus/a;->i:I

    goto :goto_1

    .line 114
    :pswitch_2
    invoke-static {p0, v3, v4}, Lcom/hoi/antivirus/a;->a([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hoi/antivirus/a;->j:Ljava/lang/String;

    goto :goto_1

    .line 117
    :pswitch_3
    invoke-static {p0, v3, v4}, Lcom/hoi/antivirus/a;->a([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hoi/antivirus/a;->k:Ljava/lang/String;

    goto :goto_1

    .line 124
    :cond_0
    return-object v0

    .line 106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static a([BII)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    .line 61
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 64
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/hoi/antivirus/a;

    invoke-direct {v0}, Lcom/hoi/antivirus/a;-><init>()V

    .line 47
    const-string v1, "testnam\"\u676d\u5ddee"

    iput-object v1, v0, Lcom/hoi/antivirus/a;->h:Ljava/lang/String;

    .line 48
    const/4 v1, 0x5

    iput v1, v0, Lcom/hoi/antivirus/a;->i:I

    .line 49
    const-string v1, "testde\u676d\u5ddesc"

    iput-object v1, v0, Lcom/hoi/antivirus/a;->j:Ljava/lang/String;

    .line 50
    const-string v1, "\u6c57"

    iput-object v1, v0, Lcom/hoi/antivirus/a;->k:Ljava/lang/String;

    .line 51
    invoke-direct {v0}, Lcom/hoi/antivirus/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/hoi/antivirus/a;->b(Ljava/lang/String;)Lcom/hoi/antivirus/a;

    .line 53
    return-void
.end method

.method private static a(I)[B
    .locals 3
    .parameter

    .prologue
    .line 94
    int-to-long v0, p0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/hoi/antivirus/a;->a(JI)[B

    move-result-object v0

    return-object v0
.end method

.method private static a(JI)[B
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 87
    new-array v0, p2, [B

    .line 88
    const/4 v1, 0x1

    sub-int v1, p2, v1

    const/4 v2, 0x0

    move v7, v2

    move v2, v1

    move v1, v7

    :goto_0
    if-ltz v2, :cond_0

    .line 89
    shr-long v3, p0, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 88
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v1, v1, 0x8

    goto :goto_0

    .line 90
    :cond_0
    return-object v0
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 2
    .parameter

    .prologue
    .line 77
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 83
    :goto_0
    return-object v0

    .line 80
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 83
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b([BII)J
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    const-wide/16 v0, 0x0

    .line 69
    const/4 v2, 0x0

    move v3, p1

    move-wide v7, v0

    move v0, v2

    move-wide v1, v7

    :goto_0
    if-ge v0, p2, :cond_0

    .line 70
    const/16 v4, 0x8

    shl-long/2addr v1, v4

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p0, v3

    int-to-long v5, v3

    or-long/2addr v1, v5

    .line 69
    add-int/lit8 v0, v0, 0x1

    move v3, v4

    goto :goto_0

    .line 71
    :cond_0
    return-wide v1
.end method

.method private static b(Ljava/lang/String;)Lcom/hoi/antivirus/a;
    .locals 3
    .parameter

    .prologue
    .line 128
    new-instance v0, Lcom/hoi/antivirus/a;

    invoke-direct {v0}, Lcom/hoi/antivirus/a;-><init>()V

    .line 130
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 131
    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/hoi/antivirus/a;->h:Ljava/lang/String;

    .line 132
    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/hoi/antivirus/a;->i:I

    .line 133
    const-string v2, "desc"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/hoi/antivirus/a;->j:Ljava/lang/String;

    .line 134
    const-string v2, "hash"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hoi/antivirus/a;->k:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-object v0

    .line 135
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private b()[B
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 153
    iget-object v0, p0, Lcom/hoi/antivirus/a;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/hoi/antivirus/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 154
    iget v1, p0, Lcom/hoi/antivirus/a;->i:I

    int-to-long v1, v1

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lcom/hoi/antivirus/a;->a(JI)[B

    move-result-object v1

    .line 155
    iget-object v2, p0, Lcom/hoi/antivirus/a;->j:Ljava/lang/String;

    invoke-static {v2}, Lcom/hoi/antivirus/a;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 156
    iget-object v3, p0, Lcom/hoi/antivirus/a;->k:Ljava/lang/String;

    invoke-static {v3}, Lcom/hoi/antivirus/a;->a(Ljava/lang/String;)[B

    move-result-object v3

    .line 158
    array-length v4, v0

    add-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x0

    .line 160
    array-length v5, v1

    add-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    .line 161
    array-length v5, v2

    add-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    .line 162
    array-length v5, v3

    add-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    .line 164
    new-array v4, v4, [B

    .line 165
    invoke-static {v4, v6, v6, v0}, Lcom/hoi/antivirus/a;->a([BIB[B)I

    move-result v0

    .line 167
    const/4 v5, 0x1

    invoke-static {v4, v0, v5, v1}, Lcom/hoi/antivirus/a;->a([BIB[B)I

    move-result v0

    .line 168
    const/4 v1, 0x2

    invoke-static {v4, v0, v1, v2}, Lcom/hoi/antivirus/a;->a([BIB[B)I

    move-result v0

    .line 169
    const/4 v1, 0x3

    invoke-static {v4, v0, v1, v3}, Lcom/hoi/antivirus/a;->a([BIB[B)I

    .line 170
    return-object v4
.end method

.method private c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 174
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 176
    :try_start_0
    const-string v1, "name"

    iget-object v2, p0, Lcom/hoi/antivirus/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    const-string v1, "type"

    iget v2, p0, Lcom/hoi/antivirus/a;->i:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 178
    const-string v1, "desc"

    iget-object v2, p0, Lcom/hoi/antivirus/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    const-string v1, "hash"

    iget-object v2, p0, Lcom/hoi/antivirus/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 180
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
