.class public Lcom/avast/android/mobilesecurity/engine/y;
.super Ljava/lang/Object;
.source "ServerInformation.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/y;->b:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lcom/avast/android/mobilesecurity/engine/y;->a:Ljava/lang/String;

    .line 100
    iput-object p3, p0, Lcom/avast/android/mobilesecurity/engine/y;->c:Ljava/lang/Integer;

    .line 101
    iput-object p4, p0, Lcom/avast/android/mobilesecurity/engine/y;->d:Ljava/lang/String;

    .line 102
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0xbfff

    if-le v0, v1, :cond_1

    .line 103
    :cond_0
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/y;->c:Ljava/lang/Integer;

    .line 104
    :cond_1
    return-void
.end method

.method public static a([B)Lcom/avast/android/mobilesecurity/engine/y;
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 162
    new-instance v1, Lcom/avast/android/mobilesecurity/engine/y;

    invoke-direct {v1}, Lcom/avast/android/mobilesecurity/engine/y;-><init>()V

    .line 164
    const/4 v0, 0x0

    .line 165
    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v3, v4, v0}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 167
    const/4 v0, 0x4

    .line 168
    add-int/lit8 v3, v3, 0x4

    array-length v4, p0

    if-eq v3, v4, :cond_0

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid structure length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 221
    :goto_0
    return-object v0

    :cond_0
    move v3, v0

    .line 175
    :goto_1
    array-length v0, p0

    if-ge v3, v0, :cond_3

    .line 176
    const/4 v0, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0, v4, v3}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 178
    add-int/lit8 v3, v3, 0x4

    .line 179
    add-int v0, v3, v4

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p0, v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_1

    .line 180
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid payload length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_1
    const/4 v0, 0x0

    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0, v5, v3}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    .line 185
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/aa;->a(S)Lcom/avast/android/mobilesecurity/engine/aa;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_2

    .line 187
    sget-object v5, Lcom/avast/android/mobilesecurity/engine/z;->a:[I

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/aa;->ordinal()I

    move-result v0

    aget v0, v5, v0

    packed-switch v0, :pswitch_data_0

    .line 215
    :cond_2
    :goto_2
    add-int v0, v3, v4

    move v3, v0

    goto :goto_1

    .line 189
    :pswitch_0
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v5, v3, 0x2

    add-int/lit8 v6, v4, -0x2

    add-int/lit8 v6, v6, -0x1

    invoke-direct {v0, p0, v5, v6}, Ljava/lang/String;-><init>([BII)V

    iput-object v0, v1, Lcom/avast/android/mobilesecurity/engine/y;->a:Ljava/lang/String;

    goto :goto_2

    .line 194
    :pswitch_1
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v5, v3, 0x2

    add-int/lit8 v6, v4, -0x2

    add-int/lit8 v6, v6, -0x1

    invoke-direct {v0, p0, v5, v6}, Ljava/lang/String;-><init>([BII)V

    iput-object v0, v1, Lcom/avast/android/mobilesecurity/engine/y;->b:Ljava/lang/String;

    goto :goto_2

    .line 199
    :pswitch_2
    const/4 v0, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    add-int/lit8 v6, v3, 0x2

    invoke-static {p0, v0, v5, v6}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 203
    if-eqz v0, :cond_2

    .line 204
    iput-object v0, v1, Lcom/avast/android/mobilesecurity/engine/y;->c:Ljava/lang/Integer;

    goto :goto_2

    .line 208
    :pswitch_3
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v5, v3, 0x2

    add-int/lit8 v6, v4, -0x2

    add-int/lit8 v6, v6, -0x1

    invoke-direct {v0, p0, v5, v6}, Ljava/lang/String;-><init>([BII)V

    iput-object v0, v1, Lcom/avast/android/mobilesecurity/engine/y;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 220
    goto/16 :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static b()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 136
    const-string v0, "si-2"

    const-string v1, "si-2"

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/net/URI;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/y;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/y;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/engine/y;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/engine/y;->d:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/apache/http/client/utils/URIUtils;->createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    .line 115
    :catch_0
    move-exception v0

    move-object v0, v6

    .line 116
    goto :goto_0
.end method
