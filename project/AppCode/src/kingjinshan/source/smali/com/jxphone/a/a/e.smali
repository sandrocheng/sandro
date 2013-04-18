.class public final Lcom/jxphone/a/a/e;
.super Ljava/lang/Object;
.source "HttpDataSender.java"


# instance fields
.field public a:J

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jxphone/a/a/e;->a:J

    .line 215
    const/4 v0, 0x0

    iput v0, p0, Lcom/jxphone/a/a/e;->b:I

    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/jxphone/a/a/e;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 219
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v4

    .line 245
    :goto_0
    return-object v0

    .line 222
    :cond_0
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 223
    new-instance v1, Lcom/jxphone/a/a/e;

    invoke-direct {v1}, Lcom/jxphone/a/a/e;-><init>()V

    .line 224
    if-eqz v0, :cond_2

    array-length v2, v0

    const/4 v3, 0x3

    if-lt v2, v3, :cond_2

    .line 225
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const-string v3, "[common]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v4

    .line 226
    goto :goto_0

    .line 228
    :cond_1
    const-string v2, "result="

    .line 229
    aget-object v3, v0, v5

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 230
    aget-object v3, v0, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 231
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/jxphone/a/a/e;->b:I

    .line 236
    const-string v2, "time="

    .line 237
    aget-object v3, v0, v6

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 238
    aget-object v0, v0, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, v1, Lcom/jxphone/a/a/e;->a:J

    :cond_2
    move-object v0, v1

    .line 245
    goto :goto_0

    :cond_3
    move-object v0, v4

    .line 234
    goto :goto_0

    :cond_4
    move-object v0, v4

    .line 242
    goto :goto_0
.end method
