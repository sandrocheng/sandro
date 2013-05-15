.class public final Lcom/avast/android/mobilesecurity/engine/internal/a/h;
.super Lcom/google/a/l;
.source "TypoSquattingConfirmProto.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/engine/internal/a/l;


# static fields
.field private static final a:Lcom/avast/android/mobilesecurity/engine/internal/a/h;


# instance fields
.field private b:I

.field private c:Lcom/avast/android/mobilesecurity/engine/internal/a/j;

.field private d:B

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1501
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/a/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/h;-><init>(Z)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/h;->a:Lcom/avast/android/mobilesecurity/engine/internal/a/h;

    .line 1502
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/h;->a:Lcom/avast/android/mobilesecurity/engine/internal/a/h;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/h;->g()V

    .line 1503
    return-void
.end method

.method private constructor <init>(Lcom/avast/android/mobilesecurity/engine/internal/a/i;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1186
    invoke-direct {p0, p1}, Lcom/google/a/l;-><init>(Lcom/google/a/n;)V

    .line 1257
    iput-byte v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/h;->d:B

    .line 1274
    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/h;->e:I

    .line 1187
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/mobilesecurity/engine/internal/a/i;Lcom/avast/android/mobilesecurity/engine/internal/a/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1181
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/h;-><init>(Lcom/avast/android/mobilesecurity/engine/internal/a/i;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1188
    invoke-direct {p0}, Lcom/google/a/l;-><init>()V

    .line 1257
    iput-byte v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/h;->d:B

    .line 1274
    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/h;->e:I

    .line 1188
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/engine/internal/a/h;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1181
    iput p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/h;->b:I

    return p1
.end method

.method public static a()Lcom/avast/android/mobilesecurity/engine/internal/a/h;
    .locals 1

    .prologue
    .line 1192
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/h;->a:Lcom/avast/android/mobilesecurity/engine/internal/a/h;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/avast/android/mobilesecurity/engine/internal/a/h;
    .locals 1
    .parameter

    .prologue
    .line 1320
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/h;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/i;->a(Ljava/io/InputStream;)Lcom/google/a/b;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/internal/a/i;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/i;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/i;)Lcom/avast/android/mobilesecurity/engine/internal/a/h;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/avast/android/mobilesecurity/engine/internal/a/h;)Lcom/avast/android/mobilesecurity/engine/internal/a/i;
    .locals 1
    .parameter

    .prologue
    .line 1365
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/h;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/i;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/h;)Lcom/avast/android/mobilesecurity/engine/internal/a/i;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/engine/internal/a/h;Lcom/avast/android/mobilesecurity/engine/internal/a/j;)Lcom/avast/android/mobilesecurity/engine/internal/a/j;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1181
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/h;->c:Lcom/avast/android/mobilesecurity/engine/internal/a/j;

    return-object p1
.end method

.method public static d()Lcom/avast/android/mobilesecurity/engine/internal/a/i;
    .locals 1

    .prologue
    .line 1362
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/i;->e()Lcom/avast/android/mobilesecurity/engine/internal/a/i;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 1255
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/j;->a:Lcom/avast/android/mobilesecurity/engine/internal/a/j;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/h;->c:Lcom/avast/android/mobilesecurity/engine/internal/a/j;

    .line 1256
    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 1181
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/h;->f()Lcom/avast/android/mobilesecurity/engine/internal/a/i;

    move-result-object v0

    return-object v0
.end method

.method public synthetic B()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 1181
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/h;->e()Lcom/avast/android/mobilesecurity/engine/internal/a/i;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/a/e;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1268
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/h;->w()I

    .line 1269
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/h;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 1270
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/h;->c:Lcom/avast/android/mobilesecurity/engine/internal/a/j;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/j;->a()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->c(II)V

    .line 1272
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1248
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/h;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/avast/android/mobilesecurity/engine/internal/a/j;
    .locals 1

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/h;->c:Lcom/avast/android/mobilesecurity/engine/internal/a/j;

    return-object v0
.end method

.method public e()Lcom/avast/android/mobilesecurity/engine/internal/a/i;
    .locals 1

    .prologue
    .line 1363
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/h;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/i;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/avast/android/mobilesecurity/engine/internal/a/i;
    .locals 1

    .prologue
    .line 1367
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/h;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/h;)Lcom/avast/android/mobilesecurity/engine/internal/a/i;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1259
    iget-byte v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/h;->d:B

    .line 1260
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 1263
    :goto_0
    return v0

    .line 1260
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1262
    :cond_1
    iput-byte v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/h;->d:B

    goto :goto_0
.end method

.method public w()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1276
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/h;->e:I

    .line 1277
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1285
    :goto_0
    return v0

    .line 1279
    :cond_0
    const/4 v0, 0x0

    .line 1280
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/h;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 1281
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/h;->c:Lcom/avast/android/mobilesecurity/engine/internal/a/j;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/j;->a()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/a/e;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1284
    :cond_1
    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/h;->e:I

    goto :goto_0
.end method
